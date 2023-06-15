import 'package:dictionary_app/ui/widgets/custom_button.dart';
import 'package:dictionary_app/ui/widgets/custom_card.dart';
import 'package:dictionary_app/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

import '../../service/dictionary_srvice.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key});

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  String searchStr = '';
  DictionaryService _dictionaryService = DictionaryService();
void updateUI(value){
  searchStr = value;
  setState(() {

  });
}
void onPress(){
  _dictionaryService.getData(searchStr);
}



  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Dictionary App'),
        centerTitle: true,
        // backgroundColor: Colors.black38,
      ),
      // backgroundColor: Colors.black45,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomInput(
            onChange: updateUI,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButtom(
                  title: Icon(
                    Icons.near_me,
                    size: 32,
                  ),
                  onPressed: onPress,
                  backgroundColor: theme.primaryColor,
                ),
              ],
            ),
          ),
          Divider(
            color: theme.primaryColor,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Word: $searchStr', style: theme.textTheme.displayLarge,),
          ),
          CustomCard(),
        ],
      ),
    );
  }
}
