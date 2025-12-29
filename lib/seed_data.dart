import 'package:cloud_firestore/cloud_firestore.dart';

void seedData() async {
  final firestore = FirebaseFirestore.instance;

  // ================== STUDENTS (20) ==================
  final studentList = List.generate(20, (i) {
    return {
      "name": "Student $i",
      "email": "student$i@mail.com",
      "profileImage": "https://i.pravatar.cc/150?img=${i + 1}",
      "bio": "I am Student number $i",
      "university": "University ${i % 5}",
      "major": ["Computer", "Software", "Civil", "Electrical", "Chemical"][i % 5],
      "points": (i * 10) % 200,
      "followingEngineers": i % 7,
    };
  });

  List<String> studentIds = [];

  for (var s in studentList) {
    final doc = firestore.collection("students").doc();
    await doc.set({
      "studentId": doc.id,
      "createdAt": FieldValue.serverTimestamp(),
      ...s,
    });
    studentIds.add(doc.id);
  }

  // ================== ENGINEERS (20) ==================
  final engineerList = List.generate(20, (i) {
    return {
      "name": "Engineer $i",
      "email": "engineer$i@mail.com",
      "profileImage": "https://i.pravatar.cc/150?img=${i + 30}",
      "bio": "Engineer specialist number $i",
      "specialization":
          ["Software", "Civil", "Electrical", "Computer", "Chemical"][i % 5],
      "yearsExperience": (i % 10) + 1,
      "followers": (i * 3),
      "rating": 3.5 + (i % 5) * 0.3
    };
  });

  List<String> engineerIds = [];

  for (var e in engineerList) {
    final doc = firestore.collection("engineers").doc();
    await doc.set({
      "engineerId": doc.id,
      "createdAt": FieldValue.serverTimestamp(),
      ...e,
    });
    engineerIds.add(doc.id);
  }

  // ================== POSTS (20) ==================
  List<Map<String, dynamic>> posts = List.generate(20, (i) {
    final userId = (i % 2 == 0)
        ? studentIds[i % 20]
        : engineerIds[i % 20]; // alternating sources

    return {
      "postId": "post_$i",
      "userId": userId,
      "content": "This is sample post number $i",
      "image": "https://picsum.photos/300?random=$i",
      "createdAt": Timestamp.now(),
      "likesCount": i * 2,
    };
  });

  for (var post in posts) {
    await firestore.collection("posts").doc(post["postId"]).set(post);
  }

  // ================== COMMENTS (40) ==================
  List<Map<String, dynamic>> comments = List.generate(40, (i) {
    return {
      "commentId": "comment_$i",
      "postId": "post_${i % 20}",
      "userId": studentIds[i % 20],
      "content": "Comment number $i",
      "timestamp": Timestamp.now(),
      "likesCount": i,
    };
  });

  for (var c in comments) {
    await firestore.collection("comments").doc(c["commentId"]).set(c);
  }

  // ================== FOLLOWS (20) ==================
  List<Map<String, dynamic>> follows = List.generate(20, (i) {
    return {
      "userId": studentIds[i],
      "followingId": engineerIds[(i + 3) % 20],
    };
  });

  for (var f in follows) {
    await firestore.collection("follows").add(f);
  }

  // ================== QUESTIONS (20) ==================
  List<Map<String, dynamic>> questions = List.generate(20, (i) {
    return {
      "questionId": "question_$i",
      "userId": studentIds[i],
      "title": "Question title $i",
      "content": "This is sample question content $i",
      "answerCount": i % 5,
      "timestamp": Timestamp.now(),
    };
  });

  for (var q in questions) {
    await firestore.collection("questions").doc(q["questionId"]).set(q);
  }

  // ================== ANSWERS (40) ==================
  List<Map<String, dynamic>> answers = List.generate(40, (i) {
    return {
      "answerId": "answer_$i",
      "questionId": "question_${i % 20}",
      "content": "Answer number $i",
      "timestamp": Timestamp.now(),
      "userId": engineerIds[i % 20],
    };
  });

  for (var a in answers) {
    await firestore.collection("answers").doc(a["answerId"]).set(a);
  }


}
