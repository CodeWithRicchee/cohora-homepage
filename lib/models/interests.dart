class InterestsModel {
  final String avatar;
  final String name;
  final String desc;
  final String img;
  final String time;

  InterestsModel(this.avatar, this.name, this.desc, this.img, this.time);
}

List<InterestsModel> interestList = [
  InterestsModel(
      "assets/brandposts/avatar1.png",
      "Jack posted a video",
      "About the christmas celebration",
      "assets/brandposts/brand1",
      "2 hours ago"),
  InterestsModel(
      "assets/brandposts/avatar2.png",
      "Albert Edelman Posted",
      "Awesome performance by the F1 series x12",
      "assets/brandposts/brand2",
      "2 hours ago"),
  InterestsModel(
      "assets/brandposts/avatar3.png",
      "Jenny Posted",
      "Awesome Performance by the F1 series X24",
      "assets/brandposts/brand3",
      "2 hours ago"),
];
