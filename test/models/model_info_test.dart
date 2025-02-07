// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();
  final testModelfile = faker.lorem.word();
  final testParameters = faker.lorem.sentence();
  final testTemplate = faker.lorem.sentence();
  final testDetails = ModelDetails(
    format: faker.lorem.word(),
    family: faker.lorem.word(),
  );
  final testModelInfo = {
    faker.lorem.word(): faker.lorem.sentence(),
    faker.lorem.word(): faker.lorem.sentence(),
  };

  group('Given a ModelInfo instance', () {
    group('When creating a ModelInfo with required fields', () {
      test('Then it should store the provided values correctly', () {
        final modelInfo = ModelInfo(
          modelfile: testModelfile,
          parameters: testParameters,
          template: testTemplate,
          details: testDetails,
        );

        expect(modelInfo.modelfile, equals(testModelfile));
        expect(modelInfo.parameters, equals(testParameters));
        expect(modelInfo.template, equals(testTemplate));
        expect(modelInfo.details, equals(testDetails));
        expect(modelInfo.modelInfo, isNull);
      });
    });

    group('When creating a ModelInfo with all fields', () {
      test('Then it should store all provided values correctly', () {
        final modelInfo = ModelInfo(
          modelfile: testModelfile,
          parameters: testParameters,
          template: testTemplate,
          details: testDetails,
          modelInfo: testModelInfo,
        );

        expect(modelInfo.modelfile, equals(testModelfile));
        expect(modelInfo.parameters, equals(testParameters));
        expect(modelInfo.template, equals(testTemplate));
        expect(modelInfo.details, equals(testDetails));
        expect(modelInfo.modelInfo, equals(testModelInfo));
      });
    });

    group('When creating a ModelInfo from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = {
          'modelfile': testModelfile,
          'parameters': testParameters,
          'template': testTemplate,
          'details': testDetails.toJson(),
        };

        final modelInfo = ModelInfo.fromJson(json);

        expect(modelInfo.modelfile, equals(testModelfile));
        expect(modelInfo.parameters, equals(testParameters));
        expect(modelInfo.template, equals(testTemplate));
        expect(modelInfo.details, equals(testDetails));
        expect(modelInfo.modelInfo, isNull);
      });

      test('Then it should parse all fields correctly', () {
        final json = {
          'modelfile': testModelfile,
          'parameters': testParameters,
          'template': testTemplate,
          'details': testDetails.toJson(),
          'modelInfo': testModelInfo,
        };

        final modelInfo = ModelInfo.fromJson(json);

        expect(modelInfo.modelfile, equals(testModelfile));
        expect(modelInfo.parameters, equals(testParameters));
        expect(modelInfo.template, equals(testTemplate));
        expect(modelInfo.details, equals(testDetails));
        expect(modelInfo.modelInfo, equals(testModelInfo));
      });
    });

    group('When converting ModelInfo to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final modelInfo = ModelInfo(
          modelfile: testModelfile,
          parameters: testParameters,
          template: testTemplate,
          details: testDetails,
        );

        final json = modelInfo.toJson();

        expect(json['modelfile'], equals(testModelfile));
        expect(json['parameters'], equals(testParameters));
        expect(json['template'], equals(testTemplate));
        expect(json['details'], equals(testDetails.toJson()));
        expect(json.containsKey('modelInfo'), isFalse);
      });

      test('Then it should serialize all fields correctly', () {
        final modelInfo = ModelInfo(
          modelfile: testModelfile,
          parameters: testParameters,
          template: testTemplate,
          details: testDetails,
          modelInfo: testModelInfo,
        );

        final json = modelInfo.toJson();

        expect(json['modelfile'], equals(testModelfile));
        expect(json['parameters'], equals(testParameters));
        expect(json['template'], equals(testTemplate));
        expect(json['details'], equals(testDetails.toJson()));
        expect(json['modelInfo'], equals(testModelInfo));
      });
    });

    group('When comparing ModelInfo instances', () {
      test('Then identical instances should be equal', () {
        final modelInfo1 = ModelInfo(
          modelfile: testModelfile,
          parameters: testParameters,
          template: testTemplate,
          details: testDetails,
          modelInfo: testModelInfo,
        );

        final modelInfo2 = ModelInfo(
          modelfile: testModelfile,
          parameters: testParameters,
          template: testTemplate,
          details: testDetails,
          modelInfo: testModelInfo,
        );

        expect(modelInfo1, equals(modelInfo2));
      });

      test('Then instances with different values should not be equal', () {
        final modelInfo1 = ModelInfo(
          modelfile: testModelfile,
          parameters: testParameters,
          template: testTemplate,
          details: testDetails,
          modelInfo: testModelInfo,
        );

        final modelInfo2 = ModelInfo(
          modelfile: faker.lorem.word(),
          parameters: faker.lorem.sentence(),
          template: faker.lorem.sentence(),
          details: ModelDetails(
            format: faker.lorem.word(),
            family: faker.lorem.word(),
          ),
          modelInfo: {
            faker.lorem.word(): faker.lorem.sentence(),
            faker.lorem.word(): faker.lorem.sentence(),
          },
        );

        expect(modelInfo1, isNot(equals(modelInfo2)));
      });
    });
  });
}
