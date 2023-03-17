class NewSongs {
  bool? starred;
  int? popularity;
  int? starredNum;
  int? playedNum;
  int? dayPlays;
  int? hearTime;
  String? mp3Url;
  String? rtUrls;
  int? status;
  int? score;
  int? copyrightId;
  List<Artists>? artists;
  HMusic? hMusic;
  HMusic? mMusic;
  HMusic? lMusic;
  int? mvid;
  int? ftype;
  int? rtype;
  String? rurl;
  List<String>? alias;
  String? copyFrom;
  String? commentThreadId;
  int? position;
  int? duration;
  Album? album;
  String? crbt;
  HMusic? bMusic;
  String? rtUrl;
  int? fee;
  String? audition;
  String? ringtone;
  String? disc;
  int? no;
  String? name;
  int? id;
  bool? exclusive;
  Privilege? privilege;

  NewSongs(
      {this.starred,
      this.popularity,
      this.starredNum,
      this.playedNum,
      this.dayPlays,
      this.hearTime,
      this.mp3Url,
      this.rtUrls,
      this.status,
      this.score,
      this.copyrightId,
      this.artists,
      this.hMusic,
      this.mMusic,
      this.lMusic,
      this.mvid,
      this.ftype,
      this.rtype,
      this.rurl,
      this.alias,
      this.copyFrom,
      this.commentThreadId,
      this.position,
      this.duration,
      this.album,
      this.crbt,
      this.bMusic,
      this.rtUrl,
      this.fee,
      this.audition,
      this.ringtone,
      this.disc,
      this.no,
      this.name,
      this.id,
      this.exclusive,
      this.privilege});

  NewSongs.fromJson(Map<String, dynamic> json) {
    starred = json['starred'];
    popularity = json['popularity'];
    starredNum = json['starredNum'];
    playedNum = json['playedNum'];
    dayPlays = json['dayPlays'];
    hearTime = json['hearTime'];
    mp3Url = json['mp3Url'];
    rtUrls = json['rtUrls'];
    status = json['status'];
    score = json['score'];
    copyrightId = json['copyrightId'];
    if (json['artists'] != null) {
      artists = <Artists>[];
      json['artists'].forEach((v) {
        artists!.add(new Artists.fromJson(v));
      });
    }
    hMusic =
        json['hMusic'] != null ? new HMusic.fromJson(json['hMusic']) : null;
    mMusic =
        json['mMusic'] != null ? new HMusic.fromJson(json['mMusic']) : null;
    lMusic =
        json['lMusic'] != null ? new HMusic.fromJson(json['lMusic']) : null;
    mvid = json['mvid'];
    ftype = json['ftype'];
    rtype = json['rtype'];
    rurl = json['rurl'];
    alias = json['alias'].cast<String>();
    copyFrom = json['copyFrom'];
    commentThreadId = json['commentThreadId'];
    position = json['position'];
    duration = json['duration'];
    album = json['album'] != null ? new Album.fromJson(json['album']) : null;
    crbt = json['crbt'];
    bMusic =
        json['bMusic'] != null ? new HMusic.fromJson(json['bMusic']) : null;
    rtUrl = json['rtUrl'];
    fee = json['fee'];
    audition = json['audition'];
    ringtone = json['ringtone'];
    disc = json['disc'];
    no = json['no'];
    name = json['name'];
    id = json['id'];
    exclusive = json['exclusive'];
    privilege = json['privilege'] != null
        ? new Privilege.fromJson(json['privilege'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['starred'] = this.starred;
    data['popularity'] = this.popularity;
    data['starredNum'] = this.starredNum;
    data['playedNum'] = this.playedNum;
    data['dayPlays'] = this.dayPlays;
    data['hearTime'] = this.hearTime;
    data['mp3Url'] = this.mp3Url;
    data['rtUrls'] = this.rtUrls;
    data['status'] = this.status;
    data['score'] = this.score;
    data['copyrightId'] = this.copyrightId;
    if (this.artists != null) {
      data['artists'] = this.artists!.map((v) => v.toJson()).toList();
    }
    if (this.hMusic != null) {
      data['hMusic'] = this.hMusic!.toJson();
    }
    if (this.mMusic != null) {
      data['mMusic'] = this.mMusic!.toJson();
    }
    if (this.lMusic != null) {
      data['lMusic'] = this.lMusic!.toJson();
    }
    data['mvid'] = this.mvid;
    data['ftype'] = this.ftype;
    data['rtype'] = this.rtype;
    data['rurl'] = this.rurl;
    data['alias'] = this.alias;
    data['copyFrom'] = this.copyFrom;
    data['commentThreadId'] = this.commentThreadId;
    data['position'] = this.position;
    data['duration'] = this.duration;
    if (this.album != null) {
      data['album'] = this.album!.toJson();
    }
    data['crbt'] = this.crbt;
    if (this.bMusic != null) {
      data['bMusic'] = this.bMusic!.toJson();
    }
    data['rtUrl'] = this.rtUrl;
    data['fee'] = this.fee;
    data['audition'] = this.audition;
    data['ringtone'] = this.ringtone;
    data['disc'] = this.disc;
    data['no'] = this.no;
    data['name'] = this.name;
    data['id'] = this.id;
    data['exclusive'] = this.exclusive;
    if (this.privilege != null) {
      data['privilege'] = this.privilege!.toJson();
    }
    return data;
  }
}

class Artists {
  int? img1v1Id;
  int? topicPerson;
  String? briefDesc;
  int? albumSize;
  String? img1v1Url;
  String? picUrl;
  List<String>? alias;
  String? trans;
  int? musicSize;
  bool? followed;
  int? picId;
  String? name;
  int? id;
  String? img1v1IdStr;

  Artists(
      {this.img1v1Id,
      this.topicPerson,
      this.briefDesc,
      this.albumSize,
      this.img1v1Url,
      this.picUrl,
      this.alias,
      this.trans,
      this.musicSize,
      this.followed,
      this.picId,
      this.name,
      this.id,
      this.img1v1IdStr});

  Artists.fromJson(Map<String, dynamic> json) {
    img1v1Id = json['img1v1Id'];
    topicPerson = json['topicPerson'];
    briefDesc = json['briefDesc'];
    albumSize = json['albumSize'];
    img1v1Url = json['img1v1Url'];
    picUrl = json['picUrl'];
    alias = json['alias'].cast<String>();
    trans = json['trans'];
    musicSize = json['musicSize'];
    followed = json['followed'];
    picId = json['picId'];
    name = json['name'];
    id = json['id'];
    img1v1IdStr = json['img1v1Id_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img1v1Id'] = this.img1v1Id;
    data['topicPerson'] = this.topicPerson;
    data['briefDesc'] = this.briefDesc;
    data['albumSize'] = this.albumSize;
    data['img1v1Url'] = this.img1v1Url;
    data['picUrl'] = this.picUrl;
    data['alias'] = this.alias;
    data['trans'] = this.trans;
    data['musicSize'] = this.musicSize;
    data['followed'] = this.followed;
    data['picId'] = this.picId;
    data['name'] = this.name;
    data['id'] = this.id;
    data['img1v1Id_str'] = this.img1v1IdStr;
    return data;
  }
}

class HMusic {
  int? volumeDelta;
  int? playTime;
  int? dfsId;
  int? sr;
  int? bitrate;
  String? name;
  int? id;
  int? size;
  String? extension;

  HMusic(
      {this.volumeDelta,
      this.playTime,
      this.dfsId,
      this.sr,
      this.bitrate,
      this.name,
      this.id,
      this.size,
      this.extension});

  HMusic.fromJson(Map<String, dynamic> json) {
    volumeDelta = json['volumeDelta'];
    playTime = json['playTime'];
    dfsId = json['dfsId'];
    sr = json['sr'];
    bitrate = json['bitrate'];
    name = json['name'];
    id = json['id'];
    size = json['size'];
    extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['volumeDelta'] = this.volumeDelta;
    data['playTime'] = this.playTime;
    data['dfsId'] = this.dfsId;
    data['sr'] = this.sr;
    data['bitrate'] = this.bitrate;
    data['name'] = this.name;
    data['id'] = this.id;
    data['size'] = this.size;
    data['extension'] = this.extension;
    return data;
  }
}

class Album {
  List<String>? songs;
  bool? paid;
  bool? onSale;
  String? tags;
  String? briefDesc;
  int? status;
  int? copyrightId;
  List<Artists>? artists;
  String? blurPicUrl;
  int? companyId;
  int? pic;
  int? publishTime;
  String? picUrl;
  List<String>? alias;
  String? commentThreadId;
  String? subType;
  String? description;
  Artists? artist;
  String? company;
  int? picId;
  String? name;
  int? id;
  String? type;
  int? size;
  String? picIdStr;

  Album(
      {this.songs,
      this.paid,
      this.onSale,
      this.tags,
      this.briefDesc,
      this.status,
      this.copyrightId,
      this.artists,
      this.blurPicUrl,
      this.companyId,
      this.pic,
      this.publishTime,
      this.picUrl,
      this.alias,
      this.commentThreadId,
      this.subType,
      this.description,
      this.artist,
      this.company,
      this.picId,
      this.name,
      this.id,
      this.type,
      this.size,
      this.picIdStr});

  Album.fromJson(Map<String, dynamic> json) {
    songs = json['songs'].cast<String>();
    paid = json['paid'];
    onSale = json['onSale'];
    tags = json['tags'];
    briefDesc = json['briefDesc'];
    status = json['status'];
    copyrightId = json['copyrightId'];
    if (json['artists'] != null) {
      artists = <Artists>[];
      json['artists'].forEach((v) {
        artists!.add(new Artists.fromJson(v));
      });
    }
    blurPicUrl = json['blurPicUrl'];
    companyId = json['companyId'];
    pic = json['pic'];
    publishTime = json['publishTime'];
    picUrl = json['picUrl'];
    alias = json['alias'].cast<String>();
    commentThreadId = json['commentThreadId'];
    subType = json['subType'];
    description = json['description'];
    artist =
        json['artist'] != null ? new Artists.fromJson(json['artist']) : null;
    company = json['company'];
    picId = json['picId'];
    name = json['name'];
    id = json['id'];
    type = json['type'];
    size = json['size'];
    picIdStr = json['picId_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['songs'] = this.songs;
    data['paid'] = this.paid;
    data['onSale'] = this.onSale;
    data['tags'] = this.tags;
    data['briefDesc'] = this.briefDesc;
    data['status'] = this.status;
    data['copyrightId'] = this.copyrightId;
    if (this.artists != null) {
      data['artists'] = this.artists!.map((v) => v.toJson()).toList();
    }
    data['blurPicUrl'] = this.blurPicUrl;
    data['companyId'] = this.companyId;
    data['pic'] = this.pic;
    data['publishTime'] = this.publishTime;
    data['picUrl'] = this.picUrl;
    data['alias'] = this.alias;
    data['commentThreadId'] = this.commentThreadId;
    data['subType'] = this.subType;
    data['description'] = this.description;
    if (this.artist != null) {
      data['artist'] = this.artist!.toJson();
    }
    data['company'] = this.company;
    data['picId'] = this.picId;
    data['name'] = this.name;
    data['id'] = this.id;
    data['type'] = this.type;
    data['size'] = this.size;
    data['picId_str'] = this.picIdStr;
    return data;
  }
}

class Privilege {
  int? id;
  int? fee;
  int? payed;
  int? st;
  int? pl;
  int? dl;
  int? sp;
  int? cp;
  int? subp;
  bool? cs;
  int? maxbr;
  int? fl;
  bool? toast;
  int? flag;
  bool? preSell;

  Privilege(
      {this.id,
      this.fee,
      this.payed,
      this.st,
      this.pl,
      this.dl,
      this.sp,
      this.cp,
      this.subp,
      this.cs,
      this.maxbr,
      this.fl,
      this.toast,
      this.flag,
      this.preSell});

  Privilege.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fee = json['fee'];
    payed = json['payed'];
    st = json['st'];
    pl = json['pl'];
    dl = json['dl'];
    sp = json['sp'];
    cp = json['cp'];
    subp = json['subp'];
    cs = json['cs'];
    maxbr = json['maxbr'];
    fl = json['fl'];
    toast = json['toast'];
    flag = json['flag'];
    preSell = json['preSell'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fee'] = this.fee;
    data['payed'] = this.payed;
    data['st'] = this.st;
    data['pl'] = this.pl;
    data['dl'] = this.dl;
    data['sp'] = this.sp;
    data['cp'] = this.cp;
    data['subp'] = this.subp;
    data['cs'] = this.cs;
    data['maxbr'] = this.maxbr;
    data['fl'] = this.fl;
    data['toast'] = this.toast;
    data['flag'] = this.flag;
    data['preSell'] = this.preSell;
    return data;
  }
}
