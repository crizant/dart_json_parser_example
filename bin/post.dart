class Post {
  final int userId;
  final int id;
  final String title;
  final String body;
  final List<Comment> comments;

  int get numOfComments => comments.length;

  Post.fromMap(Map json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        body = json['body'],
        comments = json['comments'].map<Comment>((comment) {
          return Comment.fromMap(comment);
        }).toList();
}

class Comment {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  Comment.fromMap(Map json)
      : postId = json['postId'],
        id = json['id'],
        name = json['name'],
        email = json['email'],
        body = json['body'];
}
