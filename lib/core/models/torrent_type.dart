enum TorrentType {
  transmission('Transmission'),
  qbittorrent('QBitTorrent'),
  torrest('Anikki torrent'),
  none('None');

  final String title;

  const TorrentType(this.title);
}
