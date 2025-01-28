import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

extension DocumentSnapshotX on DocumentSnapshot {
  Map<String, dynamic> _extractBaseData() {
    final map = data() as Map<String, dynamic>?;
    if (map == null) {
      throw Exception(
        'Document does not exist or data is null. (doc.id = $id)',
      );
    }
    map['id'] = id;
    return map;
  }

  Map<String, dynamic> _fillMissingTimestamps({
    required Map<String, dynamic> data,
    required List<String> timestampKeys,
  }) {
    for (final key in timestampKeys) {
      if (data[key] == null) {
        data[key] = Timestamp.fromDate(DateTime.now());
      }
    }
    return data;
  }

  T toModellFixingTimestamps<T>({
    required T Function(Map<String, dynamic>) fromJson,
    List<String> timestampKeys = const [],
  }) {
    final addIdData = _extractBaseData();
    final fixingData = _fillMissingTimestamps(
      data: addIdData,
      timestampKeys: timestampKeys,
    );
    return fromJson(fixingData);
  }

  Future<T> toModelFixingTimestampsAndDownloadUrl<T>({
    required T Function(Map<String, dynamic>) fromJson,
    List<String> timestampKeys = const [],
    required String storagePathKey,
    String? downloadUrlKey,
  }) async {
    final addIdData = _extractBaseData();
    final fixingData = _fillMissingTimestamps(
      data: addIdData,
      timestampKeys: timestampKeys,
    );

    final pathValue = fixingData[storagePathKey];
    if (pathValue is String) {
      final ref = FirebaseStorage.instance.ref(pathValue);
      final url = await ref.getDownloadURL();
      fixingData[downloadUrlKey ?? storagePathKey] = url;
    }

    return fromJson(fixingData);
  }
}
