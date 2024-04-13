Sure, here's another more complex real-life problem that can be solved using the `List` class in Dart:

**Problem**: A music streaming service wants to provide personalized playlists for their users based on their listening history. The service keeps track of the songs each user has listened to, along with the number of times they've listened to each song. The service wants to generate a playlist for each user that includes the user's most frequently listened songs, as well as some new songs that the user might enjoy based on their listening history.

**Solution using List**:

1. Create a `List` to store the user's listening history, where each element is a map containing the song title and the number of times the user has listened to it.
2. Sort the listening history `List` by the number of times each song has been listened to, in descending order.
3. Create a new `List` that includes the top N most frequently listened songs, where N is a configurable value (e.g., 10 songs).
4. Recommend additional songs for the user's playlist by:
   - Creating a `Set` of all the unique songs the user has listened to.
   - Querying a database or an external API to find new songs that are similar to the songs in the user's listening history.
   - Filtering out the songs that are already in the user's listening history, and adding the remaining new songs to the playlist.
5. Combine the top N most frequently listened songs and the new recommended songs to create the final personalized playlist.

Here's the Dart code that demonstrates this solution:

```dart
import 'dart:math';

// Simulate the user's listening history
final listeningHistory = [
  {'song': 'Song A', 'count': 15},
  {'song': 'Song B', 'count': 20},
  {'song': 'Song C', 'count': 8},
  {'song': 'Song D', 'count': 12},
  {'song': 'Song E', 'count': 18},
  {'song': 'Song F', 'count': 10},
  {'song': 'Song G', 'count': 6},
  {'song': 'Song H', 'count': 14},
  {'song': 'Song I', 'count': 9},
  {'song': 'Song J', 'count': 7},
];

// Constants
const topSongsCount = 10;
const newSongsCount = 5;

// Generate the personalized playlist
final personalizedPlaylist = generatePersonalizedPlaylist(listeningHistory, topSongsCount, newSongsCount);
print('Personalized Playlist:');
for (final song in personalizedPlaylist) {
  print('- $song');
}

List<String> generatePersonalizedPlaylist(
    List<Map<String, int>> listeningHistory, int topSongsCount, int newSongsCount) {
  // Sort the listening history by song count in descending order
  listeningHistory.sort((a, b) => b['count']!.compareTo(a['count']!));

  // Get the top N most frequently listened songs
  final topSongs = listeningHistory.take(topSongsCount).map((e) => e['song']!).toList();

  // Get the unique songs in the user's listening history
  final uniqueSongs = listeningHistory.map((e) => e['song']!).toSet();

  // Simulate finding new recommended songs
  final newSongs = <String>[];
  final random = Random();
  while (newSongs.length < newSongsCount) {
    final newSong = 'New Song ${newSongs.length + 1}';
    if (!uniqueSongs.contains(newSong)) {
      newSongs.add(newSong);
    }
  }

  // Combine the top songs and new recommended songs
  return [...topSongs, ...newSongs];
}
```

In this example, we first simulate the user's listening history by creating a `List` of maps, where each map represents a song and the number of times the user has listened to it. We then use this listening history to generate a personalized playlist for the user.

The `generatePersonalizedPlaylist` function first sorts the listening history by the number of times each song has been listened to, in descending order. It then selects the top `topSongsCount` most frequently listened songs and adds them to the playlist.

Next, the function creates a `Set` of the unique songs in the user's listening history. It then simulates finding new recommended songs by generating a list of `newSongsCount` unique song titles that are not already in the user's listening history.

Finally, the function combines the top frequently listened songs and the new recommended songs to create the final personalized playlist.

This example demonstrates the power of the `List` data structure in Dart for solving complex real-life problems. By using a combination of sorting, filtering, and set operations on the `List`, we can efficiently generate personalized recommendations for the user based on their listening history.