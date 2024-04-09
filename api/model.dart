class Journal {
  int id;
  String date;
  String time;
  bool isPanic;
  String thoughts;
  String emotions;

  // String dateCreated;

  Journal(this.id, this.date, this.time, this.isPanic, this.thoughts, this.emotions);
  
  factory Journal.fromJson(Map json) {
    return Journal(
      json["id"],
      json["date"],
      json["time"],
      json["isPanic"],
      json["thoughts"],
      json["emotions"],
      // json["dateCreated"],
    );
  }

  Map<String, String> toJson() {
    return {
      "id": "$id",
      "date": date,
      "time": time,
      "isPanic": "$isPanic",
      "thoughts": thoughts,
      "emotions": emotions,
      // "dateCreated": dateCreated,
    };
  }
}
