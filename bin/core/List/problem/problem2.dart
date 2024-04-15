// import 'dart:math';

// void main() {
// // Simulate the user's listening history
//   final listeningHistory = [
//     {'song': 'Song A', 'count': 15},
//     {'song': 'Song B', 'count': 20},
//     {'song': 'Song C', 'count': 8},
//     {'song': 'Song D', 'count': 12},
//     {'song': 'Song E', 'count': 18},
//     {'song': 'Song F', 'count': 10},
//     {'song': 'Song G', 'count': 6},
//     {'song': 'Song H', 'count': 14},
//     {'song': 'Song I', 'count': 9},
//     {'song': 'Song J', 'count': 7},
//   ];

// // Constants
//   const topSongsCount = 10;
//   const newSongsCount = 5;

//   List<String> generatePersonalizedPlaylist(
//       List<Map<String, int>> listeningHistory,
//       int topSongsCount,
//       int newSongsCount) {
//     // Sort the listening history by song count in descending order
//     listeningHistory.sort((a, b) => b['count']!.compareTo(a['count']!));

//     // Get the top N most frequently listened songs
//     final topSongs =
//         listeningHistory.take(topSongsCount).map((e) => e['song']!).toList();

//     // Get the unique songs in the user's listening history
//     final uniqueSongs = listeningHistory.map((e) => e['song']!).toSet();

//     // Simulate finding new recommended songs
//     final newSongs = <String>[];
//     final random = Random();
//     while (newSongs.length < newSongsCount) {
//       final newSong = 'New Song ${newSongs.length + 1}';
//       if (!uniqueSongs.contains(newSong)) {
//         newSongs.add(newSong);
//       }
//     }

//     // Combine the top songs and new recommended songs
//     return [...topSongs, ...newSongs];
//   }

// // Generate the personalized playlist
//   final personalizedPlaylist = generatePersonalizedPlaylist(
//       listeningHistory, topSongsCount, newSongsCount);
//   print('Personalized Playlist:');
//   for (final song in personalizedPlaylist) {
//     print('- $song');
//   }
// }
