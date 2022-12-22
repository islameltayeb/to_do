import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/provider/setting_provider.dart';
import 'package:to_do/utility/mythemedata.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddBottom extends StatefulWidget {
  @override
  State<AddBottom> createState() => _AddBottomState();
}

class _AddBottomState extends State<AddBottom> {
  GlobalKey<FormState> myKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Form(
      key: myKey,
      child: Container(
        color: provider.currentMode == ThemeMode.light
            ? MythemeData.bgItemColor
            : MythemeData.bgItemColorDark,
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppLocalizations.of(context)!.addnewtask,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.title,
                labelStyle: Theme.of(context).textTheme.headline1,
              ),
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "Please enter title";
                }
              },
            ),
            TextFormField(
              maxLines: 4,
              minLines: 3,
              decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.description,
                  labelStyle: Theme.of(context).textTheme.headline1),
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return "Please enter description";
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AppLocalizations.of(context)!.selecttime,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  showMyDatePker();
                },
                child: Text(
                  "12/2121",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2,
                )),
            Spacer(),
            Container(
                padding: EdgeInsets.all(18),
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {
                      myKey.currentState!.validate();
                    },
                    child: Text(
                      AppLocalizations.of(context)!.add,
                      style: TextStyle(fontSize: 20),
                    )))
          ],
        ),
      ),
    );
  }

  void showMyDatePker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
  }
}
