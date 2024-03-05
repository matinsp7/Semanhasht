import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Shapes 1.15
import QtQuick.Layouts

Item {

    property int v: 59

    ListModel {
        id: vertexName

        ListElement {text: "Bimeh"; x: 10; y: 820}
        ListElement {text: "Meydan-e Azadi"; x: 200; y: 785}
        ListElement {text: "Eram-e Sabz"; x: 200; y: 640}
        ListElement {text: "Allameh Jafari"; x: 180; y: 480}
        ListElement {text: "Kashani"; x: 250; y: 280}
        ListElement {text: "Chaharbagh"; x: 290; y: 10}
        ListElement {text: "Ostad Mo'in"; x: 390; y: 780}
        ListElement {text: "Shademan"; x: 490; y: 780}
        ListElement {text: "Towhid"; x: 600; y: 780}
        ListElement {text: "Meydan-e Enghelab-e Eslami"; x: 680; y: 885}
        ListElement {text: "Teatr-e Shahr"; x: 832; y: 780}
        ListElement {text: "Ferdowsi"; x: 1015; y: 780}
        ListElement {text: "Darvazeh Dowlat"; x: 1182; y: 960}
        ListElement {text: "Darvazeh Shemiran"; x: 1300; y: 875}
        ListElement {text: "Meydan-e Shohada"; x: 1350; y: 1060}
        ListElement {text: "Ebn-e Sina"; x: 1550; y: 1060}
        ListElement {text: "Pirouzi"; x: 1670; y: 980}
        ListElement {text: "Nabard"; x: 1800; y: 980}
        ListElement {text: "Nirou Havaei"; x: 1880; y: 980}
        ListElement {text: "Shahid Kolahdouz"; x: 2070; y: 1020}
        ListElement {text: "Kouhsar"; x: 5; y: 320}
        ListElement {text: "Yadegar-e Emam"; x: 450; y: 280}
        ListElement {text: "Boostan-e laleh"; x: 565; y: 630}
        ListElement {text: "Meydan-e Hazrat-e ValiAsr"; x: 732; y: 630; z: 10}
        ListElement {text: "Haftom-e Tir"; x: 1050; y: 650}
        ListElement {text: "Emam Hossein"; x: 1520; y: 740}
        ListElement {text: "Tehran Pars"; x: 2070; y: 1170}
        ListElement {text: "Shahid Rezaei"; x: 1390; y: 1320; z: 10}
        ListElement {text: "Payaneh Javanmard"; x: 1290; y: 1620}
        ListElement {text: "Haram-e Hazrat-e Abdolazim"; x: 1940; y: 1620}
        ListElement {text: "Gha'em"; x: 2075; y: 370}
        ListElement {text: "Aghdasiyeh"; x: 1720; y: 420}
        ListElement {text: "Shahid Zeynoddin"; x: 1540; y: 420}
        ListElement {text: "Shahid Ghodousi"; x: 1300; y: 350}
        ListElement {text: "Sohrevardi"; x: 1270; y: 570}
        ListElement {text: "Khajeh Abdollah-e Ansari"; x: 1445; y: 260}
        ListElement {text: "Shahid Beheshti"; x: 1040; y: 490}
        ListElement {text: "Shahid Mofatteh"; x: 1015; y: 600}
        ListElement {text: "Shahid Haghani"; x: 1020; y: 420; z: 10}
        ListElement {text: "Mirdamad"; x: 1075; y: 265}
        ListElement {text: "Gholhak"; x: 1060; y: 210}
        ListElement {text: "Gheytariyeh"; x: 1040; y: 130}
        ListElement {text: "Tajrish"; x: 1145; y: 5}
        ListElement {text: "Shahid Sadr"; x: 825; y: 160}
        ListElement {text: "merza-ye Shirazi"; x: 885; y: 480; z: 10}
        ListElement {text: "Meydan-e Jahad"; x: 785; y: 550; z: 10}
        ListElement {text: "Taleghani"; x: 1095; y: 780}
        ListElement {text: "Shahrak'e Shari'ati"; x: 690; y: 1620}
        ListElement {text: "Azadegan"; x: 900; y: 1620}
        ListElement {text: "Kahrizak"; x: 1140; y: 1620}
        ListElement {text: "Zamzam"; x: 835; y: 1470}
        ListElement {text: "Shahr'e Rey"; x: 1050; y: 1470}
        ListElement {text: "Javadiyeh"; x: 825; y: 1370; z: 10}
        ListElement {text: "Jonoub Terminal"; x: 1010; y: 1370; z: 10}
        ListElement {text: "Shoush"; x: 1070; y: 1220; z: 10}
        ListElement {text: "Rahahan"; x: 840; y: 1240; z: 10}
        ListElement {text: "Mahdiyeh"; x: 820; y: 1170; z: 10}
        ListElement {text: "Panzdah-e Khordad"; x: 1000; y: 1120; z: 10}
        ListElement {text: "Moniriyeh"; x: 825; y: 1070; z: 10}
    }

    ListModel {
        id: graphData

        ListElement { name: "s0"; x: 65; y: 800; vcolor: "#009688"; text: "BUS 1"; tcolor: "black"}
        ListElement { name: "s1"; x: 300; y: 800; vcolor: "#9E9E9E"}
        ListElement { name: "s2"; x: 300; y: 620; vcolor: "#9E9E9E"}
        ListElement { name: "s3"; x: 300; y: 460; vcolor: "#9E9E9E"}
        ListElement { name: "s4"; x: 300; y: 300; vcolor: "#9E9E9E"}
        ListElement { name: "s5"; x: 300; y: 30; vcolor: "#9E9E9E"; text: "Line 4"; tcolor: "yellow"}
        ListElement { name: "s6"; x: 400; y: 800; vcolor: "#9E9E9E"}
        ListElement { name: "s7"; x: 500; y: 800; vcolor: "#9E9E9E"}
        ListElement { name: "s8"; x: 600; y: 800; vcolor: "#9E9E9E"}
        ListElement { name: "s9"; x: 750; y: 800; vcolor: "#9E9E9E"}
        ListElement { name: "s10"; x: 900; y: 800; vcolor: "#9E9E9E"}
        ListElement { name: "s11"; x: 1020; y: 800; vcolor: "#9E9E9E"}
        ListElement { name: "s12"; x: 1140; y: 900; vcolor: "#9E9E9E"}
        ListElement { name: "s13"; x: 1300; y: 900; vcolor: "#9E9E9E"}
        ListElement { name: "s14"; x: 1460; y: 1000; vcolor: "#9E9E9E"}
        ListElement { name: "s15"; x: 1600; y: 1000; vcolor: "#9E9E9E"}
        ListElement { name: "s16"; x: 1700; y: 1000; vcolor: "#9E9E9E"}
        ListElement { name: "s17"; x: 1800; y: 1000; vcolor: "#9E9E9E"}
        ListElement { name: "s18"; x: 1900; y: 1000; vcolor: "#9E9E9E"}
        ListElement { name: "s19"; x: 2000; y: 1000; vcolor: "#9E9E9E"}
        ListElement { name: "s20"; x: 65; y: 300; vcolor: "#9E9E9E"; text: "Line 6"; tcolor: "#E91E63"}
        ListElement { name: "s21"; x: 470; y: 300; vcolor: "#9E9E9E"}
        ListElement { name: "s22"; x: 655; y: 650; vcolor: "#9E9E9E"}
        ListElement { name: "s23"; x: 900; y: 650; z:5; vcolor: "#9E9E9E"}
        ListElement { name: "s24"; x: 1140; y: 650; vcolor: "#9E9E9E"}
        ListElement { name: "s25"; x: 1460; y: 740; vcolor: "#9E9E9E"}
        ListElement { name: "s26"; x: 2000; y: 1150; vcolor: "#009688"; text: "BUS 1"; tcolor: "black"}
        ListElement { name: "s27"; x: 1460; y: 1260; vcolor: "#9E9E9E"}
        ListElement { name: "s28"; x: 1320; y: 1550; vcolor: "#009688"; text: "BUS 2"; tcolor: "black"}
        ListElement { name: "s29"; x: 2000; y: 1550; vcolor: "#9E9E9E"; text: "Line 6"; tcolor: "#E91E63"}
        ListElement { name: "s30"; x: 2000; y: 350; vcolor: "#9E9E9E"; text: "Line 3"; tcolor: "blue"}
        ListElement { name: "s31"; x: 1730; y: 350; vcolor: "#9E9E9E"}
        ListElement { name: "s32"; x: 1570; y: 350; vcolor: "#9E9E9E"}
        ListElement { name: "s33"; x: 1420; y: 350; vcolor: "#9E9E9E"}
        ListElement { name: "s34"; x: 1280; y: 500; vcolor: "#9E9E9E"}
        ListElement { name: "s35"; x: 1500; y: 280; vcolor: "#009688"; text: "Bus 2"; tcolor: "black"}
        ListElement { name: "s36"; x: 1140; y: 500; vcolor: "#9E9E9E"}
        ListElement { name: "s37"; x: 1140; y: 580; vcolor: "#9E9E9E"}
        ListElement { name: "s38"; x: 1140; y: 400; vcolor: "#9E9E9E"}
        ListElement { name: "s39"; x: 1140; y: 270; vcolor: "#9E9E9E"}
        ListElement { name: "s40"; x: 1140; y: 190; vcolor: "#9E9E9E"}
        ListElement { name: "s41"; x: 1140; y: 110; vcolor: "#9E9E9E"}
        ListElement { name: "s42"; x: 1140; y: 25; vcolor: "#9E9E9E"}
        ListElement { name: "s43"; x: 930; y: 140; vcolor: "#009688"; text: "Bus 3"; tcolor: "black"}
        ListElement { name: "s44"; x: 985; y: 500; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s45"; x: 900; y: 560; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s46"; x: 1140; y: 800; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s47"; x: 720; y: 1550; z: 5; vcolor: "#009688"; text: "Bus 3"; tcolor: "black"}
        ListElement { name: "s48"; x: 900; y: 1550; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s49"; x: 1140; y: 1550; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s50"; x: 900; y: 1450; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s51"; x: 1140; y: 1450; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s52"; x: 900; y: 1350; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s53"; x: 1140; y: 1350; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s54"; x: 1140; y: 1200; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s55"; x: 900; y: 1250; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s56"; x: 900; y: 1150; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s57"; x: 1140; y: 1100; z: 5; vcolor: "#9E9E9E"}
        ListElement { name: "s58"; x: 900; y: 1050; z: 5; vcolor: "#9E9E9E"}
    }

    ListModel {
        id: edgeData

        ListElement {s: 0; e: 1; color: "green"; sx: 127; sy: 830; px:298; py: 830; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 1; e: 2; color: "yellow"; sx: 330; sy: 682; px:330; py: 798; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 1; e: 6; color: "yellow"; sx: 362; sy: 830; px: 398; py: 830; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 1; e: 6; color: "green"; sx: 330; sy: 875; px: 430; py: 875; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 2; e: 3; color: "yellow"; sx: 330; sy: 522; px: 330; py: 618; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 3; e: 4; color: "yellow"; sx: 330; sy: 362; px:330; py: 458; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 4; e: 5; color: "yellow"; sx: 330; sy: 92; px:330; py: 298; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 4; e: 20; color: "#E91E63"; sx: 127; sy: 330; px: 298; py: 330; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 4; e: 21; color: "#E91E63"; sx: 362; sy: 330; px: 468; py: 330; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 6; e: 7; color: "yellow"; sx: 462; sy: 830; px: 498; py: 830; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 6; e: 9; color: "green"; sx: 430; sy: 875; px: 780; py: 875; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 7; e: 8; color: "yellow"; sx: 562; sy: 830; px: 598; py: 830; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 8; e: 9; color: "yellow"; sx: 662; sy: 830; px: 748; py: 830; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 9; e: 10; color: "yellow"; sx: 812; sy: 830; px: 898; py: 830; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 9; e: 11; color: "green"; sx: 780; sy: 875; px: 1050; py: 875; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 10; e: 11; color: "yellow"; sx: 962; sy: 830; px: 1018; py: 830; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 10; e: 23; color: "blue"; sx: 930; sy: 800; px: 930; py: 711; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 10; e: 58; color: "blue"; sx: 930; sy: 861; px: 930; py: 1051; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 12; e: 13; color: "yellow"; sx: 1202; sy: 930; px: 1298; py: 930; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 12; e: 46; color: "red"; sx: 1170; sy: 900; px: 1170; py: 861; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 12; e: 57; color: "red"; sx: 1170; sy: 1201; px: 1170; py: 961; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 14; e: 15; color: "yellow"; sx: 1522; sy: 1030; px: 1598; py: 1030; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 14; e: 25; color: "#E91E63"; sx: 1490; sy: 1000; px: 1490; py: 800; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 14; e: 27; color: "#E91E63"; sx: 1490; sy: 1060; px: 1490; py: 1260; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 15; e: 16; color: "yellow"; sx: 1662; sy: 1030; px: 1698; py: 1030; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 16; e: 17; color: "yellow"; sx: 1762; sy: 1030; px: 1798; py: 1030; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 17; e: 18; color: "yellow"; sx: 1862; sy: 1030; px: 1898; py: 1030; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 18; e: 19; color: "yellow"; sx: 1962; sy: 1030; px: 1998; py: 1030; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 22; e: 23; color: "#E91E63"; sx: 717; sy: 680; px: 898; py: 680; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 23; e: 24; color: "#E91E63"; sx: 962; sy: 680; px: 1138; py: 680; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 23; e: 45; color: "blue"; sx: 930; sy: 650; px: 930; py: 620; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 24; e: 37; color: "red"; sx: 1170; sy: 649; px: 1170; py: 641; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 24; e: 46; color: "red"; sx: 1170; sy: 711; px: 1170; py: 799; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 30; e: 31; color: "blue"; sx: 2000; sy: 380; px: 1790; py: 380; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 31; e: 32; color: "blue"; sx: 1730; sy: 380; px: 1630; py: 380; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 32; e: 33; color: "blue"; sx: 1570; sy: 380; px: 1480; py: 380; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 34; e: 36; color: "blue"; sx: 1280; sy: 530; px: 1201; py: 530; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 36; e: 37; color: "red"; sx: 1170; sy: 561; px: 1170; py: 579; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 36; e: 38; color: "red"; sx: 1170; sy: 500; px: 1170; py: 461; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 36; e: 44; color: "blue"; sx: 1140; sy: 530; px: 1045; py: 530; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 38; e: 39; color: "red"; sx: 1170; sy: 400; px: 1170; py: 331; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 39; e: 40; color: "red"; sx: 1170; sy: 270; px: 1170; py: 251; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 40; e: 41; color: "red"; sx: 1170; sy: 190; px: 1170; py: 171; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 41; e: 42; color: "red"; sx: 1170; sy: 110; px: 1170; py: 86; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 48; e: 50; color: "blue"; sx: 930; sy: 1549; px: 930; py: 1511; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 49; e: 51; color: "red"; sx: 1170; sy: 1549; px: 1170; py: 1511; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 50; e: 52; color: "blue"; sx: 930; sy: 1449; px: 930; py: 1411; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 51; e: 53; color: "red"; sx: 1170; sy: 1449; px: 1170; py: 1411; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 52; e: 55; color: "blue"; sx: 930; sy: 1349; px: 930; py: 1311; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 52; e: 55; color: "blue"; sx: 930; sy: 1349; px: 930; py: 1311; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 53; e: 54; color: "red"; sx: 1170; sy: 1349; px: 1170; py: 1261; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 54; e: 57; color: "red"; sx: 1170; sy: 1199; px: 1170; py: 1161; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 55; e: 56; color: "blue"; sx: 930; sy: 1249; px: 930; py: 1211; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 56; e: 58; color: "blue"; sx: 930; sy: 1149; px: 930; py: 1111; strokeStyle: 1; strokeWidth: 4}
    }

    ListModel {
        id: edgeDataP

        ListElement {s: 11; e: 12; color: "yellow"; z:2; x1: 1082; y1: 830; x2: 1102; y2: 830; x3: 1102; y3: 930; x4: 1138; y4: 930; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 11; e: 12; color: "green"; x1: 1050; y1: 869; x2: 1050; y2: 969; x3: 1170; y3: 969; x4: 1170; y4: 969; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 12; e: 25; color: "green"; x1: 1202; y1: 930; x2: 1260; y2: 930; x3: 1260; y3: 770; x4: 1458; y4: 770; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 13; e: 14; color: "yellow"; x1: 1362; y1: 930; x2: 1412; y2: 930; x3: 1412; y3: 1030; x4: 1458; y4: 1030; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 15; e: 25; color: "green"; x1: 1522; y1: 770; x2: 1630; y2: 770; x3: 1630; y3: 998; x4: 1630; y4: 1000; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 15; e: 26; color: "green"; x1: 1630; y1: 1060; x2: 1630; y2: 1180; x3: 2000; y3: 1180; x4: 2000; y4: 1180; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 16; e: 27; color: "#FFE082"; x1: 1520; y1: 1290; x2: 1730; y2: 1290; x3: 1730; y3: 1060; x4: 1730; y4: 1060; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 16; e: 30; color: "#FFE082"; x1: 1730; y1: 998; x2: 1730; y2: 680; x3: 2030; y3: 680; x4: 2030; y4: 410; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 21; e: 22; color: "#E91E63"; x1: 532; y1: 330; x2: 685; y2: 330; x3: 685; y3: 648; x4: 685; y4: 648; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 23; e: 39; color: "black"; x1: 900; y1: 680; x2: 730; y2: 680; x3: 730; y3: 300; x4: 1140; y4: 300; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 23; e: 55; color: "black"; x1: 961; y1: 680; x2: 986; y2: 680; x3: 986; y3: 1280; x4: 961; y4: 1280; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 24; e: 25; color: "#E91E63"; x1: 1202; y1: 680; x2: 1490; y2: 680; x3: 1490; y3: 740; x4: 1490; y4: 740; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 27; e: 28; color: "#FFE082"; x1: 1460; y1: 1290; x2: 1350; y2: 1290; x3: 1350; y3: 1550; x4: 1350; y4: 1550; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 27; e: 29; color: "#E91E63"; x1: 1490; y1: 1320; x2: 1490; y2: 1580; x3: 2000; y3: 1580; x4: 2000; y4: 1580; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 30; e: 35; color: "#FFE082"; x1: 2030; y1: 348; x2: 2030; y2: 310; x3: 1562; y3: 310; x4: 1562; y4: 310; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 33; e: 34; color: "blue"; x1: 1420; y1: 380; x2: 1380; y2: 380; x3: 1380; y3: 530; x4: 1340; y4: 530; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 39; e: 42; color: "black"; x1: 1201; y1: 300; x2: 1221; y2: 300; x3: 1221; y3: 55; x4: 1201; y4: 55; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 42; e: 43; color: "black"; x1: 1140; y1: 55; x2: 960; y2: 55; x3: 960; y3: 140; x4: 960; y4: 140; strokeStyle: 2; strokeWidth: 4}
        ListElement {s: 44; e: 45; color: "blue"; x1: 985; y1: 530; x2: 930; y2: 530; x3: 930; y3: 559; x4: 930; y4: 559; strokeStyle: 1; strokeWidth: 4}
        ListElement {s: 47; e: 55; color: "black"; x1: 750; y1: 1550; x2: 750; y2: 1280; x3: 899; y3: 1280; x4: 899; y4: 1280; strokeStyle: 2; strokeWidth: 4}
    }



    StackView {

        anchors.fill: parent
        ScrollView {
            width: parent.width
            height: parent.height
            contentHeight: parent.height*3
            contentWidth: parent.width*1.8
            clip: true
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOn
            ScrollBar.horizontal.interactive: true
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            ScrollBar.vertical.interactive: true

            Repeater {
                model: vertexName

                delegate: Label {
                    text: model.text
                    x: model.x
                    y: model.y
                    z: model.z
                    font.bold: true
                    //color: "white"
                }
            }

            Repeater {
                model: graphData

                delegate: Rectangle {
                    width: 60
                    height: 60
                    radius: 30
                    color: (c1 !== model.index && c2 !== model.index ) ? model.vcolor : "purple"
                    border.color: "black"
                    x: model.x
                    y: model.y
                    z: model.z
                    Text {
                        anchors.centerIn: parent
                        text: model.text
                        color: model.tcolor
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked:{
                            if (c1 === -1){
                                c1 = model.index
                                drawer.open()
                            }
                            else {
                                if (c1 === model.index && c2 === -1){
                                    c1 = -1
                                }
                                else if (c2 === model.index){
                                    c2 = -1
                                }
                                else if(c1 !== model.index){
                                    c2 = model.index
                                }
                            }
                            start = c1 != -1 ? vertexName.get(c1).text : ""
                            end = c2 != -1 ? vertexName.get(c2).text : ""
                        }
                    }
                }
            }

            Repeater {
                model: edgeData

                delegate: Shape {
                    ShapePath {
                        strokeWidth: model.strokeWidth
                        strokeColor: model.color
                        strokeStyle: model.strokeStyle === 1 ? ShapePath.SolidLine : ShapePath.DashLine
                        startX: model.sx
                        startY: model.sy
                        PathLine {
                            x: model.px
                            y: model.py
                        }
                    }
                }
            }

            Repeater {
                model: edgeDataP

                delegate: Shape {
                    ShapePath {
                        fillColor: "white"//"#212128"//"#212128"
                        strokeWidth: model.strokeWidth
                        strokeColor: model.color
                        strokeStyle: model.strokeStyle === 1 ? ShapePath.SolidLine : ShapePath.DashLine
                        PathPolyline {
                            path: [
                                Qt.point(model.x1 , model.y1),
                                Qt.point(model.x2 , model.y2),
                                Qt.point(model.x3 , model.y3),
                                Qt.point(model.x4 , model.y4)
                            ]
                        }
                    }
                }
            }


            Shape { ShapePath {
                    strokeWidth: 4
                    strokeColor: "green";
                    strokeStyle: ShapePath.DashLine
                    startX: 330;
                    startY: 860;
                    PathLine {
                        x:330;
                        y: 869;
                    }
                }
            }
            Shape { ShapePath {
                    strokeWidth: 4
                    strokeColor: "green";
                    strokeStyle: ShapePath.DashLine
                    startX: 430;
                    startY: 860;
                    PathLine {
                        x:430;
                        y: 869;
                    }
                }
            }
            Shape { ShapePath {
                    strokeWidth: 4
                    strokeColor: "green";
                    strokeStyle: ShapePath.DashLine
                    startX: 780;
                    startY: 860;
                    PathLine {
                        x: 780;
                        y: 869;
                    }
                }
            }
            Shape { ShapePath {
                    strokeWidth: 4
                    strokeColor: "green";
                    strokeStyle: ShapePath.DashLine
                    startX: 1050;
                    startY: 860;
                    PathLine {
                        x: 1050;
                        y: 869;
                    }
                }
            }
            Shape { ShapePath {
                    strokeWidth: 4
                    strokeColor: "green";
                    strokeStyle: ShapePath.DashLine
                    startX: 1170;
                    startY: 960;
                    PathLine {
                        x: 1170;
                        y: 969;
                    }
                }
            }

            Rectangle {
                id: hb1
                width: 60
                height: 60
                radius: 30
                color: "#9E9E9E"
                border.color: "black"
                x: 65
                y: 1550
            }

            Shape {
                id: hb1tohb2
                ShapePath {
                    strokeWidth: 4
                    strokeColor: "black"
                    strokeStyle: ShapePath.SolidLine
                    startX: hb1.x + hb1.radius*2
                    startY: hb1.y + hb1.radius
                    PathLine {
                        x: hb2.x
                        y: hb2.y + hb2.radius
                    }
                }
            }

            Label {
                text: "Taxi and subway Line"
                anchors.left: hb1.right
                anchors.leftMargin: 50
                anchors.top: hb1.top
                color: "black"
                font.bold: true
            }

            Rectangle {
                id: hb2
                width: 60
                height: 60
                radius: 30
                color: "#9E9E9E"
                border.color: "black"
                x: 365
                y: 1550
                z: 10
            }
        }

        Button {
            id: directionBt
            text: "Directions"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
            Material.background: Material.Blue
            width: 200
            height: 70
            visible: (c1 != -1) && (c2 != -1) ? true : false
            onClicked: {
                semanhasht.direction(c1, c2)
                directionBt.visible = false
                pathSel.visible = true
                mas.visible = true
                masir.text = semanhasht.print_path()
            }
        }

        Rectangle {
            id : pathSel
            width: 270
            height: 50
            radius: 5
            color: "#00BCD4"//"#E91E63"//"#212128"
            visible: false
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.bottomMargin: 30
            anchors.rightMargin: 30
            RadioButton {
                id: timePath
                anchors.left: parent.left
                anchors.leftMargin: 5
                checked: true
                text: qsTr("time")
                contentItem: Text {
                    text: timePath.text
                    color: "white"
                    leftPadding: timePath.indicator.width + timePath.spacing
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                }
                onClicked: semanhasht.show_path(c1, c2, 3)
            }
            RadioButton {
                id: costPath
                anchors.left: timePath.right
                anchors.leftMargin: 8
                text: qsTr("cost")
                contentItem: Text {
                    text: costPath.text
                    color: "white"
                    leftPadding: costPath.indicator.width + costPath.spacing
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                }
                onClicked:{
                    semanhasht.show_path(c1, c2, 2)
                }
            }
            RadioButton {
                id: disPath
                anchors.left: costPath.right
                //anchors.leftMargin: 100
                text: qsTr("distance")
                contentItem: Text {
                    text: disPath.text
                    color: "white"
                    leftPadding: disPath.indicator.width + disPath.spacing
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                }
            }
        }

        Component.onCompleted: {
            for(var i=0; i<edgeData.count ; i++){
                semanhasht.set_objects(edgeData.get(i), edgeData.get(i).s, edgeData.get(i).e)
                //console.log(i)
            }
            for(var j=0; j<edgeDataP.count ; j++){
                semanhasht.set_objects(edgeDataP.get(j), edgeDataP.get(j).s, edgeDataP.get(j).e)
            }
            for (var k=0; k<vertexName.count; k++){
                semanhasht.set_map(vertexName.get(k).text, k);
            }
        }
    }
}
