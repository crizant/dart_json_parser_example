import 'dart:io';
import 'dart:convert';
import 'post.dart';

void main(List<String> arguments) async {
  final data = await File('bin/data.json').readAsString();
  print('// Read json file successfully.');
  final post = Post.fromMap(json.decode(data));
  print('The title of the post is "${post.title}".');
  print('There are ${post.numOfComments} comments in this post.');
  print('The first comment is from "${post.comments.first.email}".');
}
