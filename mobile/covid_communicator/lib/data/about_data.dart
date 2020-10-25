// Project class represents data that we display on about page
class Project {
  List<String> authors;
  DateTime createdAt;
  String contactDetails;
  String version;
  String url;
  String description;
  Project(
      {this.authors,
      this.createdAt,
      this.contactDetails,
      this.version,
      this.url,
      this.description});
}

Project AboutUs = Project(
  authors: [
    "Roda Idris",
    "Muna Hussein",
    "Mariam Moalin",
    "Yonis Omar",
    "Abdulhamid Osman",
    "Jamal Yusuf",
  ],
  createdAt: DateTime.parse("2020-10-24"),
  version: "1.0.0",
  url: "https://github.com/somalisintech/2020-hackathon-team-2",
  description:
      "We created AAC (Augmented Alternative Control) screens that can be used by Somalis in ICU (intensive care unit) settings, to communicate important information with medical personnel. The screens are focused on solving some specific form of communication, such as needs, wants, medical questions, pain assessment.",
);
