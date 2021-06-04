import 'package:flutter/material.dart';
import 'package:islam_guide/home.dart';
import 'package:islam_guide/namaz%20time/namaz_home.dart';

class DropDown extends StatefulWidget {
  @override
  DropDownState createState() => DropDownState();
}

class DropDownState extends State<DropDown> {
  String _selectedCity;
  String _selectedState;
  String value = "";
  bool disableddropdown = true;

  // ignore: deprecated_member_use
  List<DropdownMenuItem<String>> menuitems = List();

  final state1 = {
    "1": "Port Blair",
  };

  final state2 = {
    "1": "Adoni",
    "2": "Amaravati",
    "3": "Anantapur",
    "4": "Chandragiri",
    "5": "Chittoor",
    "6": "Dowlaiswaram",
    "7": "Eluru",
    "8": "Guntur",
    "9": "Kadapa",
    "10": "Kakinada",
    "11": "Kurnool",
    "12": "Machilipatnam",
    "13": "Nagarjunakonda",
    "14": "Rajahmundry",
    "15": "Srikakulam",
    "16": "Tirupati",
    "17": "Vijayawada",
    "18": "Visakhapatnam",
    "19": "Vizianagaram",
    "20": "Yemmiganur",
  };

  final state3 = {
    "1": "Itanagar",
  };

  final state4 = {
    "1": "Dhuburi",
    "2": "Dibrugarh",
    "3": "Dispur",
    "4": "Guwahati",
    "5": "Jorhat",
    "6": "Nagaon",
    "7": "Sibsagar",
    "8": "Silchar",
    "9": "Tezpur",
    "10": "Tinsukia"
  };

  final state5 = {
    "1": "Ara",
    "2": "Baruni",
    "3": "Begusarai",
    "4": "Bettiah",
    "5": "Bhagalpur",
    "6": "Bihar Sharif",
    "7": "Bodh Gaya",
    "8": "Buxar",
    "9": "Chapra",
    "10": "Darbhanga",
    "11": "Dehri",
    "12": "Dinapur Nizamat",
    "13": "Gaya",
    "14": "Hajipur",
    "15": "Jamalpur",
    "16": "Katihar",
    "17": "Madhubani",
    "18": "Motihari",
    "19": "Munger",
    "20": "Muzaffarpur",
    "21": "Patna",
    "22": "Purnia",
    "23": "Pusa",
    "24": "Saharsa",
    "25": "Samastipur",
    "26": "Sasaram",
    "27": "Sitamarhi",
    "28": "Siwan"
  };

  final state6 = {
    "1": "Chandigarh",
  };

  final state7 = {
    "1": "Ambikapur",
    "2": "Bhilai",
    "3": "Bilaspur",
    "4": "Dhamtari",
    "5": "Durg",
    "6": "Jagdalpur",
    "7": "Raipur",
    "8": "Rajnandgaon",
  };

  final state8 = {
    "1": "Sivassa",
  };

  final state9 = {"1": "Daman", "2": "Diu"};

  final state10 = {"1": "Delhi", "2": "New Delhi"};

  final state11 = {"1": "Madgaon", "2": "Panaji"};

  final state12 = {
    "1": "Ahmadabad",
    "2": "Amreli",
    "3": "Bharuch",
    "4": "Bhavnagar",
    "5": "Bhuj",
    "6": "Dwarka",
    "7": "Gandhinagar",
    "8": "Godhra",
    "9": "Jamnagar",
    "10": "Junagarh",
    "11": "Kandla",
    "12": "Khambhat",
    "13": "Kheda",
    "14": "Mahesana",
    "15": "Morvi",
    "16": "Nadiad",
    "17": "Navsari",
    "18": "Okha",
    "19": "Palanpur",
    "20": "Patan",
    "21": "Porbandar",
    "22": "Rajkot",
    "23": "Surat",
    "24": "Surendranagar",
    "25": "Valsad",
    "26": "Veraval",
  };

  final state13 = {
    "1": "Ambala",
    "2": "Bhiwani",
    "3": "Chandigarh",
    "4": "Faridabad",
    "5": "Firozpur Jhirka",
    "6": "Gurgaon",
    "7": "Hansi",
    "8": "Hisar",
    "9": "Jind",
    "10": "Kaithal",
    "11": "Karnal",
    "12": "Kurukshetra",
    "13": "Panipat",
    "14": "Pehowa",
    "15": "Rewari",
    "16": "Rohtak",
    "17": "Sirsa",
    "18": "Sonipat",
  };

  final state14 = {
    "1": "Bilaspur",
    "2": "Chamba",
    "3": "Dalhousie",
    "4": "Dharmshala",
    "5": "Hamirpur",
    "6": "Kangra",
    "7": "Kullu",
    "8": "Mandi",
    "9": "Nahan",
    "10": "Shimla",
    "11": "Una",
  };

  final state15 = {
    "1": "Anantnag",
    "2": "Baramula",
    "3": "Doda",
    "4": "Gulmarg",
    "5": "Jammu",
    "6": "Kathua",
    "7": "Punch",
    "8": "Rajauri",
    "9": "Srinagar",
    "10": "Udhampur",
  };

  final state16 = {
    "1": "Bokaro",
    "2": "Chaibasa",
    "3": "Deoghar",
    "4": "Dhanbad",
    "5": "Dumka",
    "6": "Giridih",
    "7": "Hazaribag",
    "8": "Jamshedpur",
    "9": "Jharia",
    "10": "Rajmahal",
    "11": "Ranchi",
    "12": "Saraikela",
  };

  final state17 = {
    "1": "Badami",
    "2": "Ballari",
    "3": "Bangalore",
    "4": "Belgavi",
    "5": "Bhadravati",
    "6": "Bidar",
    "7": "Chikkamagaluru",
    "8": "Chitradurga",
    "9": "Davangere",
    "10": "Halebid",
    "11": "Hassan",
    "12": "Hubballi-Dharwad",
    "13": "Kalaburagi",
    "14": "Kolar",
    "15": "Madikeri",
    "16": "Mandya",
    "17": "Mangaluru",
    "18": "Mysuru",
    "19": "Raichur",
    "20": "Shivamogga",
    "21": "Hassan",
    "22": "Shravanabelagola",
    "23": "Shrirangapattana",
    "24": "Tumkuru"
  };

  final state18 = {
    "1": "Alappuzha",
    "2": "Badagara",
    "3": "Idukki",
    "4": "Kannur",
    "5": "Kochi",
    "6": "Kollam",
    "7": "Kottayam",
    "8": "Kozhikode",
    "9": "Mattancheri",
    "10": "Palakkad",
    "11": "Thalassery",
    "12": "Thiruvananthapuram",
    "13": "Thrissur"
  };

  final state19 = {"1": "Kargil", "2": "Leh"};

  final state20 = {
    "1": "Balaghat",
    "2": "Barwani",
    "3": "Betul",
    "4": "Bharhut",
    "5": "Bhind",
    "6": "Bhojpur",
    "7": "Bhopal",
    "8": "Burhanpur",
    "9": "Chhatarpur",
    "10": "Chhindwara",
    "11": "Damoh",
    "12": "Datia",
    "13": "Dewas",
    "14": "Dhar",
    "15": "Guna",
    "16": "Gwalior",
    "17": "Hoshangabad",
    "18": "Indore",
    "19": "Itarsi",
    "20": "Jabalpur",
    "21": "Jhabua",
    "22": "Khajuraho",
    "23": "Khandwa",
    "24": "Khargon",
    "25": "Maheshwar",
    "26": "Mandla",
    "27": "Mandsaur",
    "28": "Mhow",
    "29": "Morena",
    "30": "Murwara",
    "31": "Narsimhapur",
    "32": "Narsinghgarh",
    "33": "Narwar",
    "34": "Neemuch",
    "35": "Nowgong",
    "36": "Orchha",
    "37": "Panna",
    "38": "Raisen",
    "39": "Rajgarh",
    "40": "Ratlam",
    "41": "Rewa",
    "42": "Sagar",
    "43": "Sarangpur",
    "44": "Satna",
    "45": "Sehore",
    "46": "Seoni",
    "47": "Shahdol",
    "48": "Shajapur",
    "49": "Sheopur",
    "50": "Shivpuri",
    "51": "Ujjain",
    "52": "Vidisha",
  };

  final state21 = {
    "1": "Ahmadnagar",
    "2": "Akola",
    "3": "Amravati",
    "4": "Aurangabad",
    "5": "Bhandara",
    "6": "Bhusawal",
    "7": "Bid",
    "8": "Buldana",
    "9": "Chandrapur",
    "10": "Daulatabad",
    "11": "Dhule",
    "12": "Jalgaon",
    "13": "Kalyan",
    "14": "Karli",
    "15": "Kolhapur",
    "16": "Mahabaleshwar",
    "17": "Malegaon",
    "18": "Matheran",
    "19": "Mumbai",
    "20": "Nagpur",
    "21": "Nanded",
    "22": "Nashik",
    "23": "Osmanabad",
    "24": "Pandharpur",
    "25": "Parbhani",
    "26": "Pune",
    "27": "Ratnagiri",
    "28": "Sangli",
    "29": "Satara",
    "30": "Sevagram",
    "31": "Solapur",
    "32": "Thane",
    "33": "Ulhasnagar",
    "34": "Vasai-Virar",
    "35": "Wardha",
    "36": "Yavatmal",
  };

  final state22 = {
    "1": "Imphal",
  };

  final state23 = {"1": "Cherrapunji", "2": "Shillong"};

  final state24 = {"1": "Aizawl", "2": "Lunglei"};

  final state25 = {
    "1": "Kohima",
    "2": "Mon",
    "3": "Phek",
    "4": "Wokha",
    "5": "Zunheboto",
  };

  final state26 = {
    "1": "Balangir",
    "2": "Baleshwar",
    "3": "Baripada",
    "4": "Bhubaneshwar",
    "5": "Brahmapur",
    "6": "Cuttack",
    "7": "Dhenkanal",
    "8": "Keonjhar",
    "9": "Konark",
    "10": "Koraput",
    "11": "Paradip",
    "12": "Phulabani",
    "13": "Puri",
    "14": "Sambalpur",
    "15": "Udayagiri"
  };

  final state27 = {
    "1": "Karaikal",
    "2": "Mahe",
    "3": "Puducherry",
    "4": "Yanam"
  };

  final state28 = {
    "1": "Amritsar",
    "2": "Batala",
    "3": "Chandigarh",
    "4": "Faridkot",
    "5": "Firozpur",
    "6": "Gurdaspur",
    "7": "Hoshiarpur",
    "8": "Jalandhar",
    "9": "Kapurthala",
    "10": "Ludhiana",
    "11": "Nabha",
    "12": "Patiala",
    "13": "Rupnagar",
    "14": "Sangrur",
  };

  final state29 = {
    "1": "Abu",
    "2": "Ajmer",
    "3": "Alwar",
    "4": "Amer",
    "5": "Barmer",
    "6": "Beawar",
    "7": "Bharatpur",
    "8": "Bhilwara",
    "9": "Bikaner",
    "10": "Bundi",
    "11": "Chittaurgarh",
    "12": "Churu",
    "13": "Dhaulpur",
    "14": "Dungarpur",
    "15": "Ganganagar",
    "16": "Hanumangarh",
    "17": "Jaipur",
    "18": "Jaisalmer",
    "19": "Jalor",
    "20": "Jhalawar",
    "21": "Jhunjhunu",
    "22": "Jodhpur",
    "23": "Kishangarh",
    "24": "Kota",
    "25": "Merta",
    "26": "Nagaur",
    "27": "Nathdwara",
    "28": "Pali",
    "29": "Phalodi",
    "30": "Pushkar",
    "31": "Sawai Madhopur",
    "32": "Shahpura",
    "33": "Sikar",
    "34": "Sirohi",
    "35": "Tonk",
    "36": "Udaipur",
  };

  final state30 = {
    "1": "Gangtok",
    "2": "Gyalsing",
    "3": "Lachung",
    "4": "Mangan",
  };

  final state31 = {
    "1": "Arcot",
    "2": "Chengalpattu",
    "3": "Chennai",
    "4": "Chidambaram",
    "5": "Coimbatore",
    "6": "Cuddalore",
    "7": "Dharmapuri",
    "8": "Dindigul",
    "9": "Erode",
    "10": "Kanchipuram",
    "11": "Kanniyakumari",
    "12": "Kodaikanal",
    "13": "Kumbakonam",
    "14": "Madurai",
    "15": "Mamallapuram",
    "16": "Nagappattinam",
    "17": "Nagercoil",
    "18": "Palayankottai",
    "19": "Pudukkottai",
    "20": "Rajapalaiyam",
    "21": "Ramanathapuram",
    "22": "Salem",
    "23": "Thanjavur",
    "24": "Tiruchchirappalli",
    "25": "Tirunelveli",
    "26": "Tiruppur",
    "27": "Tuticorin",
    "28": "Udhagamandalam",
    "29": "Vellore",
  };

  final state32 = {
    "1": "Hyderabad",
    "2": "Karimnagar",
    "3": "Khammam",
    "4": "Mahbubnagar",
    "5": "Nizamabad",
    "6": "Sangareddi",
    "7": "Warangal",
  };

  final state33 = {
    "1": "Agartala",
  };

  final state34 = {
    "1": "Agra",
    "2": "Aligarh",
    "3": "Amroha",
    "4": "Ayodhya",
    "5": "Azamgarh",
    "6": "Aligarh",
    "7": "Bahraich",
    "8": "Ballia",
    "9": "Banda",
    "10": "Bara Banki",
    "11": "Bareilly",
    "12": "Basti",
    "13": "Bijnor",
    "14": "Bithur",
    "15": "Budaun",
    "16": "Bulandshahr",
    "17": "Deoria",
    "18": "Etah",
    "19": "Etawah",
    "20": "Faizabad",
    "21": "Farrukhabad",
    "22": "Fatehpur",
    "23": "Fatehpur Sikri",
    "24": "Ghaziabad",
    "25": "Ghazipur",
    "26": "Gonda",
    "27": "Gorakhpur",
    "28": "Hamirpur",
    "29": "Hardoi",
    "30": "Hathras",
    "31": "Jalaun",
    "32": "Jaunpur",
    "33": "Jhansi",
    "34": "Kannauj",
    "35": "Kanpur",
    "36": "Lakhimpur",
    "37": "Lalitpur",
    "38": "Lucknow",
    "39": "Mainpuri",
    "40": "Mathura",
    "41": "Meerut",
    "42": "Mirzapur",
    "43": "Moradabad",
    "44": "Muzaffarnagar",
    "45": "Partapgarh",
    "46": "Pilibhit",
    "47": "Prayagraj",
    "48": "Rae Bareli",
    "49": "Rampur",
    "50": "Saharanpur",
    "51": "Sambhal",
    "52": "Shahjahanpur",
    "53": "Sitapur",
    "54": "Sultanpur",
    "55": "Tehri",
    "56": "Varanasi",
  };

  final state35 = {
    "1": "Almora",
    "2": "Dehradun",
    "3": "Haridwar",
    "4": "Mussorie",
    "5": "Nainital",
    "6": "Pithoragarh"
  };

  final state36 = {
    "1": "Alipore",
    "2": "Alipur Duar",
    "3": "Asansol",
    "4": "Baharampur",
    "5": "Bally",
    "6": "Balurghat",
    "7": "Bankura",
    "8": "Baranagar",
    "9": "Barasat",
    "10": "Barrackpore",
    "11": "Basirhat Duar",
    "12": "Bhatpara",
    "13": "Bishnupur",
    "14": "Budge Budge",
    "15": "Burdwan",
    "16": "Chandernagore",
    "17": "Darjiling",
    "18": "Diamond Harbour",
    "19": "Dum Dum",
    "20": "Durgapur",
    "21": "Halisahar",
    "22": "Haora",
    "23": "Hugli",
    "24": "Ingraj Bazar",
    "25": "Jalpaiguri",
    "26": "Kalimpong",
    "27": "Kamarhati",
    "28": "Kanchrapara",
    "29": "Kharagpur",
    "30": "Koch Bihar",
    "31": "Kolkata",
    "32": "Krishnanagar",
    "33": "Malda",
    "34": "Midnapore",
    "35": "Murshidabad",
    "36": "Navadwip",
    "37": "Palashi",
    "38": "Panihati",
    "39": "Parulia",
    "40": "Raiganj",
    "41": "Santipur",
    "42": "Shantiniketan",
    "43": "Shrirampur",
    "44": "Siliguri",
    "45": "Siuri",
    "46": "Tamluk",
    "47": "Titagarh",
  };

  void populatestate1() {
    for (String key in state1.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state1[key],
        child: Text(
          state1[key],
        ),
      ));
    }
  }

  void populatestate2() {
    for (String key in state2.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state2[key],
        child: Text(
          state2[key],
        ),
      ));
    }
  }

  void populatestate3() {
    for (String key in state3.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state3[key],
        child: Text(
          state3[key],
        ),
      ));
    }
  }

  void populatestate4() {
    for (String key in state4.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state4[key],
        child: Text(
          state4[key],
        ),
      ));
    }
  }

  void populatestate5() {
    for (String key in state5.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state5[key],
        child: Text(
          state5[key],
        ),
      ));
    }
  }

  void populatestate6() {
    for (String key in state6.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state6[key],
        child: Text(
          state6[key],
        ),
      ));
    }
  }

  void populatestate7() {
    for (String key in state7.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state7[key],
        child: Text(
          state7[key],
        ),
      ));
    }
  }

  void populatestate8() {
    for (String key in state8.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state8[key],
        child: Text(
          state8[key],
        ),
      ));
    }
  }

  void populatestate9() {
    for (String key in state9.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state9[key],
        child: Text(
          state9[key],
        ),
      ));
    }
  }

  void populatestate10() {
    for (String key in state10.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state10[key],
        child: Text(
          state10[key],
        ),
      ));
    }
  }

  void populatestate11() {
    for (String key in state11.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state11[key],
        child: Text(
          state11[key],
        ),
      ));
    }
  }

  void populatestate12() {
    for (String key in state12.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state12[key],
        child: Text(
          state12[key],
        ),
      ));
    }
  }

  void populatestate13() {
    for (String key in state13.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state13[key],
        child: Text(
          state13[key],
        ),
      ));
    }
  }

  void populatestate14() {
    for (String key in state14.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state14[key],
        child: Text(
          state14[key],
        ),
      ));
    }
  }

  void populatestate15() {
    for (String key in state15.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state15[key],
        child: Text(
          state15[key],
        ),
      ));
    }
  }

  void populatestate16() {
    for (String key in state16.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state16[key],
        child: Text(
          state16[key],
        ),
      ));
    }
  }

  void populatestate17() {
    for (String key in state17.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state17[key],
        child: Text(
          state17[key],
        ),
      ));
    }
  }

  void populatestate18() {
    for (String key in state18.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state18[key],
        child: Text(
          state18[key],
        ),
      ));
    }
  }

  void populatestate19() {
    for (String key in state19.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state19[key],
        child: Text(
          state19[key],
        ),
      ));
    }
  }

  void populatestate20() {
    for (String key in state20.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state20[key],
        child: Text(
          state20[key],
        ),
      ));
    }
  }

  void populatestate21() {
    for (String key in state21.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state21[key],
        child: Text(
          state21[key],
        ),
      ));
    }
  }

  void populatestate22() {
    for (String key in state22.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state22[key],
        child: Text(
          state22[key],
        ),
      ));
    }
  }

  void populatestate23() {
    for (String key in state23.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state23[key],
        child: Text(
          state23[key],
        ),
      ));
    }
  }

  void populatestate24() {
    for (String key in state24.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state24[key],
        child: Text(
          state24[key],
        ),
      ));
    }
  }

  void populatestate25() {
    for (String key in state25.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state25[key],
        child: Text(
          state25[key],
        ),
      ));
    }
  }

  void populatestate26() {
    for (String key in state26.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state26[key],
        child: Text(
          state26[key],
        ),
      ));
    }
  }

  void populatestate27() {
    for (String key in state27.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state27[key],
        child: Text(
          state27[key],
        ),
      ));
    }
  }

  void populatestate28() {
    for (String key in state28.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state28[key],
        child: Text(
          state28[key],
        ),
      ));
    }
  }

  void populatestate29() {
    for (String key in state29.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state29[key],
        child: Text(
          state29[key],
        ),
      ));
    }
  }

  void populatestate30() {
    for (String key in state30.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state30[key],
        child: Text(
          state30[key],
        ),
      ));
    }
  }

  void populatestate31() {
    for (String key in state31.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state31[key],
        child: Text(
          state31[key],
        ),
      ));
    }
  }

  void populatestate32() {
    for (String key in state32.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state32[key],
        child: Text(
          state32[key],
        ),
      ));
    }
  }

  void populatestate33() {
    for (String key in state33.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state33[key],
        child: Text(
          state33[key],
        ),
      ));
    }
  }

  void populatestate34() {
    for (String key in state34.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state34[key],
        child: Text(
          state34[key],
        ),
      ));
    }
  }

  void populatestate35() {
    for (String key in state35.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state35[key],
        child: Text(
          state35[key],
        ),
      ));
    }
  }

  void populatestate36() {
    for (String key in state36.keys) {
      menuitems.add(DropdownMenuItem<String>(
        value: state36[key],
        child: Text(
          state36[key],
        ),
      ));
    }
  }

  void state(_value) {
    if (_value == "Andaman And Nicobar Islands") {
      menuitems = [];
      populatestate1();
    } else if (_value == "Andhra Pradesh") {
      menuitems = [];
      populatestate2();
    } else if (_value == "Arunachal Pradesh") {
      menuitems = [];
      populatestate3();
    } else if (_value == "Assam") {
      menuitems = [];
      populatestate4();
    } else if (_value == "Bihar") {
      menuitems = [];
      populatestate5();
    } else if (_value == "Chandigarh") {
      menuitems = [];
      populatestate6();
    } else if (_value == "Chattisgarh") {
      menuitems = [];
      populatestate7();
    } else if (_value == "Dadra and Nagar Haveli") {
      menuitems = [];
      populatestate8();
    } else if (_value == "Daman and Diu") {
      menuitems = [];
      populatestate9();
    } else if (_value == "Delhi") {
      menuitems = [];
      populatestate10();
    } else if (_value == "Goa") {
      menuitems = [];
      populatestate11();
    } else if (_value == "Gujarat") {
      menuitems = [];
      populatestate12();
    } else if (_value == "Haryana") {
      menuitems = [];
      populatestate13();
    } else if (_value == "Himachal Pradesh") {
      menuitems = [];
      populatestate14();
    } else if (_value == "Jammu and Kashmir") {
      menuitems = [];
      populatestate15();
    } else if (_value == "Jharkhand") {
      menuitems = [];
      populatestate16();
    } else if (_value == "Karnataka") {
      menuitems = [];
      populatestate17();
    } else if (_value == "Kerala") {
      menuitems = [];
      populatestate18();
    } else if (_value == "Ladakh") {
      menuitems = [];
      populatestate19();
    } else if (_value == "Madhya Pradesh") {
      menuitems = [];
      populatestate20();
    } else if (_value == "Maharashtra") {
      menuitems = [];
      populatestate21();
    } else if (_value == "Manipur") {
      menuitems = [];
      populatestate22();
    } else if (_value == "Meghalaya") {
      menuitems = [];
      populatestate23();
    } else if (_value == "Mizoram") {
      menuitems = [];
      populatestate24();
    } else if (_value == "Nagaland") {
      menuitems = [];
      populatestate25();
    } else if (_value == "Odisha") {
      menuitems = [];
      populatestate26();
    } else if (_value == "Puducherry") {
      menuitems = [];
      populatestate27();
    } else if (_value == "Punjab") {
      menuitems = [];
      populatestate28();
    } else if (_value == "Rajasthan") {
      menuitems = [];
      populatestate29();
    } else if (_value == "Sikkim") {
      menuitems = [];
      populatestate30();
    } else if (_value == "Tamil Nadu") {
      menuitems = [];
      populatestate31();
    } else if (_value == "Telangana") {
      menuitems = [];
      populatestate32();
    } else if (_value == "Tripura") {
      menuitems = [];
      populatestate33();
    } else if (_value == "Uttar Pradesh") {
      menuitems = [];
      populatestate34();
    } else if (_value == "Uttarakhand") {
      menuitems = [];
      populatestate35();
    } else if (_value == "West Bengal") {
      menuitems = [];
      populatestate36();
    }

    setState(() {
      _selectedState = _value;
      value = _value;
      print(_selectedState);
      //print(_selectedState);
      disableddropdown = false;
      if (_selectedCity != null) {
        _selectedCity = null;
      }
    });
  }

  void city(_value) {
    setState(() {
      _selectedCity = _value;
      value = _value;
      //print(_selectedCity);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Location',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            color: Colors.black,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            ),
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(hexColor('#BBD2C5')), Color(hexColor('#536976'))]),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40),
              ),
              Text(
                "Select Your Location",
                style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.blueGrey[900], width: 2),
                  ),
                  child: DropdownButton<String>(
                    value: _selectedState,
                    onChanged: (_value) => state(_value),
                    hint: Text(
                      "Select State",
                      style: TextStyle(color: Colors.blueGrey[800]),
                    ),
                    dropdownColor: Colors.blueGrey[100],
                    focusColor: Colors.blueGrey[600],
                    icon: Icon(Icons.arrow_drop_down,
                        color: Colors.blueGrey[900]),
                    isExpanded: true,
                    iconEnabledColor: Colors.blueGrey[900],
                    underline: SizedBox(),
                    style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontSize: 20,
                    ),
                    items: [
                      DropdownMenuItem(
                        value: "Andaman And Nicobar Islands",
                        child: Text(
                          "Andaman And Nicobar Islands",
                        ),
                      ),
                      DropdownMenuItem(
                          value: "Andhra Pradesh",
                          child: Text(
                            "Andhra Pradesh",
                          )),
                      DropdownMenuItem(
                          value: "Arunachal Pradesh",
                          child: Text(
                            "Arunachal Pradesh",
                          )),
                      DropdownMenuItem(
                          value: "Assam",
                          child: Text(
                            "Assam",
                          )),
                      DropdownMenuItem(
                          value: "Bihar",
                          child: Text(
                            "Bihar",
                          )),
                      DropdownMenuItem(
                        value: "Chandigarh",
                        child: Text(
                          "Chandigarh",
                        ),
                      ),
                      DropdownMenuItem(
                          value: "Chattisgarh",
                          child: Text(
                            "Chattisgarh",
                          )),
                      DropdownMenuItem(
                          value: "Dadra and Nagar Haveli",
                          child: Text(
                            "Dadra and Nagar Haveli",
                          )),
                      DropdownMenuItem(
                          value: "Daman and Diu",
                          child: Text(
                            "Daman and Diu",
                          )),
                      DropdownMenuItem(
                          value: "Delhi",
                          child: Text(
                            "Delhi",
                          )),
                      DropdownMenuItem(
                        value: "Goa",
                        child: Text(
                          "Goa",
                        ),
                      ),
                      DropdownMenuItem(
                          value: "Gujarat",
                          child: Text(
                            "Gujarat",
                          )),
                      DropdownMenuItem(
                          value: "Haryana",
                          child: Text(
                            "Haryana",
                          )),
                      DropdownMenuItem(
                          value: "Himachal Pradesh",
                          child: Text(
                            "Himachal Pradesh",
                          )),
                      DropdownMenuItem(
                          value: "Jammu and Kashmir",
                          child: Text(
                            "Jammu and Kashmir",
                          )),
                      DropdownMenuItem(
                        value: "Jharkhand",
                        child: Text(
                          "Jharkhand",
                        ),
                      ),
                      DropdownMenuItem(
                          value: "Karnataka",
                          child: Text(
                            "Karnataka",
                          )),
                      DropdownMenuItem(
                          value: "Kerala",
                          child: Text(
                            "Kerala",
                          )),
                      DropdownMenuItem(
                          value: "Ladakh",
                          child: Text(
                            "Ladakh",
                          )),
                      DropdownMenuItem(
                          value: "Madhya Pradesh",
                          child: Text(
                            "Madhya Pradesh",
                          )),
                      DropdownMenuItem(
                          value: "Maharashtra",
                          child: Text(
                            "Maharashtra",
                          )),
                      DropdownMenuItem(
                          value: "Manipur",
                          child: Text(
                            "Manipur",
                          )),
                      DropdownMenuItem(
                          value: "Meghalaya",
                          child: Text(
                            "Meghalaya",
                          )),
                      DropdownMenuItem(
                          value: "Mizoram",
                          child: Text(
                            "Mizoram",
                          )),
                      DropdownMenuItem(
                        value: "Nagaland",
                        child: Text(
                          "Nagaland",
                        ),
                      ),
                      DropdownMenuItem(
                          value: "Odisha",
                          child: Text(
                            "Odisha",
                          )),
                      DropdownMenuItem(
                          value: "Puducherry",
                          child: Text(
                            "Puducherry",
                          )),
                      DropdownMenuItem(
                          value: "Punjab",
                          child: Text(
                            "Punjab",
                          )),
                      DropdownMenuItem(
                          value: "Rajasthan",
                          child: Text(
                            "Rajasthan",
                          )),
                      DropdownMenuItem(
                          value: "Sikkim",
                          child: Text(
                            "Sikkim",
                          )),
                      DropdownMenuItem(
                        value: "Tamil Nadu",
                        child: Text(
                          "Tamil Nadu",
                        ),
                      ),
                      DropdownMenuItem(
                          value: "Telangana",
                          child: Text(
                            "Telangana",
                          )),
                      DropdownMenuItem(
                          value: "Tripura",
                          child: Text(
                            "Tripura",
                          )),
                      DropdownMenuItem(
                          value: "Uttar Pradesh",
                          child: Text(
                            "Uttar Pradesh",
                          )),
                      DropdownMenuItem(
                          value: "Uttarakhand",
                          child: Text(
                            "Uttarakhand",
                          )),
                      DropdownMenuItem(
                          value: "West Bengal",
                          child: Text(
                            "West Bengal",
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.blueGrey[900], width: 2),
                    ),
                    child: DropdownButton<String>(
                      dropdownColor: Colors.blueGrey[100],
                      focusColor: Colors.blueGrey[600],
                      icon: Icon(Icons.arrow_drop_down,
                          color: Colors.blueGrey[900]),
                      isExpanded: true,
                      iconEnabledColor: Colors.blueGrey[900],
                      underline: SizedBox(),
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 20,
                      ),
                      value: _selectedCity,
                      items: menuitems,
                      onChanged:
                          disableddropdown ? null : (_value) => city(_value),
                      hint: Text(
                        "Select City",
                        style: TextStyle(color: Colors.blueGrey[800]),
                      ),
                      disabledHint: Text("Select your City"),
                    )),
              ),
              SizedBox(
                height: 60,
                width: 60,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Text("Go",
                      style: TextStyle(
                          color: Color(hexColor('#cdcdcd')), fontSize: 20)),
                  color: Colors.blueGrey[900],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(
                          cityname: '$value',
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
