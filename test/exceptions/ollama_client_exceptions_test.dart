// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/gnrllybttr_ollama_client.dart';

void main() {
  final faker = Faker();

  GnrllyBttrOllamaClientException generateOllamaClientException() {
    return GnrllyBttrOllamaClientException(message: faker.lorem.sentence());
  }

  group('Given an OllamaClientException instance', () {
    group('When creating an OllamaClientException', () {
      test('Then it should store the provided message', () {
        final exception = generateOllamaClientException();

        expect(exception.message, isNotEmpty);
      });
    });

    group('When calling toString', () {
      test('Then it should return the correct string representation', () {
        final exception = generateOllamaClientException();

        expect(exception.toString(), startsWith('OllamaClientException: '));
      });
    });
  });
}
