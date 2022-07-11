// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class Covid {
  final String txnDate;
  final String province;
  final int newCase;
  final int totalCase;
  final int newCaseExcludeabroad;
  final int totalCaseExcludeabroad;
  final int newDeath;
  final int totalDeath;
  final String updateDate;
  Covid({
    required this.txnDate,
    required this.province,
    required this.newCase,
    required this.totalCase,
    required this.newCaseExcludeabroad,
    required this.totalCaseExcludeabroad,
    required this.newDeath,
    required this.totalDeath,
    required this.updateDate,
  });

  Covid copyWith({
    String? txnDate,
    String? province,
    int? newCase,
    int? totalCase,
    int? newCaseExcludeabroad,
    int? totalCaseExcludeabroad,
    int? newDeath,
    int? totalDeath,
    String? updateDate,
  }) {
    return Covid(
      txnDate: txnDate ?? this.txnDate,
      province: province ?? this.province,
      newCase: newCase ?? this.newCase,
      totalCase: totalCase ?? this.totalCase,
      newCaseExcludeabroad: newCaseExcludeabroad ?? this.newCaseExcludeabroad,
      totalCaseExcludeabroad: totalCaseExcludeabroad ?? this.totalCaseExcludeabroad,
      newDeath: newDeath ?? this.newDeath,
      totalDeath: totalDeath ?? this.totalDeath,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'txnDate': txnDate,
      'province': province,
      'newCase': newCase,
      'totalCase': totalCase,
      'newCaseExcludeabroad': newCaseExcludeabroad,
      'totalCaseExcludeabroad': totalCaseExcludeabroad,
      'newDeath': newDeath,
      'totalDeath': totalDeath,
      'updateDate': updateDate,
    };
  }

  factory Covid.fromMap(Map<String, dynamic> map) {
    return Covid(
      txnDate: map['txnDate'] as String,
      province: map['province'] as String,
      newCase: map['newCase'] as int,
      totalCase: map['totalCase'] as int,
      newCaseExcludeabroad: map['newCaseExcludeabroad'] as int,
      totalCaseExcludeabroad: map['totalCaseExcludeabroad'] as int,
      newDeath: map['newDeath'] as int,
      totalDeath: map['totalDeath'] as int,
      updateDate: map['updateDate'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Covid.fromJson(String source) => Covid.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Covid(txnDate: $txnDate, province: $province, newCase: $newCase, totalCase: $totalCase, newCaseExcludeabroad: $newCaseExcludeabroad, totalCaseExcludeabroad: $totalCaseExcludeabroad, newDeath: $newDeath, totalDeath: $totalDeath, updateDate: $updateDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Covid &&
      other.txnDate == txnDate &&
      other.province == province &&
      other.newCase == newCase &&
      other.totalCase == totalCase &&
      other.newCaseExcludeabroad == newCaseExcludeabroad &&
      other.totalCaseExcludeabroad == totalCaseExcludeabroad &&
      other.newDeath == newDeath &&
      other.totalDeath == totalDeath &&
      other.updateDate == updateDate;
  }

  @override
  int get hashCode {
    return txnDate.hashCode ^
      province.hashCode ^
      newCase.hashCode ^
      totalCase.hashCode ^
      newCaseExcludeabroad.hashCode ^
      totalCaseExcludeabroad.hashCode ^
      newDeath.hashCode ^
      totalDeath.hashCode ^
      updateDate.hashCode;
  }
}

