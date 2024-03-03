import 'package:auto_mynds/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeline_tile/timeline_tile.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {

  int currStep = 0;
  int questCount = 3;
  int cardRowCount = 1;

  var counterCtrl = TextEditingController();
  int counterValue = 0;

  var followUpNoteMap = {
    "section_name" : [
      {
        "question" : "question1 ?",
        "sub-questions" : [
          "sub-question1 ?",
          "sub-question2 ?",
        ],
      },
      {
        "question" : "question2 ?",
        "sub-questions" : [
          "sub-question1 ?",
          "sub-question2 ?",
        ],
      },
    ],
  };

  List<List<TextEditingController>> textControllers = [];

  initState(){
    counterCtrl.text=counterValue.toString();
  }

  incrementStep(){
    if (currStep<(questCount-1)){
      setState(() {
        currStep++;
      });
    }
  }
  decrementStep(){
    if (currStep>0){
      setState(() {
        currStep--;
      });
    }
  }
  tapStep(int currIndex){
    setState(() {
      currStep = currIndex;
    });
  }

  void showListItems() {
    for (var rows in textControllers) {
      for (var ctrls in rows){
        print(ctrls.text);
      }
    }
  }


  Widget controlsBuilder(context , details){
    return Row(
      children: [
        ElevatedButton(onPressed: details.onStepContinue, child: Text("Next")),
        OutlinedButton(onPressed: details.onStepCancel, child: Text("Prev"))
      ],
    );
  }

  Widget morCOntent(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd adkjnf a fajldhf as jalfsd ba fakjldsfbas faljsfbasjfnasjkdfkjals fdasfjlkdnkjs f "),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),
        Text("jsadnjkaf aknsfdnjkaf jknadsfknja jkasjk aankfsd fna jkaf asfj adjsfasjf,jsd"),

        InkWell(
          onTap: (){},
          splashColor: Colors.white,
          child: Ink(
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 60,
              width: 200,
              child: Center(child: Text("OKAY")),
            ),
          ),
        ),
      ],
    );
  }

  Widget counterWidget(){
    return Container(
      width: 120,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: Colors.lightGreen,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          IconButton(onPressed: (){
            setState(() {
              setState(() {
                counterValue++;
                counterCtrl.text = counterValue.toString();
              });
            });
          }, icon: Icon(Icons.add, color: Colors.black,)),
          Expanded(
            child: TextFormField(
              controller: counterCtrl,
              maxLines: 1,
              decoration: InputDecoration(
                  border: InputBorder.none
              ),
              onChanged: (value) {
                setState(() {
                  if (value.isNotEmpty) {
                    counterValue = int.parse(value);
                  } else {
                    counterValue = 0;
                  }
                });
              },
              keyboardType: TextInputType.number,
            ),
          ),
          IconButton(onPressed: (){
            setState(() {
              if (counterValue > 0) {
                counterValue--;
                counterCtrl.text = counterValue.toString();
              }
            });
          }, icon: Icon(Icons.minimize_outlined, color: Colors.black,)),
        ],
      ),
    );
  }


  Widget addCards(){
    return ListView.builder(
      itemBuilder: (context, index){
        print("textControllers length: ${textControllers.length}, index: $index");
        if (index >= textControllers.length) {
          textControllers.add([TextEditingController(), TextEditingController()]);
        }
        print("textControllers length: ${textControllers.length}, index: $index");
        return Row(
          children: [
            Expanded(child: inputField("Heading", "hinText", textControllers[index][0], 1, 40,
            )),
            SizedBox(width: 10.w,),
            Expanded(child: inputField("Heading", "hinText", textControllers[index][1], 1, 40)),
            SizedBox(width: 10.w,),
            index==0 ? Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: cyan,
              ),
              child: IconButton(
                onPressed: (){
                  setState(() {
                    cardRowCount++;
                  });
                },
                icon: Icon(Icons.add,color: white,),
              ),
            ) : Container(height: 40, width: 40,),
          ],
        );
      },
      itemCount: cardRowCount,
      shrinkWrap: true,
    );
  }

  Widget inputField(String labelText, String hintText, TextEditingController controller, int maxLines, double height) {
    return Container(

      color: white,
      height: height,
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: labelText,
          border: InputBorder.none,
          hintText: hintText,
          //border: OutlineInputBorder(),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
        body: Theme(
          data: ThemeData(
            colorScheme: Theme.of(context).colorScheme.copyWith(primary: cyan),
          ),
          child: Column(
            children: [
              Stepper(
                type: StepperType.vertical,
                currentStep: currStep,
                elevation: 0,
                onStepContinue: incrementStep,
                onStepCancel: decrementStep,
                onStepTapped: tapStep,
                controlsBuilder: controlsBuilder,
                steps: [
                  Step(title: Text("Has the patient be admitted to the hospital since the last visit?"), content: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        showListItems();
                        print("Length : "+ textControllers.length.toString());
                      });
                    }, child: Text("show list items"),
                  ), isActive: currStep==0, state: currStep>=0 ? StepState.indexed : StepState.indexed),
                  Step(title: Text("Please enter the number of falls which have occured since the most recent previous visit"), content: counterWidget(), isActive: currStep==1, state: currStep>=1 ? StepState.indexed : StepState.indexed),
                  Step(title: Text("Has the patient utilized the ED/ER since the last visit ?"), content: addCards(), isActive: currStep==2, state: currStep>=2 ? StepState.indexed : StepState.indexed),
                ],
              ),


              ElevatedButton(onPressed: (){
                setState(() {
                  for (int i = 0; i < questCount; i++) {
                    tapStep(i);
                  }
                });
              }, child: Text("Show All Steps at once"))
            ],
          ),
        )
    );
  }
}