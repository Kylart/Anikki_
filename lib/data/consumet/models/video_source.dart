part of 'models.dart';

class VideoSource extends Equatable {
  const VideoSource({
    required this.url,
    this.quality,
    this.isM3U8,
    this.isDASH,
    this.size,
    this.subtitles,
    this.introStart,
    this.introEnd,
    this.outroStart,
    this.outroEnd,
  });

  final String url;
  final String? quality;
  final bool? isM3U8;
  final bool? isDASH;
  final double? size;
  final List<VideoSubtitle>? subtitles;

  final int? introStart;
  final int? introEnd;
  final int? outroStart;
  final int? outroEnd;

  @override
  List<Object?> get props {
    return [
      url,
      quality,
      isM3U8,
      isDASH,
      size,
      subtitles,
      introStart,
      introEnd,
      outroStart,
      outroEnd,
    ];
  }

  @override
  bool get stringify => true;
}
