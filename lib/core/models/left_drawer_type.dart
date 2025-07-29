enum LeftDrawerType {
  search('Search'),
  schedule('Schedule'),
  history('History');

  const LeftDrawerType(this.title);

  final String title;
}
