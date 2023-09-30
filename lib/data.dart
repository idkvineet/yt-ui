class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });

  get flutter_youtube_ui => null;
}

const User currentUser = User(
  username: 'MontageGuy911',
  profileImageUrl:
      'assets/channel_logo.png',
  subscribers: '89K',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

final List<Video> videos = [
  Video(
    id: 'x606y4QWrxo',
    author: currentUser,
    title: 'Haule Haule Rank Pull😵| Valorant comedy video | Hindi | Valorant funny moments',
    thumbnailUrl: 'assets/final.jpg',
    duration: '4:20',
    timestamp: DateTime(2023 , 9, 30),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    author: currentUser,
    id: 'vrPk6LB9bjo',
    title:
        'Cinemativ Valorant Edit | Step Back 🤬 | Valorant montage',
    thumbnailUrl: 'assets/step.png',
    duration: '00:40',
    timestamp: DateTime(2023, 9, 22),
    viewCount: '8K',
    likes: '485',
    dislikes: '8',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: currentUser,
    title: 'Journey to ascendent 🤡| Valorant comedy video | Hindi | Valorant funny moments',
    thumbnailUrl: 'assets/ascendent.png',
    duration: '03:41',
    timestamp: DateTime(2023, 9, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
];

final List<Video> suggestedVideos = [
  Video(
    id: 'rJKN_880b-M',
    author: currentUser,
    title: 'Finally rank down hogyi 🤓| Valorant comedy video | Hindi | Valorant funny moments',
    thumbnailUrl: 'assets/iron.png',
    duration: '1:13:15',
    timestamp: DateTime(2023, 9, 2),
    viewCount: '32K',
    likes: '1.9k',
    dislikes: '7',
  ),
  Video(
    id: 'HvLb5gdUfDE',
    author: currentUser,
    title: 'Uprank hoga bhi | Valorant comedy video | Hindi | Valorant funny moments',
    thumbnailUrl: 'assets/uprank.png',
    duration: '07:20',
    timestamp: DateTime(2023, 8, 7),
    viewCount: '190K',
    likes: '9.3K',
    dislikes: '45',
  ),
  Video(
    id: 'h-igXZCCrrc',
    author: currentUser,
    title: 'Finally racist ka tag hat gya | Valorant comedy video | Hindi | Valorant funny moments',
    thumbnailUrl: 'assets/racist.png',
    duration: '09:35',
    timestamp: DateTime(2023, 7, 17),
    viewCount: '358K',
    likes: '20k',
    dislikes: '85',
  ),
];
