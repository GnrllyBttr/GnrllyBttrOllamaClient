// 📦 Package imports:
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  HttpCancelToken generateHttpCancelToken({bool isCancelled = false}) {
    return HttpCancelToken(isCancelled: isCancelled);
  }

  group('Given an HttpCancelToken instance', () {
    group('When creating an HttpCancelToken with default values', () {
      test('Then it should not be cancelled initially', () {
        final token = generateHttpCancelToken();

        expect(token.isCancelled, isFalse);
      });
    });

    group('When creating an HttpCancelToken with initial cancellation state',
        () {
      test('Then it should store the provided cancellation state', () {
        final token = generateHttpCancelToken(isCancelled: true);

        expect(token.isCancelled, isTrue);
      });
    });

    group('When cancelling an HttpCancelToken', () {
      test('Then it should set the isCancelled flag to true', () {
        final token = generateHttpCancelToken();

        token.cancel();

        expect(token.isCancelled, isTrue);
      });
    });
  });
}
