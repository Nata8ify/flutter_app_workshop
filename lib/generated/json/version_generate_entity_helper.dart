import 'package:flutterapptutor/self/model/version_generate_entity.dart';

versionGenerateEntityFromJson(VersionGenerateEntity data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['version'] != null) {
		data.version = json['version']?.toString();
	}
	if (json['timestamp'] != null) {
		data.timestamp = json['timestamp']?.toString();
	}
	if (json['environment'] != null) {
		data.environment = json['environment']?.toString();
	}
	return data;
}

Map<String, dynamic> versionGenerateEntityToJson(VersionGenerateEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['version'] = entity.version;
	data['timestamp'] = entity.timestamp;
	data['environment'] = entity.environment;
	return data;
}