part of 'sections.dart';

class TorrentSection extends AbstractSettingsSection {
  const TorrentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsBloc = BlocProvider.of<SettingsBloc>(context, listen: true);

    return SettingsSection(
      title: const Text('Torrent Client'),
      tiles: [
        SettingsTile(
          leading: const Icon(HugeIcons.strokeRoundedRss),
          title: const Text('Torrent Client type'),
          trailing: DropdownButton<TorrentType>(
            value: settingsBloc.state.settings.torrentType,
            items: TorrentType.values
                .map(
                  (type) => DropdownMenuItem(
                    value: type,
                    child: Text(type.title),
                  ),
                )
                .toList(),
            onChanged: (value) {
              if (value == null) return;

              settingsBloc.add(
                SettingsUpdated(
                  settingsBloc.state.settings.copyWith(
                    torrentType: value,
                  ),
                ),
              );
            },
          ),
        ),
        ...switch (settingsBloc.state.settings.torrentType) {
          TorrentType.transmission => [
            SettingsTile(
              key: const Key('transmission-username'),
              leading: const AnikkiIcon(icon: HugeIcons.strokeRoundedUser),
              title: const Text('Username'),
              trailing: SettingsTextField(
                initialValue:
                    settingsBloc.state.settings.transmissionSettings.username,
                onChanged: (value) {
                  settingsBloc.add(
                    SettingsUpdated(
                      settingsBloc.state.settings.copyWith(
                        transmissionSettings: settingsBloc
                            .state
                            .settings
                            .transmissionSettings
                            .copyWith(
                              username: value,
                            ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SettingsTile(
              key: const Key('transmission-password'),
              leading: const AnikkiIcon(
                icon: HugeIcons.strokeRoundedLockPassword,
              ),
              title: const Text('Password'),
              trailing: SettingsTextField(
                initialValue:
                    settingsBloc.state.settings.transmissionSettings.password,
                obscureText: true,
                onChanged: (value) {
                  settingsBloc.add(
                    SettingsUpdated(
                      settingsBloc.state.settings.copyWith(
                        transmissionSettings: settingsBloc
                            .state
                            .settings
                            .transmissionSettings
                            .copyWith(
                              password: value,
                            ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SettingsTile(
              key: const Key('transmission-port'),
              leading: const AnikkiIcon(
                icon: HugeIcons.strokeRoundedDialpadCircle02,
              ),
              title: const Text('Port'),
              trailing: SettingsTextField(
                isNumber: true,
                initialValue: settingsBloc
                    .state
                    .settings
                    .transmissionSettings
                    .port
                    .toString(),
                onChanged: (value) {
                  settingsBloc.add(
                    SettingsUpdated(
                      settingsBloc.state.settings.copyWith(
                        transmissionSettings: settingsBloc
                            .state
                            .settings
                            .transmissionSettings
                            .copyWith(
                              port: int.tryParse(value),
                            ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
          TorrentType.qbittorrent => [
            SettingsTile(
              key: const Key('qbittorent-username'),
              leading: const AnikkiIcon(icon: HugeIcons.strokeRoundedUser),
              title: const Text('Username'),
              trailing: SettingsTextField(
                initialValue:
                    settingsBloc.state.settings.qBitTorrentSettings.username,
                onChanged: (value) {
                  settingsBloc.add(
                    SettingsUpdated(
                      settingsBloc.state.settings.copyWith(
                        qBitTorrentSettings: settingsBloc
                            .state
                            .settings
                            .qBitTorrentSettings
                            .copyWith(
                              username: value,
                            ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SettingsTile(
              key: const Key('qbittorent-password'),
              leading: const AnikkiIcon(
                icon: HugeIcons.strokeRoundedLockPassword,
              ),
              title: const Text('Password'),
              trailing: SettingsTextField(
                initialValue:
                    settingsBloc.state.settings.qBitTorrentSettings.password,
                obscureText: true,
                onChanged: (value) {
                  settingsBloc.add(
                    SettingsUpdated(
                      settingsBloc.state.settings.copyWith(
                        qBitTorrentSettings: settingsBloc
                            .state
                            .settings
                            .qBitTorrentSettings
                            .copyWith(
                              password: value,
                            ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SettingsTile(
              key: const Key('qbittorent-port'),
              leading: const AnikkiIcon(
                icon: HugeIcons.strokeRoundedDialpadCircle02,
              ),
              title: const Text('Port'),
              trailing: SettingsTextField(
                isNumber: true,
                initialValue: settingsBloc
                    .state
                    .settings
                    .qBitTorrentSettings
                    .port
                    .toString(),
                onChanged: (value) {
                  settingsBloc.add(
                    SettingsUpdated(
                      settingsBloc.state.settings.copyWith(
                        qBitTorrentSettings: settingsBloc
                            .state
                            .settings
                            .qBitTorrentSettings
                            .copyWith(
                              port: int.tryParse(value),
                            ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
          TorrentType.torrest => [
            SettingsTile(
              key: const Key('torrest-port'),
              leading: const AnikkiIcon(
                icon: HugeIcons.strokeRoundedDialpadCircle02,
              ),
              title: const Text('Port'),
              trailing: SettingsTextField(
                isNumber: true,
                initialValue: settingsBloc.state.settings.torrestSettings.port
                    .toString(),
                onChanged: (value) {
                  settingsBloc.add(
                    SettingsUpdated(
                      settingsBloc.state.settings.copyWith(
                        torrestSettings: settingsBloc
                            .state
                            .settings
                            .torrestSettings
                            .copyWith(
                              port: int.tryParse(value),
                            ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SettingsTile(
              key: const Key('torrest-download-path'),
              leading: const AnikkiIcon(icon: HugeIcons.strokeRoundedFolder01),
              title: const Text('Download path'),
              trailing: Row(
                children: [
                  IconButton(
                    tooltip: 'Change download path',
                    icon: const Icon(HugeIcons.strokeRoundedFolderEdit),
                    onPressed: () async {
                      final path = await FilePicker.platform.getDirectoryPath();

                      if (path == null) return;

                      settingsBloc.add(
                        SettingsUpdated(
                          settingsBloc.state.settings.copyWith(
                            torrestSettings: settingsBloc
                                .state
                                .settings
                                .torrestSettings
                                .copyWith(
                                  downloadPath: path,
                                ),
                          ),
                        ),
                      );
                    },
                  ),
                  SettingsTextField(
                    initialValue: settingsBloc
                        .state
                        .settings
                        .torrestSettings
                        .downloadPath,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ],
          TorrentType.none => [],
        },
      ],
    );
  }
}
