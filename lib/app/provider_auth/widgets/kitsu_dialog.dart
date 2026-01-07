import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart';

import 'package:anikki/app/provider_auth/bloc/provider_auth_bloc.dart';
import 'package:anikki/core/core.dart';
import 'package:anikki/core/widgets/loading_widget.dart';
import 'package:anikki/domain/domain.dart';

class KitsuDialog extends StatefulWidget {
  const KitsuDialog({
    super.key,
    required this.showConnected,
  });

  final Future<void> Function(BuildContext, WatchListProvider) showConnected;

  @override
  State<KitsuDialog> createState() => _KitsuDialogState();
}

class _KitsuDialogState extends State<KitsuDialog> {
  final width = 400.0;

  final provider = WatchListProvider.kitsu;
  String? get boxKey => UserRepository.tokenKey[provider];
  final uri = Uri.parse('$kitsuApiBaseUrl/oauth/token');

  late final TextEditingController usernameController;
  late final TextEditingController passwordController;

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    setState(() {
      _loading = value;
    });
  }

  String? _error;

  String? get error => _error;

  set error(String? value) {
    setState(() {
      _error = value;
    });
  }

  void _onError(Object error) {
    logger.error('Could not login to ${provider.title}', error);
    this.error = error.toString();
    loading = false;
  }

  Future<void> _onLogin(BuildContext context) async {
    loading = true;

    try {
      final response = await post(
        uri,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          'grant_type': 'password',
          'username': Uri.encodeQueryComponent(usernameController.text),
          'password': Uri.encodeQueryComponent(passwordController.text),
        },
      );

      final parsedResponse = jsonDecode(response.body);
      final error = parsedResponse['error_description'];

      if (error != null) {
        return _onError(error);
      }

      parsedResponse['issued_at'] = DateTime.now().millisecondsSinceEpoch;

      final box = await Hive.openBox(UserRepository.boxName);
      await box.put(boxKey, jsonEncode(parsedResponse));

      if (context.mounted) {
        Navigator.of(context).pop();

        BlocProvider.of<ProviderAuthBloc>(context).add(
          ProviderAuthLoginRequested(provider),
        );

        widget.showConnected(context, provider);
      }
    } catch (e) {
      _onError(e);
    }

    loading = false;
  }

  @override
  void initState() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: width,
          child: LoadingWidget(
            title: 'Authenticating to ${provider.title}',
            subtitle: 'Please wait...',
            height: 275,
          ),
        ),
      );
    }

    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                ListTile(
                  title: Text(
                    'Login to ${provider.title}',
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'None of these information are stored',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  label: Text('Username'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  label: Text('Password'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                ),
              ),
            ),
            if (error != null)
              Tooltip(
                message: error,
                child: Text(
                  'Authentication failed, please retry.',
                  maxLines: 2,
                  style: TextStyle(color: context.colorScheme.error),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: Navigator.of(context).pop,
                    child: const Text('Cancel'),
                  ),
                  const SizedBox(width: 8.0),
                  FilledButton(
                    onPressed: () => _onLogin(context),
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
