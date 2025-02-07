// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  ModelDetails generateModelDetails() {
    return ModelDetails(
      format: faker.lorem.word(),
      family: faker.lorem.word(),
    );
  }

  ModelStatus generateModelStatus() {
    return ModelStatus(
      name: faker.lorem.word(),
      model: faker.lorem.word(),
      size: faker.randomGenerator.integer(1000),
      digest: faker.lorem.word(),
      details: generateModelDetails(),
      expiresAt: faker.date.dateTime(),
      sizeVram: faker.randomGenerator.integer(1000),
    );
  }

  ModelStatusList generateModelStatusList() {
    return ModelStatusList(models: <ModelStatus>[generateModelStatus()]);
  }

  Map<String, dynamic> generateModelStatusListJson() {
    final modelStatusList = generateModelStatusList();

    return <String, dynamic>{
      'models': modelStatusList.models.map((model) => model.toJson()).toList(),
    };
  }

  group('Given a ModelStatusList instance', () {
    group('When creating a ModelStatusList with required fields', () {
      test('Then it should store the provided values correctly', () {
        final modelStatusList = generateModelStatusList();

        expect(modelStatusList.models, isNotEmpty);
      });
    });

    group('When creating a ModelStatusList from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateModelStatusListJson();
        final modelStatusList = ModelStatusList.fromJson(json);

        expect(modelStatusList.models.length, equals(1));
        expect(
          modelStatusList.models.first.name,
          equals(json['models'][0]['name']),
        );
      });
    });

    group('When converting ModelStatusList to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final modelStatusList = generateModelStatusList();
        final json = modelStatusList.toJson();

        expect(json['models'].length, equals(1));
        expect(
          json['models'][0]['name'],
          equals(modelStatusList.models[0].name),
        );
      });
    });

    group('When comparing ModelStatusList instances', () {
      test('Then identical instances should be equal', () {
        final modelStatusList1 = generateModelStatusList();
        final modelStatusList2 = ModelStatusList(
          models: modelStatusList1.models,
        );

        expect(
          modelStatusList1,
          equals(modelStatusList2),
        );
      });

      test('Then instances with different values should not be equal', () {
        final modelStatusList1 = generateModelStatusList();
        final modelStatusList2 = generateModelStatusList();

        expect(modelStatusList1, isNot(equals(modelStatusList2)));
      });
    });
  });
}
