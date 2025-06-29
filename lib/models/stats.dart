mixin Stats {
  int _points = 10;
  int _health = 10;
  int _attack = 10;
  int _defense = 10;
  int _skill = 10;

  int get points => _points;

  Map<String, int> get statsAsMap => <String, int>{
    'health': _health,
    'attack': _attack,
    'defense': _defense,
    'skill': _skill,
  };

  List<Map<String, String>> get statsAsFormattedList => <Map<String, String>>[
    <String, String>{'title': 'health', 'value': _health.toString()},
    <String, String>{'title': 'attack', 'value': _attack.toString()},
    <String, String>{'title': 'defense', 'value': _defense.toString()},
    <String, String>{'title': 'skill', 'value': _skill.toString()},
  ];

  void increaseStat(String stat) {
    if (_points > 0) {
      if (stat == 'health') {
        _health++;
        _points--;
      }
      if (stat == 'attack') {
        _attack++;
        _points--;
      }
      if (stat == 'defense') {
        _defense++;
        _points--;
      }
      if (stat == 'skill') {
        _skill++;
        _points--;
      }
    }
  }

  void decreaseStat(String stat) {
    if (stat == 'health' && _health > 5) {
      _health--;
      _points++;
    }
    if (stat == 'attack' && _attack > 5) {
      _attack--;
      _points++;
    }
    if (stat == 'defense' && _defense > 5) {
      _defense--;
      _points++;
    }
    if (stat == 'skill' && _skill > 5) {
      _skill--;
      _points++;
    }
  }
}
