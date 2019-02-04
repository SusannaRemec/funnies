final List<CardViewModel> demoCards = [
  CardViewModel(imageAssetPath: 'assets/images/midvale.jpg', name: 'Midvale'),
  CardViewModel(imageAssetPath: 'assets/images/chinaShop.jpg', name: 'Shopping Bulls'),
  CardViewModel(imageAssetPath: 'assets/images/knockKnock.jpg', name: "Who's There"),
  CardViewModel(imageAssetPath: 'assets/images/teddy.jpg', name: 'Idiot Boys'),
  CardViewModel(imageAssetPath: 'assets/images/noBlues.jpg', name: 'What Blues?'),
];

class CardViewModel {
    final String name;
    final String imageAssetPath;


CardViewModel({
    this.name,
    this.imageAssetPath
});
}