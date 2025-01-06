import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class rec extends StatefulWidget {
  const rec({super.key});

  @override
  State<rec> createState() => _recState();
}

class _recState extends State<rec> {
  bool isHeartRed=false;
  int count=0;
  void inc(){
    if(count<5){
      setState(() {
        count++;
      });
    }
  }
  SizedBox sp(){
    return SizedBox(width: 30,);
  }
  Container pic(  op,){
    return Container(padding: EdgeInsets.only(left:245,top:16,bottom: 115,right: 9),decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(30)),image:DecorationImage(fit:BoxFit.fill,image: NetworkImage(op), )),
      height: 170,width: 300,child:CircleAvatar(backgroundColor: Colors.white,radius: 100,child: IconButton(onPressed: (){
        setState(() {
          isHeartRed=!isHeartRed; // heart red colour
        });
      }, icon: Icon(CupertinoIcons.heart_fill,color: isHeartRed?Colors.red:Colors.grey,)),),
    );
  }///// above all input of program
  ///////// photo of recommended
  Container recom(var ops,doll,String tit){ /// op is link ,doll money ,
    return Container(
      height: 500,width: 300,color: Colors.white,/// const
      child: Column( /// const
        children: [//////container image  start
          Container(padding: EdgeInsets.only(left:245,top:16,bottom: 115,right: 9),decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(30)),image:DecorationImage(fit:BoxFit.fill,image: NetworkImage(ops), )),
            height: 170,width: 300,child:CircleAvatar(backgroundColor: Colors.white,radius: 100,child: IconButton(onPressed: (){
              setState(() {
                isHeartRed=!isHeartRed; // heart red colour
              });
            }, icon: Icon(CupertinoIcons.heart_fill,color: isHeartRed?Colors.red:Colors.grey,)),),
          )/// image is end
          ,SizedBox(height: 15,) // height between container and image
          ,Row(
            children: [Icon(CupertinoIcons.money_dollar,size: 29,weight:900,),
              Text(doll,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),// doll is money
              Text("/Night",style: TextStyle(fontSize: 15),) ,
              Icon(Icons.electric_bolt_rounded,
                color: Colors.orangeAccent,size: 15,),
              SizedBox(width: 100,),IconButton(onPressed: inc, icon: Icon(CupertinoIcons.star_fill,size: 15,color: Colors.orangeAccent,),)
              ,Text("$count",style: TextStyle(fontSize: 16),)],
          ),
          Row(children: [ SizedBox(width: 12,),
            Text(tit,style: TextStyle(fontSize:20,fontWeight: FontWeight.w500 ),),

          ],),
          Row(children: [ SizedBox(width: 12,),
            Text("Private room/4 beds",style: TextStyle(fontSize:15,fontWeight: FontWeight.w200 ),)
          ],)

        ],
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(height: 350,
      child: ListView( scrollDirection: Axis.horizontal,
        children: [sp(),
          recom('https://a0.muscache.com/im/pictures/b5f91d25-c754-41fd-b31e-643f3179dbc1.jpg?im_w=480',"230", 'Carinthia Lakes BreakFast...'),
          sp(), recom('https://cf.bstatic.com/xdata/images/hotel/max1024x768/48074514.jpg?k=44a9a90f19f4dac33e2829693b7987d7d0e9dc1e9723681311d924b368dd9e14&o=&hp=1', "400", "Carinthia Lake see..")
          ,sp(),
          recom('https://cf.bstatic.com/xdata/images/hotel/max1024x768/47579592.jpg?k=f0c3191d01c2d491414e32b24b413327de4bb6758db1fc47a397bc5310984056&o=&hp=1', "300", "Carinthia Lakes see ..")


        ],
      ),
    );
  }
}
