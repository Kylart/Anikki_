enum TorrentType {
  transmission('Transmission'),
  qbittorrent('QBitTorrent'),
  torrest('Torrest'),
  none('None');

  final String title;

  const TorrentType(this.title);
}
