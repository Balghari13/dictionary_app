import 'package:dictionary_app/constants/app_constants.dart';
import 'package:http/http.dart' as http;

class DictionaryService {
  void getData(String word) async{
    Uri url = Uri.parse('${AppConstants.baseUrl}/${word}?key=${AppConstants.apiKey}');
    final response = await http.get(url);
    if(response.statusCode!=200){
      throw Exception('Error fetching data from server');

    }

  }
}