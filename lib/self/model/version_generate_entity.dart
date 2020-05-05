import 'package:flutterapptutor/generated/json/base/json_convert_content.dart';

class VersionGenerateEntity with JsonConvert<VersionGenerateEntity> {
	String name;
	String version;
	String timestamp;
	String environment;
}
