import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.3
import "../"
BasePage {
    id:accountPage
    anchors.fill: parent

    ColumnLayout {
        id:content
        anchors.centerIn: parent
        width: implicitWidth
        height: implicitHeight
        Rectangle {
            width: label.width + 30
            height: label.height + 30
            color: "transparent"
            Layout.alignment: Qt.AlignHCenter
            Label {
                id:label
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Create an account"
                font.pixelSize: 23
                color: Helpers.mainColor
            }
        }
        CreateAccountForm {
            width: implicitWidth
            height: implicitHeight
        }
        Button {            
            width: content.width
            Layout.topMargin: 10
            Layout.fillWidth: true
            text: "Accept"
            Material.background: Material.Blue
            Material.foreground: "white"
            onClicked: {
                 startUpView.push("qrc:/content/CategorySelectionPage.qml")
            }
        }
    }
}
