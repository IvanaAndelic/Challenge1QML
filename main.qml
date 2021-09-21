import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: win
    width: 1920
    height: 1080
    visible: true
    title: qsTr("Hello World")
    color: 'black'
    Component.onCompleted: hobbit.focus=true

   Rectangle{
       id:mainrect
       anchors.centerIn: parent
       width:parent.width-200
       height:parent.height-300
       color:'gray'


   Row{
       id: row
       anchors.centerIn:mainrect
       spacing:20
       width: parent.width*0.8
       height: parent.height/2





           Rectangle{
               id: rect1
               width: parent.width/5-row.spacing/5
               height:parent.height
               color: 'transparent'

               Image{
                   id: hobbit
                   anchors.fill: parent
                   source:'qrc:hobbit.jpg'
                   fillMode: Image.PreserveAspectFit
                   scale:focus?1.2:1
                   MouseArea{
                       id:area1
                       width:parent.width
                       height: parent.height
                       anchors.fill:parent
                       hoverEnabled: true

                       onEntered: {
                                // hobbit.scale=1.2
                                 hobbit.focus=true
                              }

                       onExited: {
                                 // hobbit.scale=1
                                  hobbit.focus=false
                              }
                   }
                   Keys.onLeftPressed: wolf.focus=true
                   Keys.onRightPressed: sonofgod.focus=true
//                   Keys.onPressed:{
//                       if(event.key===Qt.Key_Left){
//                           focus=true
//                           hobbit.scale=1.2
//                       }else if(event.key===Qt.Key_Right){
//                           focus:true
//                           hobbit.scale=1.2
//                       }

                }



               Text{
                   width:parent.width
                   height:50
                   anchors.top: parent.bottom
                   anchors.left:parent.left
                   text:'Hobbit 2011'
                   color: 'white'


               }
           }


           Rectangle{
               id:rect2
               width: parent.width/5-row.spacing/5
               height:parent.height
               color:'transparent'
               Image{
                   id:sonofgod
                   fillMode: Image.PreserveAspectFit
                   anchors.fill: parent
                   source:'qrc:sonofgod.jpg'
                   scale:focus?1.2:1
                   MouseArea{
                       id:area2
                       width:parent.width
                       height: parent.height
                       anchors.fill:parent
                       hoverEnabled: true

                       onEntered: {
                                 //sonofgod.scale=1.2
                                   sonofgod.focus=true

                              }

                       onExited: {
                                 // sonofgod.scale=1
                                    sonofgod.focus=false
                              }
                   }
                   Keys.onLeftPressed: hobbit.focus=true
                   Keys.onRightPressed: ridealong.focus=true




               }
               Text{
                   width:parent.width
                   height:50
                   anchors.top: parent.bottom
                   anchors.left:parent.left
                   text:'Son Of God 2013'
                   color: 'white'


               }
           }
           Rectangle{
               id:rect3
               width: parent.width/5-row.spacing/5
               height:parent.height
               color:'transparent'
               Image{
                   id:ridealong
                   fillMode: Image.PreserveAspectFit
                   anchors.fill: parent
                   source:'qrc:ridealong.jpg'
                   scale:focus?1.2:1


                   MouseArea{
                       id:area3
                       width:parent.width
                       height: parent.height
                       anchors.fill:parent
                       hoverEnabled: true

                       onEntered: {
                                 //ridealong.scale=1.2
                                   ridealong.focus=true

                              }

                       onExited: {
                                 // ridealong.scale=1
                                    ridealong.focus=false
                              }
                   }
                   Keys.onLeftPressed: sonofgod.focus=true
                   Keys.onRightPressed: tarzan.focus=true
               }
               Text{
                   width:parent.width
                   height:50
                   anchors.top: parent.bottom
                   anchors.left:parent.left
                   text:'Ride Along 2015'
                   color: 'white'


               }
           } Rectangle{
               id:rect4
               width: parent.width/5-row.spacing/5
               height:parent.height
               color:'transparent'
               Image{
                   id: tarzan
                   fillMode: Image.PreserveAspectFit
                   anchors.fill: parent
                   source:'qrc:tarzan.jpg'
                   scale:focus?1.2:1
                   MouseArea{
                       id:area4
                       width:parent.width
                       height: parent.height
                       anchors.fill:parent
                       hoverEnabled: true

                       onEntered: {
                                 tarzan.scale=1.2

                              }

                       onExited: {
                                  tarzan.scale=1
                              }


                   }
                   Keys.onLeftPressed: ridealong.focus=true
                   Keys.onRightPressed: wolf.focus=true
               }
               Text{
                   width:parent.width
                   height:50
                   anchors.top: parent.bottom
                   anchors.left:parent.left
                   text:'Tarzan 2014'
                   color: 'white'
                }
           } Rectangle{
               id:rect5
               width: parent.width/5-row.spacing/5
               height:parent.height
               color: 'transparent'
               Image{
                   id: wolf
                   fillMode: Image.PreserveAspectFit
                   anchors.fill: parent
                   source:'qrc:wolf.jpg'
                   scale:focus?1.2:1
                   MouseArea{
                       id:area5
                       width:parent.width
                       height: parent.height
                       anchors.fill:parent
                       hoverEnabled: true

                       onEntered: {
                                 //wolf.scale=1.2
                                   wolf.focus=true

                              }

                       onExited: {
                                  //wolf.scale=1
                                    wolf.focus=false
                              }
                   }
                   Keys.onLeftPressed: tarzan.focus=true
                   Keys.onRightPressed: hobbit.focus=true
               }
               Text{
                   width:parent.width
                   height:50
                   anchors.top: parent.bottom
                   anchors.left:parent.left
                   text:'The Wolf of Wallstreet 2020'
                   color: 'white'


               }
           }
         }
      }

  }


