import 'dart:collection';

class MusicPlaylist {
  LinkedHashSet<String> playlist = LinkedHashSet<String>();

  // Method to add a song to the playlist
  void addSong(String song) {
    if (!playlist.contains(song)) {
      playlist.add(song);
      print("$song has been added to the playlist.");
    } else {
      print("$song is already in the playlist.");
    }
  }

  // Method to remove a song from the playlist
  void removeSong(String song) {
    if (playlist.contains(song)) {
      playlist.remove(song);
      print("$song has been removed from the playlist.");
    } else {
      print("$song is not in the playlist.");
    }
  }

  // Method to display the playlist
  void displayPlaylist() {
    if (playlist.isEmpty) {
      print("Playlist is empty.");
    } else {
      print("Current Playlist:");
      playlist.forEach((song) => print("- $song"));
    }
  }
}

void main() {
  MusicPlaylist playlistManager = MusicPlaylist();

  // Adding songs to the playlist
  playlistManager.addSong("Song A");
  playlistManager.addSong("Song B");
  playlistManager.addSong("Song C");

  // Displaying the playlist
  playlistManager.displayPlaylist();

  // Adding a duplicate song
  playlistManager.addSong("Song B");

  // Removing a song from the playlist
  playlistManager.removeSong("Song C");

  // Displaying the updated playlist
  playlistManager.displayPlaylist();
}