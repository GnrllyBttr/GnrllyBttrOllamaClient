// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  ModelDetails generateModelDetails({bool withAllFields = false}) {
    return ModelDetails(
      format: faker.lorem.word(),
      family: faker.lorem.word(),
      families: withAllFields ? [faker.lorem.word(), faker.lorem.word()] : null,
      parameterSize: withAllFields ? faker.lorem.word() : null,
      quantizationLevel: withAllFields ? faker.lorem.word() : null,
    );
  }

  Map<String, dynamic> generateModelDetailsJson({bool withAllFields = false}) {
    final details = generateModelDetails(withAllFields: withAllFields);
    return <String, dynamic>{
      'format': details.format,
      'family': details.family,
      if (withAllFields) 'families': details.families,
      if (withAllFields) 'parameter_size': details.parameterSize,
      if (withAllFields) 'quantization_level': details.quantizationLevel,
    };
  }

  group('Given a ModelDetails instance', () {
    group('When creating a ModelDetails with required fields only', () {
      test('Then it should store the provided values correctly', () {
        final details = generateModelDetails();

        expect(details.format, isNotEmpty);
        expect(details.family, isNotEmpty);
        expect(details.families, isNull);
        expect(details.parameterSize, isNull);
        expect(details.quantizationLevel, isNull);
      });
    });

    group('When creating a ModelDetails with all fields', () {
      test('Then it should store all provided values correctly', () {
        final details = generateModelDetails(withAllFields: true);

        expect(details.format, isNotEmpty);
        expect(details.family, isNotEmpty);
        expect(details.families, isNotEmpty);
        expect(details.parameterSize, isNotEmpty);
        expect(details.quantizationLevel, isNotEmpty);
      });
    });

    group('When creating a ModelDetails from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateModelDetailsJson();
        final details = ModelDetails.fromJson(json);

        expect(details.format, equals(json['format']));
        expect(details.family, equals(json['family']));
        expect(details.families, isNull);
        expect(details.parameterSize, isNull);
        expect(details.quantizationLevel, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = generateModelDetailsJson(withAllFields: true);
        final details = ModelDetails.fromJson(json);

        expect(details.format, equals(json['format']));
        expect(details.family, equals(json['family']));
        expect(details.families, equals(json['families']));
        expect(details.parameterSize, equals(json['parameter_size']));
        expect(details.quantizationLevel, equals(json['quantization_level']));
      });
    });

    group('When converting ModelDetails to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final details = generateModelDetails();
        final json = details.toJson();

        expect(json['format'], equals(details.format));
        expect(json['family'], equals(details.family));
        expect(json.containsKey('families'), isFalse);
        expect(json.containsKey('parameter_size'), isFalse);
        expect(json.containsKey('quantization_level'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final details = generateModelDetails(withAllFields: true);
        final json = details.toJson();

        expect(json['format'], equals(details.format));
        expect(json['family'], equals(details.family));
        expect(json['families'], equals(details.families));
        expect(json['parameter_size'], equals(details.parameterSize));
        expect(json['quantization_level'], equals(details.quantizationLevel));
      });
    });

    group('When comparing ModelDetails instances', () {
      test('Then identical instances should be equal', () {
        final details1 = generateModelDetails(withAllFields: true);
        final details2 = ModelDetails(
          format: details1.format,
          family: details1.family,
          families: details1.families,
          parameterSize: details1.parameterSize,
          quantizationLevel: details1.quantizationLevel,
        );

        expect(details1, equals(details2));
      });

      test('Then instances with different values should not be equal', () {
        final details1 = generateModelDetails(withAllFields: true);
        final details2 = generateModelDetails(withAllFields: true);

        expect(details1, isNot(equals(details2)));
      });
    });
  });
}
