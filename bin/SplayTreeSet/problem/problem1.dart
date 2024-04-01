import 'dart:collection';

class Player {
  final String name;
  int score;

  Player(this.name, this.score);

  @override
  String toString() => '$name: $score';
}
int findRank(SplayTreeSet<Player> leaderboard, Player targetPlayer) {
  int rank = 1;
  for (var player in leaderboard) {
    if (player == targetPlayer) {
      return rank;
    }
    rank++;
  }
  return -1; // return -1 if the player is not found
}
void main() {
  // Create a SplayTreeSet to store players sorted by score
  final leaderboard = SplayTreeSet<Player>(
    (a, b) => a.score != b.score ? b.score.compareTo(a.score) : a.name.compareTo(b.name),
  );

  // Add initial players
  leaderboard.addAll([
    Player('Alice', 100),
    Player('Bob', 90),
    Player('Charlie', 80),
    Player('David', 70),
  ]);

  // Update player scores
  leaderboard.firstWhere((player) => player.name == 'Bob').score = 95;
  leaderboard.firstWhere((player) => player.name == 'David').score = 85;

  // Find top 3 players
  final topPlayers = leaderboard.take(3).toList();
  print('Top 3 Players: $topPlayers');

  // Find rank of a player
  final player = leaderboard.firstWhere((player) => player.name == 'Alice');
  final rank = findRank(leaderboard, player);
  print('Rank of ${player.name}: $rank');
}