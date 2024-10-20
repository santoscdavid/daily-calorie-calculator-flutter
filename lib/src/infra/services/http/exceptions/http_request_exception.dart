class HttpRequestException implements Exception {
  final int status;
  final DateTime? timestamp;
  final String? type;
  final String? detail;
  final String? title;
  final String? userMessage;
  final ObjectErrors? objects;
  final String? message;

  HttpRequestException({
    required this.status,
    this.title,
    this.userMessage,
    this.type,
    this.timestamp,
    this.detail,
    this.objects,
    this.message,
  });

  @override
  String toString() =>
      'HttpRequestException(code: $status, title: $title, message: $userMessage, type: $type, detail: $detail, timestamp: $timestamp)';

  factory HttpRequestException.unknown() {
    return HttpRequestException(
      status: 0,
      title: '',
      userMessage: 'unexpected_error',
    );
  }
}

class FieldError {
  final String name;
  final String userMessage;

  FieldError({
    required this.name,
    required this.userMessage,
  });

  FieldError.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        userMessage = json['userMessage'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'userMessage': userMessage,
      };

  @override
  String toString() => 'FieldError(name: $name, userMessage: $userMessage)';
}

class ObjectErrors {
  final List<FieldError>? fields;

  ObjectErrors({
    this.fields,
  });

  ObjectErrors.fromJson(List<dynamic>? json)
      : fields = json?.map((e) => FieldError.fromJson(e)).toList();

  Map<String, dynamic> toJson() => {
        'fields': fields?.map((e) => e.toJson()).toList(),
      };
  @override
  String toString() => 'ObjectError(objects: $fields)';
}
