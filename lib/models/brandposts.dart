class BrandPostsModel {
  final String bgimgurl;
  final String avatar;
  final String brandName;
  final String time;

  BrandPostsModel(this.bgimgurl, this.avatar, this.brandName, this.time);
}

List<BrandPostsModel> brandPostList = [
  BrandPostsModel("assets/brandposts/brand4.png",
      "assets/brandposts/avatar2.png", "Redbull", "2 hours ago"),
  BrandPostsModel("assets/brandposts/brand.png",
      "assets/brandposts/avatar1.png", "Redbull", "2 hours ago"),
  BrandPostsModel("assets/brandposts/brand4.png",
      "assets/brandposts/avatar2.png", "Nintendo", "2 hours ago"),
  BrandPostsModel("assets/brandposts/brand.png",
      "assets/brandposts/avatar3.png", "Louis vuitton", "2 hours ago"),
  BrandPostsModel("assets/brandposts/brand4.png",
      "assets/brandposts/avatar1.png", "Pepsi", "2 hours ago"),
];
