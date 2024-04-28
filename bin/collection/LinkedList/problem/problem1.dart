import 'dart:collection';

// Define a custom LinkedListEntry class for songs
final class Song extends LinkedListEntry<Song> {
  final String title;
  final String artist;
  final int duration;

  Song(this.title, this.artist, this.duration);

  @override
  String toString() {
    return '$title - $artist ($duration s)';
  }
}

class MusicPlayer {
  final LinkedList<Song> playlist = LinkedList();

  void addSong(Song song) {
    playlist.add(song);
    print('Added "$song" to the playlist.');
  }

  void addSongAtStart(Song song) {
    playlist.addFirst(song);
    print('Added "$song" at the start of the playlist.');
  }

  void addSongAtIndex(int index, Song song) {
    if (index == 0) {
      addSongAtStart(song);
    } else {
      var entry = playlist.elementAt(index - 1);
      entry.insertAfter(song);
      print('Added "$song" at index $index in the playlist.');
    }
  }

  void removeSong(Song song) {
    if (playlist.contains(song)) {
      song.unlink();
      print('Removed "$song" from the playlist.');
    } else {
      print('Song not found in the playlist.');
    }
  }

  void moveSong(Song song, int newIndex) {
    if (playlist.contains(song)) {
      song.unlink();
      if (newIndex == 0) {
        playlist.addFirst(song);
      } else {
        var entry = playlist.elementAt(newIndex - 1);
        entry.insertAfter(song);
      }
      print('Moved "$song" to index $newIndex in the playlist.');
    } else {
      print('Song not found in the playlist.');
    }
  }

  void playPlaylist() {
    if (playlist.isEmpty) {
      print('Playlist is empty. Nothing to play.');
    } else {
      print('Playing the playlist:');
      for (var song in playlist) {
        print('Playing: $song');
      }
    }
  }
}

void main() {
  final player = MusicPlayer();

  player.addSong(Song('Imagine', 'John Lennon', 240));
  player.addSong(Song('Bohemian Rhapsody', 'Queen', 355));
  player.addSongAtStart(Song('Stairway to Heaven', 'Led Zeppelin', 482));
  player.addSongAtIndex(1, Song('Hotel California', 'Eagles', 390));

  player.playPlaylist();
  print('');

  player.removeSong(player.playlist.elementAt(2));
  player.moveSong(player.playlist.last, 1);

  player.playPlaylist();
}