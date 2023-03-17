import 'package:flutter_music/config/network/netease_request.dart';
import 'package:flutter_music/config/network/response_model.dart';
import 'package:flutter_music/pages/find/model/banner_model.dart';
import 'package:flutter_music/pages/find/model/new_songs_model.dart';
import 'package:flutter_music/pages/find/model/recommand_song_list_model.dart';

class FindRequest {
  // 获取轮播图数据
  static Future<ResponseModel<BannerModel>> getRecommentBanner() {
    final res = neRequest.get('/banner', builder: (json) {
      return BannerModel.fromJson(json);
    });

    return res;
  }

  // 获取最新音乐数据
// {
//   "data": [
//     {
//       "starred": false,
//       "popularity": 5,
//       "starredNum": 0,
//       "playedNum": 0,
//       "dayPlays": 0,
//       "hearTime": 0,
//       "mp3Url": "http://m2.music.126.net/hmZoNQaqzZALvVp0rE7faA==/0.mp3",
//       "rtUrls": "",
//       "status": 0,
//       "score": 5,
//       "copyrightId": 2708922,
//       "artists": [
//         {
//           "img1v1Id": 18686200114669624,
//           "topicPerson": 0,
//           "briefDesc": "",
//           "albumSize": 0,
//           "img1v1Url": "http://p4.music.126.net/VnZiScyynLG7atLIZ2YPkw==/18686200114669622.jpg",
//           "picUrl": "http://p4.music.126.net/6y-UleORITEDbvrOLV0Q8A==/5639395138885805.jpg",
//           "alias": [""],
//           "trans": "",
//           "musicSize": 0,
//           "followed": false,
//           "picId": 0,
//           "name": "苏有朋",
//           "id": 4940,
//           "img1v1Id_str": "18686200114669622"
//         }
//       ],
//       "hMusic": {
//         "volumeDelta": -43366,
//         "playTime": 196608,
//         "dfsId": 0,
//         "sr": 44100,
//         "bitrate": 320000,
//         "name": "",
//         "id": 7936941991,
//         "size": 7867080,
//         "extension": "mp3"
//       },
//       "mMusic": {
//         "volumeDelta": -40792,
//         "playTime": 196608,
//         "dfsId": 0,
//         "sr": 44100,
//         "bitrate": 192000,
//         "name": "",
//         "id": 7936941987,
//         "size": 4720266,
//         "extension": "mp3"
//       },
//       "lMusic": {
//         "volumeDelta": -39193,
//         "playTime": 196608,
//         "dfsId": 0,
//         "sr": 44100,
//         "bitrate": 128000,
//         "name": "",
//         "id": 7936941993,
//         "size": 3146858,
//         "extension": "mp3"
//       },
//       "mvid": 0,
//       "ftype": 0,
//       "rtype": 0,
//       "rurl": "",
//       "alias": [""],
//       "copyFrom": "",
//       "commentThreadId": "R_SO_4_2026812909",
//       "position": 0,
//       "duration": 196608,
//       "album": {
//         "songs": [""],
//         "paid": false,
//         "onSale": false,
//         "tags": "",
//         "briefDesc": "",
//         "status": 1,
//         "copyrightId": 2708922,
//         "artists": [
//           {
//             "img1v1Id": 18686200114669624,
//             "topicPerson": 0,
//             "briefDesc": "",
//             "albumSize": 0,
//             "img1v1Url": "http://p3.music.126.net/VnZiScyynLG7atLIZ2YPkw==/18686200114669622.jpg",
//             "picUrl": "http://p3.music.126.net/6y-UleORITEDbvrOLV0Q8A==/5639395138885805.jpg",
//             "alias": [""],
//             "trans": "",
//             "musicSize": 0,
//             "followed": false,
//             "picId": 0,
//             "name": "苏有朋",
//             "id": 4940,
//             "img1v1Id_str": "18686200114669622"
//           }
//         ],
//         "blurPicUrl": "http://p4.music.126.net/ZpXdmuJr5NLyioAWmEEfCg==/109951168437112714.jpg",
//         "companyId": 0,
//         "pic": 109951168437112720,
//         "publishTime": 1677772800000,
//         "picUrl": "http://p4.music.126.net/ZpXdmuJr5NLyioAWmEEfCg==/109951168437112714.jpg",
//         "alias": [""],
//         "commentThreadId": "R_AL_3_161032006",
//         "subType": "录音室版",
//         "description": "",
//         "artist": {
//           "img1v1Id": 18686200114669624,
//           "topicPerson": 0,
//           "briefDesc": "",
//           "albumSize": 0,
//           "img1v1Url": "http://p3.music.126.net/VnZiScyynLG7atLIZ2YPkw==/18686200114669622.jpg",
//           "picUrl": "http://p4.music.126.net/6y-UleORITEDbvrOLV0Q8A==/5639395138885805.jpg",
//           "alias": [""],
//           "trans": "",
//           "musicSize": 0,
//           "followed": false,
//           "picId": 0,
//           "name": "",
//           "id": 0,
//           "img1v1Id_str": "18686200114669622"
//         },
//         "company": "上海渱林影视文化工作室",
//         "picId": 109951168437112720,
//         "name": "爱在时光里",
//         "id": 161032006,
//         "type": "Single",
//         "size": 1,
//         "picId_str": "109951168437112714"
//       },
//       "crbt": "",
//       "bMusic": {
//         "volumeDelta": -39193,
//         "playTime": 196608,
//         "dfsId": 0,
//         "sr": 44100,
//         "bitrate": 128000,
//         "name": "",
//         "id": 7936941993,
//         "size": 3146858,
//         "extension": "mp3"
//       },
//       "rtUrl": "",
//       "fee": 8,
//       "audition": "",
//       "ringtone": "",
//       "disc": "01",
//       "no": 0,
//       "name": "爱在时光里",
//       "id": 2026812909,
//       "exclusive": false,
//       "privilege": {
//         "id": 2026812909,
//         "fee": 8,
//         "payed": 0,
//         "st": 0,
//         "pl": 128000,
//         "dl": 0,
//         "sp": 7,
//         "cp": 1,
//         "subp": 1,
//         "cs": false,
//         "maxbr": 999000,
//         "fl": 128000,
//         "toast": false,
//         "flag": 128,
//         "preSell": false
//       }
//     }
//   ],
//   "code": 200
// }
  static Future<ResponseModel<NewSongs>> getRecommentNewSongs() {
    final res = neRequest.get('/top/song', builder: (json) {
      return NewSongs.fromJson(json);
    });
    return res;
  }

  // 获取推荐的歌单
// {
//   "hasTaste": false,
//   "code": 200,
//   "category": 0,
//   "result": [
//     {
//       "id": 2075587022,
//       "type": 0,
//       "name": "助眠辑 | 自然音，伴灵动乐符萦绕耳畔",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/sixunTcvD_IXeVqxZnpHkA==/109951163452086313.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1533916733093,
//       "playCount": 28313324,
//       "trackCount": 104,
//       "highQuality": true,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 129627424,
//       "type": 0,
//       "name": "如果你想听民谣，可以从这些歌曲开始。",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/KzeifdqziIovPjKqtEOdVA==/3274345632105421.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1661423415126,
//       "playCount": 59026344,
//       "trackCount": 109,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 123243715,
//       "type": 0,
//       "name": "[声线] 空 灵 女 声",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/3RANMlMM-udSsHyInyVbrQ==/528865105234307.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1654418781420,
//       "playCount": 25131158,
//       "trackCount": 60,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2900343697,
//       "type": 0,
//       "name": "[一周影视热歌] 陈势安演唱《HIStory5-遇见未来的你》插曲终发行",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/nkXo4lEaMD7X2QvcvLjt3w==/109951168439926798.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1677794400000,
//       "playCount": 25328980,
//       "trackCount": 30,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2065854146,
//       "type": 0,
//       "name": "古典清香 I 我的茶馆里住着巴赫与肖邦",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/QcPJfzds8ejF1FPgBaXMTw==/109951163128461676.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1569721546893,
//       "playCount": 24246556,
//       "trackCount": 115,
//       "highQuality": true,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 750115024,
//       "type": 0,
//       "name": "这节奏，听着就想跳舞！",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/qWs57cQp_jORhw5PjoFvJg==/109951162939753075.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1606119881226,
//       "playCount": 36440880,
//       "trackCount": 54,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2218171336,
//       "type": 0,
//       "name": "后来你哭了，想安慰却忘了早已换了身份",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/_FxBKCabrlnIPqvw2L31RQ==/109951163831572870.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1672989869580,
//       "playCount": 55416912,
//       "trackCount": 38,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2399935867,
//       "type": 0,
//       "name": "看书刷题+纯音乐【学习专用】",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/k6dwo-n_fnRhCHLXUrxKtw==/109951163626916509.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1678026531071,
//       "playCount": 29404312,
//       "trackCount": 429,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2247986522,
//       "type": 0,
//       "name": "纯音 | 缓解压力.安眠.去享受孤独",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/i12pbDR7xexdUnLSFBBhRQ==/109951168012472581.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1677745319407,
//       "playCount": 26871004,
//       "trackCount": 294,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 698720887,
//       "type": 0,
//       "name": "华语百首 | 回忆伤人无声，唱不尽世间遗憾",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/4L--5jGuNNCdRxL10n_0-g==/19057835044326350.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1677025684582,
//       "playCount": 214545776,
//       "trackCount": 249,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 638864394,
//       "type": 0,
//       "name": "国产HipHop从地下到地上",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/t97_FTCUQsFJrh-gSE33_g==/109951167665585892.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1677996847432,
//       "playCount": 39489556,
//       "trackCount": 702,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2144281377,
//       "type": 0,
//       "name": "我爱你  第一句是假的  第二句也是假的",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/6wq2s3Rtm8aJYvAoHKmgyA==/109951163202408350.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1677829370028,
//       "playCount": 25368214,
//       "trackCount": 104,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2821115454,
//       "type": 0,
//       "name": "[一周原创发现] 郑润泽带你看到更好的自己",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/7fOIx9dJS_tGUr7U0TXaKA==/109951168440541990.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1677859200000,
//       "playCount": 59680552,
//       "trackCount": 30,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2105681544,
//       "type": 0,
//       "name": "日系/无前奏：开口即跪 一秒沦陷",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/-bT1aNnjdESQwlw38D5eJg==/109951164323807218.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1677755364072,
//       "playCount": 64952372,
//       "trackCount": 252,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2547050034,
//       "type": 0,
//       "name": "试着做个善良的人",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/XyoVPk4TPfZpRxDfBFqXZw==/109951163944520221.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1677768185821,
//       "playCount": 24004800,
//       "trackCount": 111,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 6606027462,
//       "type": 0,
//       "name": "失恋日记 | 换不同的场景 但哪里都是你",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/BLMmLfUNu0zdprDISL_hTw==/109951165764406932.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1678175911343,
//       "playCount": 46166540,
//       "trackCount": 67,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 3865036,
//       "type": 0,
//       "name": "最陈奕迅·精选",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/rd0iSV6zxXOytgehfIaZ8g==/109951163693273653.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1678088813668,
//       "playCount": 35883044,
//       "trackCount": 306,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2610231104,
//       "type": 0,
//       "name": "你曾经有多认真的喜欢一个人",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/eOTnvmGVSb3S2MIYmo2IGA==/109951163910753373.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1678113455189,
//       "playCount": 33516488,
//       "trackCount": 242,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2116417781,
//       "type": 0,
//       "name": "开口沉醉 · 慵懒迷幻的欧美女声",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/3nylUCj0o4PiFxP9hAYw_Q==/19093019417025846.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1668251099268,
//       "playCount": 29738654,
//       "trackCount": 181,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2748492595,
//       "type": 0,
//       "name": "欧美万评优质女声•萦绕耳畔忆于心间",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/ptx2Jf4PZl3oNLxv4NiADg==/109951164018765577.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1675992416262,
//       "playCount": 35878712,
//       "trackCount": 170,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 114502510,
//       "type": 0,
//       "name": "♬跑步音乐-脚步跟着节奏动起来",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/kXR1HvosSIQnNrhVyHkNWg==/3318326093774145.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1462865886586,
//       "playCount": 31860334,
//       "trackCount": 49,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 158010361,
//       "type": 0,
//       "name": "『1963-至今』日本经典动漫音乐大盘点",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/WPHAmuqQaaQGIcx199t5XQ==/3272146613241669.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1676170235399,
//       "playCount": 29891802,
//       "trackCount": 738,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2577388187,
//       "type": 0,
//       "name": "Future Beats ◐ 糟糕，是心肌梗塞的感觉！",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/RtN6VzXNzOPAOhCiQSfjkQ==/109951163754607895.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1554535653444,
//       "playCount": 42791180,
//       "trackCount": 50,
//       "highQuality": true,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 652762973,
//       "type": 0,
//       "name": "时间治愈的是 愿意自渡之人",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/ezt2NwlaFgHbCXJOiCrprA==/109951162899017025.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1678114429983,
//       "playCount": 56003464,
//       "trackCount": 221,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 502843585,
//       "type": 0,
//       "name": "时间有泪—香港十大作词人写尽世间酸甜苦辣",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/kxWeBlbt20gBtWNRriZ1Cw==/18705991324624621.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1588750376361,
//       "playCount": 31357988,
//       "trackCount": 95,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 367649303,
//       "type": 0,
//       "name": "【B.G.M.】游戏必备战歌",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/mqTKX_-Llqif4oFJkfWpRw==/109951164206445553.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1677318203169,
//       "playCount": 37262632,
//       "trackCount": 111,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 110759778,
//       "type": 0,
//       "name": "民谣是最安静的角落",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/6_34Jf5YfizBLptYV8-h0g==/3397490930328962.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1631114200331,
//       "playCount": 44009640,
//       "trackCount": 164,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 2235097256,
//       "type": 0,
//       "name": "〖纯音乐〗轻旋淡律，也可以抓住你的耳朵",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/7yf2kfPh7wlMGC-d-3AEsw==/109951163309396149.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1666713002929,
//       "playCount": 31188942,
//       "trackCount": 213,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 701569273,
//       "type": 0,
//       "name": "麻麻，我想跟他们合唱！| 我想和你唱特辑",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/qW_tkvmFJCOfFJuEgWsYyA==/109951162992442802.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1500133996707,
//       "playCount": 42185644,
//       "trackCount": 131,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     },
//     {
//       "id": 123216450,
//       "type": 0,
//       "name": "【电子】入耳收藏的经典旋律",
//       "copywriter": "",
//       "picUrl": "https://p1.music.126.net/ZvJP5ZEI4EWdKoh3EUIbdg==/1365593450023866.jpg",
//       "canDislike": true,
//       "trackNumberUpdateTime": 1672327384353,
//       "playCount": 43106968,
//       "trackCount": 173,
//       "highQuality": false,
//       "alg": "alg_high_quality"
//     }
//   ]
// }
  static Future<ResponseModel<RecommendSongListModel>> getRecommentSongList() {
    final res = neRequest.get(
      '/personalized',
      builder: (json) => RecommendSongListModel.fromJson(json),
    );
    return res;
  }
}
