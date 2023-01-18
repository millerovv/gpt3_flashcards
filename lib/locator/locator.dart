import 'package:get_it/get_it.dart';
import 'package:gpt3_flashcards/data/open_ai/open_ai_api_service.dart';
import 'package:gpt3_flashcards/domain/open_ai_interactor.dart';

final locator = GetIt.instance;

void initLocator() {
  locator.registerFactory(() => OpenAIApiService());

  locator.registerFactory(() => OpenAIInteractor(locator()));
}
