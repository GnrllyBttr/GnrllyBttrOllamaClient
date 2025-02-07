// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

void main() {
  final faker = Faker();

  Model generateModel() {
    return Model(
      name: faker.lorem.word(),
      modifiedAt: faker.date.dateTime(),
      size: faker.randomGenerator.integer(1000),
      digest: faker.lorem.word(),
      details: ModelDetails(
        format: faker.lorem.word(),
        family: faker.lorem.word(),
      ),
    );
  }

  ModelList generateModelList() {
    return ModelList(models: <Model>[generateModel()]);
  }

  Map<String, dynamic> generateModelListJson() {
    final modelList = generateModelList();

    return <String, dynamic>{
      'models': modelList.models.map((model) => model.toJson()).toList(),
    };
  }

  group('Given a ModelList instance', () {
    group('When creating a ModelList with required fields', () {
      test('Then it should store the provided values correctly', () {
        final modelList = generateModelList();

        expect(modelList.models, isNotEmpty);
      });
    });

    group('When creating a ModelList from JSON', () {
      test('Then it should parse required fields correctly', () {
        final json = generateModelListJson();
        final modelList = ModelList.fromJson(json);

        expect(modelList.models.length, equals(1));
        expect(modelList.models.first.name, equals(json['models'][0]['name']));
      });
    });

    group('When converting ModelList to JSON', () {
      test('Then it should serialize required fields correctly', () {
        final modelList = generateModelList();
        final json = modelList.toJson();

        expect(json['models'].length, equals(1));
        expect(json['models'][0]['name'], equals(modelList.models[0].name));
      });
    });

    group('When comparing ModelList instances', () {
      test('Then identical instances should be equal', () {
        final modelList1 = generateModelList();
        final modelList2 = ModelList(models: modelList1.models);

        expect(modelList1, equals(modelList2));
      });

      test('Then instances with different values should not be equal', () {
        final modelList1 = generateModelList();
        final modelList2 = generateModelList();

        expect(modelList1, isNot(equals(modelList2)));
      });
    });
  });
}
