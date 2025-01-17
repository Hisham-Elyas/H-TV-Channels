import '../../features/home/data/models/channel_category_model.dart';
import '../../features/home/data/models/league_model.dart';
import '../../features/home/data/models/match_model.dart';

bool isLoggedInUser = false;
bool isOnBordingView = false;

class SharedPrefKeys {
  static const String userToken = 'userToken';
}

class ImageAssets {
  static const String logo = 'assets/images/Tv Channel.png';
  static const String bgImage = 'assets/images/bg_image.png';
}

final List onBoardingListDescription = [
  "شاهد مبارياتك المفضلة بلا انقطاع",
  "جميع الدوريات العالمية والمحلية بضغطة زر واحدة",
  "اشتراك سنوي وشهري متميز",
];
final List<Map<String, dynamic>> events = [
  {
    "team1": "الدينزي",
    "team2": "فالنسيا",
    "team1Logo": "https://imgs.ysscores.com/teams/150/1701690118820.png",
    "team2Logo": "https://imgs.ysscores.com/teams/150/4871690119302.png",
    "status": "جارية الآن",
    "league": "كأس ملك إسبانيا",
    "commentator": "عبدالعزيز السير",
    "channel": "SSC Extra 2",
  },
  {
    "team1": "التعاون",
    "team2": "القادسية",
    "team1Logo": "https://imgs.ysscores.com/teams/150/1701690118820.png",
    "team2Logo": "https://imgs.ysscores.com/teams/150/4871690119302.png",
    "status": "انتهت المباراة",
    "league": "كأس الملك السعودي",
    "commentator": "خالد المديفر",
    "channel": "SSC Extra 1",
  },
  {
    "team1": "الهلال",
    "team2": "الاتحاد",
    "team1Logo": "https://imgs.ysscores.com/teams/150/1701690118820.png",
    "team2Logo": "https://imgs.ysscores.com/teams/150/4871690119302.png",
    "status": "انتهت المباراة",
    "league": "كأس الملك السعودي",
    "commentator": "عبدالله الحربي",
    "channel": "SSC SPORTS 1",
  },
];

final Map<String, List<Map<String, String>>> channels = {
  "beIN Sports ᴴᴰ": [
    {
      'name': 'beIN Sport 1',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544835',
    },
    {
      'name': 'beIN Sport 2',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544834',
    },
    {
      'name': 'beIN Sport 3',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544833',
    },
    {
      'name': 'beIN Sport 4',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544832',
    },
    {
      'name': 'beIN Sport 5',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544831',
    },
    {
      'name': 'beIN Sport 6',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544830',
    },
    {
      'name': 'beIN Sport 7',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544829',
    },
    {
      'name': 'beIN Sport 8',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544828',
    },
    {
      'name': 'beIN Sport 9',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544827',
    },
    {
      'name': 'beIN Sports Xtra 1',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544826',
    },
    {
      'name': 'beIN Sports XTRA 2',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544825',
    },
    {
      'name': 'beIN Sports XTRA 3',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544824',
    },
  ],
  "SCC ᴴᴰ": [
    {
      'name': 'SCC 1 ᴴᴰ',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844321',
    },
    {
      'name': 'SCC 2 ᴴᴰ',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844320',
    },
    {
      'name': 'SCC 3 ᴴᴰ',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844319',
    },
    {
      'name': 'SCC 4 ᴴᴰ',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844318',
    },
    {
      'name': 'SCC 5 ᴴᴰ',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844317',
    },
    {
      'name': 'SS XTRAC  1 ᴴᴰ',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844316',
    },
    {
      'name': 'SS XTRAC  2 ᴴᴰ',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844315',
    },
    {
      'name': 'SS XTRAC  3 ᴴᴰ',
      'logo':
          'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
      'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844314',
    },
  ]
};

final List<Map<String, dynamic>> matches = [
  {
    "league": "Premier League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/3411694791422.png",
    "homeTeam": "Everton",
    "awayTeam": "Tottenham",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8461690118694.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2501692467226.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "04:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 2", "Commentator": "Khalil Al Balushi"},
      {"Channel": "beIN 4K", "Commentator": "Khalil Al Balushi"}
    ]
  },
  {
    "league": "Premier League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/3411694791422.png",
    "homeTeam": "Man United",
    "awayTeam": "Brighton",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/4871690119302.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2271696710594.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "04:00 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sport 1", "Commentator": "Ali Muhammad Ali"},
      {"Channel": "beIN Sport 1", "Commentator": "Ali Muhammad Ali"}
    ]
  },
  {
    "league": "Premier League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/3411694791422.png",
    "homeTeam": "Nottingham",
    "awayTeam": "Southampton",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/7741690119007.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/3521690370525.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "04:00 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sports Xtra 2", "Commentator": "Ahmed Al Balushi"},
      {"Channel": "beIN Sports Xtra 2", "Commentator": "Ahmed Al Balushi"}
    ]
  },
  {
    "league": "Premier League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/3411694791422.png",
    "homeTeam": "Ipswich",
    "awayTeam": "Man City",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8291690370545.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/4481690118308.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "06:30 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sport 1", "Commentator": "Ali Saeed Al Kaabi"},
      {"Channel": "beIN 4K", "Commentator": "Ali Saeed Al Kaabi"}
    ]
  },
  {
    "league": "LaLiga",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/8641690196626.png",
    "homeTeam": "Celta Vigo",
    "awayTeam": "A.Bilbao",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/9611690196747.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/1061690197944.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "03:00 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sports Xtra 3", "Commentator": "Mohamed Assadi"},
      {"Channel": "beIN Sports Xtra 3", "Commentator": "Mohamed Assadi"}
    ]
  },
  {
    "league": "LaLiga",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/8641690196626.png",
    "homeTeam": "Real Madrid",
    "awayTeam": "Las Palmas",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/1871690196746.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/791690196744.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "05:15 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 3", "Commentator": "Hafeez Darraji"},
      {"Channel": "Bein Sport 3", "Commentator": "Hafeez Darraji"}
    ]
  },
  {
    "league": "LaLiga",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/8641690196626.png",
    "homeTeam": "Osasuna",
    "awayTeam": "Vallecano",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/7961690196745.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/1511690196745.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "07:30 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 2", "Commentator": "Ahmed Al Balushi"},
      {"Channel": "Bein Sport 2", "Commentator": "Ahmed Al Balushi"}
    ]
  },
  {
    "league": "LaLiga",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/8641690196626.png",
    "homeTeam": "Valencia",
    "awayTeam": "Sociedad",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/7881690196747.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/9441690196745.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "10:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 3", "Commentator": "Montaser Al-Azhari"},
      {"Channel": "Bein Sport 3", "Commentator": "Montaser Al-Azhari"}
    ]
  },
  {
    "league": "CAF Champions League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/5061696621582.png",
    "homeTeam": "Raja Club",
    "awayTeam": "Maniema",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/6421692794445.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/6691732567930.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "06:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 6", "Commentator": "Issam Chaouali"},
      {"Channel": "Arryadia TNT", "Commentator": "Muhammad Al-Adali"}
    ]
  },
  {
    "league": "CAF Champions League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/5061696621582.png",
    "homeTeam": "Sundowns",
    "awayTeam": "FAR Rabat",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/5061694715092.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/4171692205946.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "06:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 4", "Commentator": "Noffal Bachi"},
      {"Channel": "Bein Sport 4", "Commentator": "Noffal Bachi"}
    ]
  },
  {
    "league": "Serie A",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/6281692568873.png",
    "homeTeam": "Fiorentina",
    "awayTeam": "Torino",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/1231690283002.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/7501690283003.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "01:30 pm",
    "channelsAndCommentators": [
      {"Channel": "AD Sports Premium 1", "Commentator": "Mohammed Al Shamsi"},
      {"Channel": "STC TV App", "Commentator": "Mohammed Al Shamsi"}
    ]
  },
  {
    "league": "Serie A",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/6281692568873.png",
    "homeTeam": "Cagliari",
    "awayTeam": "Lecce",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/7311690283001.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/9031690283003.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "04:00 pm",
    "channelsAndCommentators": [
      {"Channel": "AD Sports Premium 1", "Commentator": "Ahmed kher"},
      {"Channel": "STC TV App", "Commentator": "Ahmed kher"}
    ]
  },
  {
    "league": "Serie A",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/6281692568873.png",
    "homeTeam": "Parma",
    "awayTeam": "Venezia",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/4061690823331.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/771690370510.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "04:00 pm",
    "channelsAndCommentators": [
      {"Channel": "AD Sports Premium 2", "Commentator": "Ahmed Al-Hamid"},
      {"Channel": "STC TV App", "Commentator": "Mohammed Abu Kabdeh"}
    ]
  },
  {
    "league": "Serie A",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/6281692568873.png",
    "homeTeam": "Hellas Verona",
    "awayTeam": "Lazio",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/3871690283003.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/5111690283002.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "07:00 pm",
    "channelsAndCommentators": [
      {"Channel": "AD Sports Premium 1", "Commentator": "Faisal Alhendi"},
      {"Channel": "STC TV App", "Commentator": "Faisal Alhendi"}
    ]
  },
  {
    "league": "Serie A",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/6281692568873.png",
    "homeTeam": "Inter",
    "awayTeam": "Empoli",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/3101690283003.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/4281690283002.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "09:45 pm",
    "channelsAndCommentators": [
      {"Channel": "AD Sports Premium 1", "Commentator": "Bilal Allam"},
      {"Channel": "STC TV App", "Commentator": "Bilal Allam"}
    ]
  },
  {
    "league": "Bundesliga",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/6171690288722.png",
    "homeTeam": "Union Berlin",
    "awayTeam": "Mainz 05",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/6521690288816.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/8131690288819.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "04:30 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 5", "Commentator": "Mohamed Barakat"},
      {"Channel": "Bein Sport 5", "Commentator": "Mohamed Barakat"}
    ]
  },
  {
    "league": "Bundesliga",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/6171690288722.png",
    "homeTeam": "Bremen",
    "awayTeam": "Augsburg",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/9771690288817.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/7221690288817.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "06:30 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sports Xtra 3", "Commentator": "Mohamed Assadi"},
      {"Channel": "beIN Sports Xtra 3", "Commentator": "Mohamed Assadi"}
    ]
  },
  {
    "league": "Ligue 1",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9551719862665.png",
    "homeTeam": "Saint-Etienne",
    "awayTeam": "Nantes",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/9871717020546.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/6071690287626.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "04:00 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sports 9", "Commentator": "Basem Al-Zeer"},
      {"Channel": "beIN Sports 9", "Commentator": "Basem Al-Zeer"}
    ]
  },
  {
    "league": "Ligue 1",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9551719862665.png",
    "homeTeam": "Reims",
    "awayTeam": "Le Havre",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8361690287842.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/6941691927287.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "06:15 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sports Xtra 2", "Commentator": "Abdallah Alghamedi"},
      {"Channel": "beIN Sports Xtra 2", "Commentator": "Abdallah Alghamedi"}
    ]
  },
  {
    "league": "Ligue 1",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9551719862665.png",
    "homeTeam": "Angers",
    "awayTeam": "Auxerre",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/1121690370513.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/8671690370530.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "06:15 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sports 9", "Commentator": "Samir Al-Yaqoubi"},
      {"Channel": "beIN Sports 9", "Commentator": "Samir Al-Yaqoubi"}
    ]
  },
  {
    "league": "Ligue 1",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9551719862665.png",
    "homeTeam": "Marseille",
    "awayTeam": "Strasbourg",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/6031690287269.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/8951690287872.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "09:45 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 4", "Commentator": "Hassan Aidaroos"},
      {"Channel": "Bein Sport 4", "Commentator": "Hassan Aidaroos"}
    ]
  },
  {
    "league": "Iraq Stars League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9731702381714.png",
    "homeTeam": "Diyala",
    "awayTeam": "Al-Karma",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/7671726654821.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2331726654564.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "01:30 pm",
    "channelsAndCommentators": [
      {"Channel": "Iraqia Syriac", "Commentator": "Hussein Al-Saadi"},
      {"Channel": "Iraqia Syriac", "Commentator": "Hussein Al-Saadi"}
    ]
  },
  {
    "league": "Iraq Stars League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9731702381714.png",
    "homeTeam": "Al Karkh",
    "awayTeam": "Erbil",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/3891695656397.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2581695657262.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "01:30 pm",
    "channelsAndCommentators": [
      {"Channel": "Iraqia Sport", "Commentator": "Jamal Darraji"},
      {"Channel": "Iraqia Sport", "Commentator": "Jamal Darraji"}
    ]
  },
  {
    "league": "Iraq Stars League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9731702381714.png",
    "homeTeam": "Al Najaf",
    "awayTeam": "Al Minaa",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8831695656091.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/7791709127942.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "04:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Iraqia Sport", "Commentator": "Ali Enab"},
      {"Channel": "Iraqia Sport", "Commentator": "Ali Enab"}
    ]
  },
  {
    "league": "Iraq Stars League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9731702381714.png",
    "homeTeam": "Al Zawraa",
    "awayTeam": "Al Hedood",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/2961729878835.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/5221695656525.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "06:30 pm",
    "channelsAndCommentators": [
      {"Channel": "Iraqia Sport", "Commentator": "Ali Lftah"},
      {"Channel": "Iraqia Sport", "Commentator": "Ali Lftah"}
    ]
  },
  {
    "league": "Club Friendlies",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/331690370434.png",
    "homeTeam": "Inter Miami CF",
    "awayTeam": "CF America",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/571691409672.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/7881703173149.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "05:00 am",
    "channelsAndCommentators": [
      {"Channel": "Apple TV", "Commentator": "Unknown"}
    ]
  },
  {
    "league": "Club Friendlies",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/331690370434.png",
    "homeTeam": "AGMK",
    "awayTeam": "CSKA Moscow",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/5831692012626.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/8881690370538.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "01:00 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Süper Lig",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7571723239230.png",
    "homeTeam": "Goztepe",
    "awayTeam": "Antalyaspor",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8741690370493.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/6611690127092.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "12:30 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sports HD 1 TR", "Commentator": "Unknown"}
    ]
  },
  {
    "league": "Süper Lig",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7571723239230.png",
    "homeTeam": "Konyaspor",
    "awayTeam": "Kasimpasa",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8771690127634.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/8131690127512.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "03:00 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sports HD 1 TR", "Commentator": "Unknown"}
    ]
  },
  {
    "league": "Süper Lig",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7571723239230.png",
    "homeTeam": "Eyupspor",
    "awayTeam": "Alanyaspor",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/891700669405.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/9541690127467.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "06:00 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sports HD 2 TR", "Commentator": "Unknown"}
    ]
  },
  {
    "league": "Süper Lig",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7571723239230.png",
    "homeTeam": "Demirspor",
    "awayTeam": "Fenerbahce",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/2061690126996.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/681690127723.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "06:00 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sports HD 1 TR", "Commentator": "Unknown"}
    ]
  },
  {
    "league": "Botola",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9671692793781.png",
    "homeTeam": "HUSA",
    "awayTeam": "MAS Fes",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/571704283672.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2161692794229.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "04:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Arryadia TV {3}", "Commentator": "Ayoub Adeeb"},
      {"Channel": "Arryadia TV {3}", "Commentator": "Ayoub Adeeb"}
    ]
  },
  {
    "league": "Botola",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9671692793781.png",
    "homeTeam": "Difaâ El Jadida",
    "awayTeam": "Wydad AC",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/7531723745308.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/3131694715431.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "08:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Arryadia TV {3}", "Commentator": "Hisham Farag"},
      {"Channel": "Arryadia TV {3}", "Commentator": "Hisham Farag"}
    ]
  },
  {
    "league": "CAF Confederation Cup",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/1931696627235.png",
    "homeTeam": "CS Sfaxien",
    "awayTeam": "FC Bravos",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/6131692796238.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2171728321135.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "03:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 4", "Commentator": "Noffal Bachi"},
      {"Channel": "Bein Sport 4", "Commentator": "Noffal Bachi"}
    ]
  },
  {
    "league": "CAF Confederation Cup",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/1931696627235.png",
    "homeTeam": "Simba SC",
    "awayTeam": "CS Constantine",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/821694715302.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/1891724622719.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "03:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 6", "Commentator": "Muhammad Al-Mabrouki"},
      {"Channel": "Bein Sport 6", "Commentator": "Muhammad Al-Mabrouki"}
    ]
  },
  {
    "league": "CAF Confederation Cup",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/1931696627235.png",
    "homeTeam": "Al Masry",
    "awayTeam": "Black Bulls",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/1521694644423.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/971732736898.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "06:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 7", "Commentator": "Ahmed Abdou"},
      {"Channel": "Bein Sport 7", "Commentator": "Ahmed Abdou"}
    ]
  },
  {
    "league": "CAF Confederation Cup",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/1931696627235.png",
    "homeTeam": "Zamalek SC",
    "awayTeam": "Enyimba",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/7971694082496.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/5681694714987.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "06:00 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sports 8", "Commentator": "Mohamed Fawzy"},
      {"Channel": "Time Sport", "Commentator": "Tareq Hasan"}
    ]
  },
  {
    "league": "CAF Confederation Cup",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/1931696627235.png",
    "homeTeam": "ASEC Mimosas",
    "awayTeam": "Orapa United",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/5251692205544.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2991728320719.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "09:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 7", "Commentator": "Basem Al-Zeer"},
      {"Channel": "Bein Sport 7", "Commentator": "Basem Al-Zeer"}
    ]
  },
  {
    "league": "CAF Confederation Cup",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/1931696627235.png",
    "homeTeam": "USM Alger",
    "awayTeam": "Diaraf",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/9611695834503.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/1571728320893.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "09:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 6", "Commentator": "Mohamed Barakat"},
      {"Channel": "Bein Sport 6", "Commentator": "Mohamed Barakat"}
    ]
  },
  {
    "league": "CAF Confederation Cup",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/1931696627235.png",
    "homeTeam": "Stade Malien",
    "awayTeam": "CD Lunda Sul",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8271696629744.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/661734213795.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "09:00 pm",
    "channelsAndCommentators": [
      {"Channel": "beIN Sports 8", "Commentator": "Muhammad Al-Mabrouki"},
      {"Channel": "beIN Sports 8", "Commentator": "Muhammad Al-Mabrouki"}
    ]
  },
  {
    "league": "CAF Confederation Cup",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/1931696627235.png",
    "homeTeam": "RSB Berkane",
    "awayTeam": "Stellenbosch",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/1121692794477.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2801728321045.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "09:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 5", "Commentator": "Ahmed Abdou"},
      {"Channel": "Arryadia TNT", "Commentator": "Khalil Fayed"}
    ]
  },
  {
    "league": "Liga Portugal",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7301690383928.png",
    "homeTeam": "Moreirense",
    "awayTeam": "Farense",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/7031690386044.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/9131690384873.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "05:30 pm",
    "channelsAndCommentators": [
      {"Channel": "Referee", "Commentator": "Sergio Guelho"},
      {"Channel": "Assistant referee", "Commentator": "Hugo Santos"}
    ]
  },
  {
    "league": "Liga Portugal",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7301690383928.png",
    "homeTeam": "Nacional",
    "awayTeam": "Futebol",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8491698965785.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/9461698965717.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "05:30 pm",
    "channelsAndCommentators": [
      {"Channel": "Referee", "Commentator": "Helder Carvalho"},
      {"Channel": "Assistant referee", "Commentator": "Francisco Pereira"}
    ]
  },
  {
    "league": "Liga Portugal",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7301690383928.png",
    "homeTeam": "Estrela",
    "awayTeam": "Braga",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/3151690385137.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2631690385875.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "08:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Referee", "Commentator": "Iancu Vasilica"},
      {"Channel": "Assistant referee", "Commentator": "Carlos Martins"}
    ]
  },
  {
    "league": "Liga Portugal",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7301690383928.png",
    "homeTeam": "Gil Vicente",
    "awayTeam": "FC Porto",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/7981690385058.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/4801690385949.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "10:30 pm",
    "channelsAndCommentators": [
      {"Channel": "SSC 1 HD", "Commentator": "Abdullah Al-Shehri"},
      {"Channel": "SSC 5 HD", "Commentator": "Abdullah Al-Shehri"}
    ]
  },
  {
    "league": "Tunisian Professional League 1",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/5641693174914.png",
    "homeTeam": "US Monastir",
    "awayTeam": "CA Bizertin",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/9111692796285.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2171692796264.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "03:00 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Tunisian Professional League 1",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/5641693174914.png",
    "homeTeam": "Stade Tunisien",
    "awayTeam": "ES Zarzis",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/861692795979.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/7511723790588.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "03:00 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Tunisian Professional League 1",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/5641693174914.png",
    "homeTeam": "Gafsa",
    "awayTeam": "JS Omrane",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/7231692795888.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/1351723790666.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "03:00 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Kuwait Premier League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/6261723224041.png",
    "homeTeam": "Qadsia",
    "awayTeam": "Al-Arabi",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/451723127217.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/131723157127.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "04:45 pm",
    "channelsAndCommentators": [
      {"Channel": "atv", "Commentator": "Hani Alshehri"},
      {"Channel": "Shasha", "Commentator": "Hani Alshehri"}
    ]
  },
  {
    "league": "EFL Championship",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/4861690937574.png",
    "homeTeam": "Leeds United",
    "awayTeam": "Sheffield",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/4691690458244.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2131690370554.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "02:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Bein Sport 3", "Commentator": "Unknown"}
    ]
  },
  {
    "league": "Eredivisie",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/4431690992915.png",
    "homeTeam": "NAC Breda",
    "awayTeam": "FC Twente",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/6521690370538.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/7451690996868.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "01:15 pm",
    "channelsAndCommentators": [
      {"Channel": "Referee", "Commentator": "Rob Dieperink"},
      {"Channel": "Assistant referee", "Commentator": "Yorick Weterings"}
    ]
  },
  {
    "league": "Eredivisie",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/4431690992915.png",
    "homeTeam": "Almere City FC",
    "awayTeam": "Heracles",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/2241690996249.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2091690996504.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "03:30 pm",
    "channelsAndCommentators": [
      {"Channel": "Referee", "Commentator": "Ingmar Oostrom"},
      {"Channel": "Assistant referee", "Commentator": "Mark Janssen"}
    ]
  },
  {
    "league": "Eredivisie",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/4431690992915.png",
    "homeTeam": "Heerenveen",
    "awayTeam": "Ajax",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/6771725055096.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/5141690476054.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "03:30 pm",
    "channelsAndCommentators": [
      {"Channel": "StarzPlay", "Commentator": "Unknown"}
    ]
  },
  {
    "league": "Eredivisie",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/4431690992915.png",
    "homeTeam": "NEC Nijmegen",
    "awayTeam": "Fortuna Sittard",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/2531690996921.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/1881690997103.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "05:45 pm",
    "channelsAndCommentators": [
      {"Channel": "Referee", "Commentator": "Marc Nagtegaal"},
      {"Channel": "Assistant referee", "Commentator": "Richard Brondijk"}
    ]
  },
  {
    "league": "Eredivisie",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/4431690992915.png",
    "homeTeam": "Sparta Rotterdam",
    "awayTeam": "RKC Waalwijk",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/111690824096.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/6061690457395.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "09:00 pm",
    "channelsAndCommentators": [
      {"Channel": "Referee", "Commentator": "Pol van Boekel"},
      {"Channel": "Assistant referee", "Commentator": "Maarten Ketting"}
    ]
  },
  {
    "league": "Belgian Pro League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9251692797287.png",
    "homeTeam": "Kortrijk",
    "awayTeam": "Anderlecht",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/5911694963389.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/1651733919643.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "02:30 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Belgian Pro League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9251692797287.png",
    "homeTeam": "St.Gilloise",
    "awayTeam": "OH Leuven",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/3651690370510.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/8831690370492.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "05:00 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Belgian Pro League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9251692797287.png",
    "homeTeam": "St.Truiden",
    "awayTeam": "Standard Liege",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/6271690370550.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/4911690370549.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "07:30 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Belgian Pro League",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/9251692797287.png",
    "homeTeam": "Royal Antwerp",
    "awayTeam": "Westerlo",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/1151690370549.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/131690370550.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "08:15 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Egyptian Second Division",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7581728754011.png",
    "homeTeam": "Proxy",
    "awayTeam": "Alexandria SC",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/1761696284692.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/6721728754944.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "02:30 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Egyptian Second Division",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7581728754011.png",
    "homeTeam": "El Dakhleya",
    "awayTeam": "WE",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/7881694082064.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/9521696285165.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "02:30 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Egyptian Second Division",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7581728754011.png",
    "homeTeam": "Wadi Degla FC",
    "awayTeam": "Raya",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/2161728755640.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/6531696285484.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "02:30 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Egyptian Second Division",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7581728754011.png",
    "homeTeam": "Kahrbaa Alasmalia",
    "awayTeam": "El Mokawloon",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8481728755401.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2721694082551.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "02:30 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Egyptian Second Division",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7581728754011.png",
    "homeTeam": "El Sekka",
    "awayTeam": "Montakhab Suez",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8381696284624.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/3691696033928.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "02:30 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Egyptian Second Division",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7581728754011.png",
    "homeTeam": "Tanta",
    "awayTeam": "El Mansura",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8591728755099.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/8231728755782.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "02:30 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Egyptian Second Division",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7581728754011.png",
    "homeTeam": "La Viena FC",
    "awayTeam": "Aswan FC",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/1541696284458.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/4811694082039.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "02:30 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Egyptian Second Division",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7581728754011.png",
    "homeTeam": "Abo Qir Semad",
    "awayTeam": "Dayrot",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8611715098753.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/4951728755572.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "02:30 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Egyptian Second Division",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7581728754011.png",
    "homeTeam": "El Qanah FC",
    "awayTeam": "Asyut Petroleum",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/5821715097236.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/5831736286055.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "02:30 pm",
    "channelsAndCommentators": []
  },
  {
    "league": "Egyptian Second Division",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/7581728754011.png",
    "homeTeam": "Al Tersana",
    "awayTeam": "Al-Mehalla",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/1081715096208.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/3151694619467.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "02:30 pm",
    "channelsAndCommentators": [
      {"Channel": "OnTime Sports 2", "Commentator": "Mohamed Azmy"},
      {"Channel": "OnTime Sports 2", "Commentator": "Mohamed Azmy"}
    ]
  },
  {
    "league": "Super Cup QAT-UAE",
    "leagueLogo": "https://imgs.ysscores.com/championship/48/1561733080021.png",
    "homeTeam": "Al-Wahda",
    "awayTeam": "Al-Wakrah",
    "homeTeamLogo": "https://imgs.ysscores.com/teams/64/8811690300661.png",
    "awayTeamLogo": "https://imgs.ysscores.com/teams/64/2361723214425.png",
    "matchDate": "Sunday 19-01-2025",
    "matchTime": "06:00 pm",
    "channelsAndCommentators": [
      {"Channel": "AD Sports 1", "Commentator": "Fares Awad"},
      {"Channel": "Alkass 1", "Commentator": "Khaled Al-Hadi"}
    ]
  }
];

List<MatchModel> matchesList =
    matches.map((match) => MatchModel.fromJson(match)).toList();

List<LeagueModel> leaguesList = matchesList
    .fold<Map<String, LeagueModel>>({}, (Map<String, LeagueModel> map, match) {
      if (!map.containsKey(match.league)) {
        map[match.league] = LeagueModel(
          league: match.league,
          leagueLogo: match.leagueLogo,
          matches: [],
        );
      }
      map[match.league]!.matches.add(match);
      return map;
    })
    .values
    .toList();

// Parse the data into a list of ChannelCategory objects
List<ChannelCategory> channelCategories = channels.entries.map((entry) {
  return ChannelCategory.fromMap(entry.key, entry.value);
}).toList();
final List<Map<String, String>> beINandCSSchannels = [
  {
    'name': 'beIN Sport 1',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544835',
  },
  {
    'name': 'beIN Sport 2',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544834',
  },
  {
    'name': 'beIN Sport 3',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544833',
  },
  {
    'name': 'beIN Sport 4',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544832',
  },
  {
    'name': 'beIN Sport 5',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544831',
  },
  {
    'name': 'beIN Sport 6',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544830',
  },
  {
    'name': 'beIN Sport 7',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544829',
  },
  {
    'name': 'beIN Sport 8',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544828',
  },
  {
    'name': 'beIN Sport 9',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544827',
  },
  {
    'name': 'beIN Sport XTRA 1',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544826',
  },
  {
    'name': 'beIN Sport XTRA 2',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544825',
  },
  {
    'name': 'beIN Sport XTRA 3',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/12782.png?95032',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/544824',
  },
  {
    'name': 'SCC 1 ᴴᴰ',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844321',
  },
  {
    'name': 'SCC 2 ᴴᴰ',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844320',
  },
  {
    'name': 'SCC 3 ᴴᴰ',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844319',
  },
  {
    'name': 'SCC 4 ᴴᴰ',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844318',
  },
  {
    'name': 'SCC 5 ᴴᴰ',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844317',
  },
  {
    'name': 'SS XTRAC  1 ᴴᴰ',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844316',
  },
  {
    'name': 'SS XTRAC  2 ᴴᴰ',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844315',
  },
  {
    'name': 'SS XTRAC  3 ᴴᴰ',
    'logo': 'http://icon-tmdb.me/stalker_portal/misc/logos/320/8514.png?22097',
    'videoUrl': 'http://cf.iptgateway.com:80/f2fcc4fcd680/cvpjkxrnyd/844314',
  },
];
