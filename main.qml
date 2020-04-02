import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3

//file that displays the main calendar view
Window {
    visible: true
    width: 600
    height: 600
    title: qsTr("Calendar")
    id: rootId

    //rectangle used to create the main screen
    Rectangle
    {
        id: calendarScreenId
        width: parent.width
        height: parent.height
        visible: true



        //rectangle used to create the left sidebar
        Rectangle {
            id: graphSidebarId
            width: rootId.width * (2/10)
            height: rootId.height
            color: "#1aff01"

            //text used to title the mood monthly stats contains text "Monthly Progress"

            Text {
                id: moodTitleId
                width: parent.width
                height: parent.height / 10


                horizontalAlignment: Text.AlignHCenter
                anchors.left: parent.left

                text: qsTr("Monthly Progress")
                font.pointSize: parent.width / 8
                wrapMode: Text.WordWrap
            }

            Rectangle
            {
                id: alignmentRect
                width: moodTitleId.implicitWidth
                height: moodTitleId.implicitHeight
                color: "transparent"
            }

            ColumnLayout
            {
                id: emoticonsColumnId
                x: 0.02604 * graphSidebarId.width
                anchors.top: alignmentRect.bottom

                Image
                {
                    id: joyId
                    source: "emoticons/joy.png"
                    Layout.preferredHeight: graphSidebarId.height / 14
                    Layout.preferredWidth: Layout.preferredHeight


                }

                Image
                {
                    id: happyId
                    source: "emoticons/happy.png"
                    Layout.preferredHeight: graphSidebarId.height / 14
                    Layout.preferredWidth: Layout.preferredHeight
                }

                Image
                {
                    id: sadId
                    source: "emoticons/sad.png"
                    Layout.preferredHeight: graphSidebarId.height / 14
                    Layout.preferredWidth: Layout.preferredHeight
                }

                Image
                {
                    id: worryId
                    source: "emoticons/worry.png"
                    Layout.preferredHeight: graphSidebarId.height / 14
                    Layout.preferredWidth: Layout.preferredHeight
                }

                Image
                {
                    id: fearfulId
                    source: "emoticons/fearful.png"
                    Layout.preferredHeight: graphSidebarId.height / 14
                    Layout.preferredWidth: Layout.preferredHeight
                }

                Image
                {
                    id: angerId
                    source: "emoticons/anger.png"
                    Layout.preferredHeight: graphSidebarId.height / 14
                    Layout.preferredWidth: Layout.preferredHeight
                }


            }

            Text
            {
                id: physcialActivityTitleId
                width: moodTitleId.width
                height: moodTitleId.height

                anchors.top: emoticonsColumnId.bottom
                anchors.left: parent.left
                horizontalAlignment: Text.AlignHCenter

                text: qsTr("Physical Activity")
                font.pointSize: moodTitleId.font.pointSize / 1.2
                wrapMode: Text.WordWrap
            }

            ColumnLayout
            {
                x: 0.02604 * graphSidebarId.width
                anchors.top: emoticonsColumnId.bottom
                anchors.topMargin: physcialActivityTitleId.implicitHeight

                Text
                {
                    id: mondayTextId
                    Layout.preferredWidth: graphSidebarId.height / 27
                    Layout.preferredHeight: Layout.preferredWidth

                    text: qsTr("Mon")
                    font.pointSize: graphSidebarId.height / 29
                }

                Text
                {
                    id: tuesdayTextId
                    Layout.preferredWidth: graphSidebarId.height / 27
                    Layout.preferredHeight: Layout.preferredWidth

                    text: qsTr("Tues")
                    font.pointSize: graphSidebarId.height / 29
                }

                Text
                {
                    id: wednesdayTextId
                    Layout.preferredWidth: graphSidebarId.height / 27
                    Layout.preferredHeight: Layout.preferredWidth

                    text: qsTr("Wed")
                    font.pointSize: graphSidebarId.height / 29
                }

                Text
                {
                    id: thursdayTextId
                    Layout.preferredWidth: graphSidebarId.height / 27
                    Layout.preferredHeight: Layout.preferredWidth

                    text: qsTr("Thu")
                    font.pointSize: graphSidebarId.height / 29
                }

                Text
                {
                    id: fridayTextId
                    Layout.preferredWidth: graphSidebarId.height / 27
                    Layout.preferredHeight: Layout.preferredWidth

                    text: qsTr("Fri")
                    font.pointSize: graphSidebarId.height / 29
                }

                Text
                {
                    id: saturdayTextId
                    Layout.preferredWidth: graphSidebarId.height / 27
                    Layout.preferredHeight: Layout.preferredWidth

                    text: qsTr("Sat")
                    font.pointSize: graphSidebarId.height / 29
                }

                Text
                {
                    id: sundayTextId
                    Layout.preferredWidth: graphSidebarId.height / 27
                    Layout.preferredHeight: Layout.preferredWidth

                    text: qsTr("Sun")
                    font.pointSize: graphSidebarId.height / 29
                }
            }

        }





        //built in calendar QML type that displays the current month with default Calendar behavior
        Calendar
        {
            id: calendarId
            width: parent.width * (8/10)
            height: parent.height

            anchors.right: parent.right

            onClicked:
            {
                enterInputRectId.visible = true
            }

        }

        Rectangle
        {
            id: enterInputRectId
            anchors.fill: calendarScreenId
            color: "transparent"
            anchors.centerIn: calendarId

            //this mouse area represents the outside of the popup rectangle and exits the popup when clicked
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {

                    enterInputRectId.visible = false
                }
            }

            Rectangle
            {
                id: dayRectId
                width: parent.height * 0.75
                height: parent.height * 0.75
                color: "blue"
                anchors.centerIn: parent

                //this mouse area represents the popup rectangle
                MouseArea
                {
                    anchors.fill: parent
                }

            }

            visible: false
        }
    }
}

