class GuruModel {
  int? id;
  String? firstname;
  String? midlename;
  String? lastname;
  String? createdAt;
  String? updatedAt;
  List<Posts>? posts;

  GuruModel(
      {this.id,
        this.firstname,
        this.midlename,
        this.lastname,
        this.createdAt,
        this.updatedAt,
        this.posts});

  GuruModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstname = json['firstname'];
    midlename = json['midlename'];
    lastname = json['lastname'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    if (json['posts'] != null) {
      posts = <Posts>[];
      json['posts'].forEach((v) {
        posts!.add(Posts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['firstname'] = firstname;
    data['midlename'] = midlename;
    data['lastname'] = lastname;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (posts != null) {
      data['posts'] = posts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  int? id;
  String? title;
  String? content;
  String? createdAt;
  String? updatedAt;
  int? creatorId;

  Posts(
      {this.id,
        this.title,
        this.content,
        this.createdAt,
        this.updatedAt,
        this.creatorId});

  Posts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    creatorId = json['creatorId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['content'] = content;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['creatorId'] = creatorId;
    return data;
  }
}