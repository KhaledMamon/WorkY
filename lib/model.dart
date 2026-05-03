class Freelancer {
  final String id;
  final String name;
  final String role;
  final double rating;
  final String jobsCount;
  final int hourlyRate;

  Freelancer({
    required this.id,
    required this.name,
    required this.role,
    required this.rating,
    required this.jobsCount,
    required this.hourlyRate,
  });

  factory Freelancer.fromJson(Map<String, dynamic> json) {
    return Freelancer(
      id: json['id'].toString(),
      name: json['name'],
      role: json['role'],
      rating: json['rating'].toDouble(),
      jobsCount: json['jobsCount'],
      hourlyRate: json['hourlyRate'],
    );
  }
}

class Post {
  final String id;
  final String authorName;
  final String authorRole;
  final String timeAgo;
  final String content;
  final String postImageUrl;

  Post({
    required this.id,
    required this.authorName,
    required this.authorRole,
    required this.timeAgo,
    required this.content,
    required this.postImageUrl,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'].toString(),
      authorName: json['authorName'],
      authorRole: json['authorRole'],
      timeAgo: json['timeAgo'],
      content: json['content'],
      postImageUrl: json['postImageUrl'],
    );
  }
}

// A new class to hold both lists together
class HomeData {
  final List<Freelancer> freelancers;
  final List<Post> posts;

  HomeData({required this.freelancers, required this.posts});
}



