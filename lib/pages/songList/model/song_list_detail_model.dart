class SongListDetailModel {
  int? code;
  String? relatedVideos;
  Playlist? playlist;
  String? urls;
  List<Privileges>? privileges;
  String? sharedPrivilege;
  String? resEntrance;
  String? fromUsers;
  int? fromUserCount;
  String? songFromUsers;

  SongListDetailModel(
      {this.code,
      this.relatedVideos,
      this.playlist,
      this.urls,
      this.privileges,
      this.sharedPrivilege,
      this.resEntrance,
      this.fromUsers,
      this.fromUserCount,
      this.songFromUsers});

  SongListDetailModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    relatedVideos = json['relatedVideos'];
    playlist = json['playlist'] != null
        ? new Playlist.fromJson(json['playlist'])
        : null;
    urls = json['urls'];
    if (json['privileges'] != null) {
      privileges = <Privileges>[];
      json['privileges'].forEach((v) {
        privileges!.add(new Privileges.fromJson(v));
      });
    }
    sharedPrivilege = json['sharedPrivilege'];
    resEntrance = json['resEntrance'];
    fromUsers = json['fromUsers'];
    fromUserCount = json['fromUserCount'];
    songFromUsers = json['songFromUsers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['relatedVideos'] = this.relatedVideos;
    if (this.playlist != null) {
      data['playlist'] = this.playlist!.toJson();
    }
    data['urls'] = this.urls;
    if (this.privileges != null) {
      data['privileges'] = this.privileges!.map((v) => v.toJson()).toList();
    }
    data['sharedPrivilege'] = this.sharedPrivilege;
    data['resEntrance'] = this.resEntrance;
    data['fromUsers'] = this.fromUsers;
    data['fromUserCount'] = this.fromUserCount;
    data['songFromUsers'] = this.songFromUsers;
    return data;
  }
}

class Playlist {
  int? id;
  String? name;
  int? coverImgId;
  String? coverImgUrl;
  String? coverImgIdStr;
  int? adType;
  int? userId;
  int? createTime;
  int? status;
  bool? opRecommend;
  bool? highQuality;
  bool? newImported;
  late int updateTime;
  int? trackCount;
  int? specialType;
  int? privacy;
  int? trackUpdateTime;
  String? commentThreadId;
  int? playCount;
  int? trackNumberUpdateTime;
  int? subscribedCount;
  int? cloudTrackCount;
  bool? ordered;
  String? description;
  List<String>? tags;
  String? updateFrequency;
  int? backgroundCoverId;
  String? backgroundCoverUrl;
  int? titleImage;
  String? titleImageUrl;
  String? englishTitle;
  String? officialPlaylistType;
  bool? copied;
  String? relateResType;
  List<Subscribers>? subscribers;
  bool? subscribed;
  Creator? creator;
  List<Tracks>? tracks;
  String? videoIds;
  String? videos;
  List<TrackIds>? trackIds;
  String? bannedTrackIds;
  String? mvResourceInfos;
  int? shareCount;
  int? commentCount;
  String? remixVideo;
  String? sharedUsers;
  String? historySharedUsers;
  String? gradeStatus;
  String? score;
  List<String>? algTags;

  Playlist(
      {this.id,
      this.name,
      this.coverImgId,
      this.coverImgUrl,
      this.coverImgIdStr,
      this.adType,
      this.userId,
      this.createTime,
      this.status,
      this.opRecommend,
      this.highQuality,
      this.newImported,
      required this.updateTime,
      this.trackCount,
      this.specialType,
      this.privacy,
      this.trackUpdateTime,
      this.commentThreadId,
      this.playCount,
      this.trackNumberUpdateTime,
      this.subscribedCount,
      this.cloudTrackCount,
      this.ordered,
      this.description,
      this.tags,
      this.updateFrequency,
      this.backgroundCoverId,
      this.backgroundCoverUrl,
      this.titleImage,
      this.titleImageUrl,
      this.englishTitle,
      this.officialPlaylistType,
      this.copied,
      this.relateResType,
      this.subscribers,
      this.subscribed,
      this.creator,
      this.tracks,
      this.videoIds,
      this.videos,
      this.trackIds,
      this.bannedTrackIds,
      this.mvResourceInfos,
      this.shareCount,
      this.commentCount,
      this.remixVideo,
      this.sharedUsers,
      this.historySharedUsers,
      this.gradeStatus,
      this.score,
      this.algTags});

  Playlist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    coverImgId = json['coverImgId'];
    coverImgUrl = json['coverImgUrl'];
    coverImgIdStr = json['coverImgId_str'];
    adType = json['adType'];
    userId = json['userId'];
    createTime = json['createTime'];
    status = json['status'];
    opRecommend = json['opRecommend'];
    highQuality = json['highQuality'];
    newImported = json['newImported'];
    updateTime = json['updateTime'];
    trackCount = json['trackCount'];
    specialType = json['specialType'];
    privacy = json['privacy'];
    trackUpdateTime = json['trackUpdateTime'];
    commentThreadId = json['commentThreadId'];
    playCount = json['playCount'];
    trackNumberUpdateTime = json['trackNumberUpdateTime'];
    subscribedCount = json['subscribedCount'];
    cloudTrackCount = json['cloudTrackCount'];
    ordered = json['ordered'];
    description = json['description'];
    updateFrequency = json['updateFrequency'];
    backgroundCoverId = json['backgroundCoverId'];
    backgroundCoverUrl = json['backgroundCoverUrl'];
    titleImage = json['titleImage'];
    titleImageUrl = json['titleImageUrl'];
    englishTitle = json['englishTitle'];
    officialPlaylistType = json['officialPlaylistType'];
    copied = json['copied'];
    relateResType = json['relateResType'];
    if (json['subscribers'] != null) {
      subscribers = <Subscribers>[];
      json['subscribers'].forEach((v) {
        subscribers!.add(new Subscribers.fromJson(v));
      });
    }
    subscribed = json['subscribed'];
    creator =
        json['creator'] != null ? new Creator.fromJson(json['creator']) : null;
    if (json['tracks'] != null) {
      tracks = <Tracks>[];
      json['tracks'].forEach((v) {
        tracks!.add(new Tracks.fromJson(v));
      });
    }
    videoIds = json['videoIds'];
    videos = json['videos'];
    if (json['trackIds'] != null) {
      trackIds = <TrackIds>[];
      json['trackIds'].forEach((v) {
        trackIds!.add(new TrackIds.fromJson(v));
      });
    }
    bannedTrackIds = json['bannedTrackIds'];
    mvResourceInfos = json['mvResourceInfos'];
    shareCount = json['shareCount'];
    commentCount = json['commentCount'];
    remixVideo = json['remixVideo'];
    sharedUsers = json['sharedUsers'];
    historySharedUsers = json['historySharedUsers'];
    gradeStatus = json['gradeStatus'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['coverImgId'] = this.coverImgId;
    data['coverImgUrl'] = this.coverImgUrl;
    data['coverImgId_str'] = this.coverImgIdStr;
    data['adType'] = this.adType;
    data['userId'] = this.userId;
    data['createTime'] = this.createTime;
    data['status'] = this.status;
    data['opRecommend'] = this.opRecommend;
    data['highQuality'] = this.highQuality;
    data['newImported'] = this.newImported;
    data['updateTime'] = this.updateTime;
    data['trackCount'] = this.trackCount;
    data['specialType'] = this.specialType;
    data['privacy'] = this.privacy;
    data['trackUpdateTime'] = this.trackUpdateTime;
    data['commentThreadId'] = this.commentThreadId;
    data['playCount'] = this.playCount;
    data['trackNumberUpdateTime'] = this.trackNumberUpdateTime;
    data['subscribedCount'] = this.subscribedCount;
    data['cloudTrackCount'] = this.cloudTrackCount;
    data['ordered'] = this.ordered;
    data['description'] = this.description;
    data['tags'] = this.tags;
    data['updateFrequency'] = this.updateFrequency;
    data['backgroundCoverId'] = this.backgroundCoverId;
    data['backgroundCoverUrl'] = this.backgroundCoverUrl;
    data['titleImage'] = this.titleImage;
    data['titleImageUrl'] = this.titleImageUrl;
    data['englishTitle'] = this.englishTitle;
    data['officialPlaylistType'] = this.officialPlaylistType;
    data['copied'] = this.copied;
    data['relateResType'] = this.relateResType;
    if (this.subscribers != null) {
      data['subscribers'] = this.subscribers!.map((v) => v.toJson()).toList();
    }
    data['subscribed'] = this.subscribed;
    if (this.creator != null) {
      data['creator'] = this.creator!.toJson();
    }
    if (this.tracks != null) {
      data['tracks'] = this.tracks!.map((v) => v.toJson()).toList();
    }
    data['videoIds'] = this.videoIds;
    data['videos'] = this.videos;
    if (this.trackIds != null) {
      data['trackIds'] = this.trackIds!.map((v) => v.toJson()).toList();
    }
    data['bannedTrackIds'] = this.bannedTrackIds;
    data['mvResourceInfos'] = this.mvResourceInfos;
    data['shareCount'] = this.shareCount;
    data['commentCount'] = this.commentCount;
    data['remixVideo'] = this.remixVideo;
    data['sharedUsers'] = this.sharedUsers;
    data['historySharedUsers'] = this.historySharedUsers;
    data['gradeStatus'] = this.gradeStatus;
    data['score'] = this.score;
    data['algTags'] = this.algTags;
    return data;
  }
}

class Subscribers {
  bool? defaultAvatar;
  int? province;
  int? authStatus;
  bool? followed;
  String? avatarUrl;
  int? accountStatus;
  int? gender;
  int? city;
  int? birthday;
  int? userId;
  int? userType;
  String? nickname;
  String? signature;
  String? description;
  String? detailDescription;
  int? avatarImgId;
  int? backgroundImgId;
  String? backgroundUrl;
  int? authority;
  bool? mutual;
  String? expertTags;
  String? experts;
  int? djStatus;
  int? vipType;
  String? remarkName;
  int? authenticationTypes;
  AvatarDetail? avatarDetail;
  bool? anchor;
  String? avatarImgIdStr;
  String? backgroundImgIdStr;

  Subscribers({
    this.defaultAvatar,
    this.province,
    this.authStatus,
    this.followed,
    this.avatarUrl,
    this.accountStatus,
    this.gender,
    this.city,
    this.birthday,
    this.userId,
    this.userType,
    this.nickname,
    this.signature,
    this.description,
    this.detailDescription,
    this.avatarImgId,
    this.backgroundImgId,
    this.backgroundUrl,
    this.authority,
    this.mutual,
    this.expertTags,
    this.experts,
    this.djStatus,
    this.vipType,
    this.remarkName,
    this.authenticationTypes,
    this.avatarDetail,
    this.anchor,
    this.avatarImgIdStr,
    this.backgroundImgIdStr,
  });

  Subscribers.fromJson(Map<String, dynamic> json) {
    defaultAvatar = json['defaultAvatar'];
    province = json['province'];
    authStatus = json['authStatus'];
    followed = json['followed'];
    avatarUrl = json['avatarUrl'];
    accountStatus = json['accountStatus'];
    gender = json['gender'];
    city = json['city'];
    birthday = json['birthday'];
    userId = json['userId'];
    userType = json['userType'];
    nickname = json['nickname'];
    signature = json['signature'];
    description = json['description'];
    detailDescription = json['detailDescription'];
    avatarImgId = json['avatarImgId'];
    backgroundImgId = json['backgroundImgId'];
    backgroundUrl = json['backgroundUrl'];
    authority = json['authority'];
    mutual = json['mutual'];
    expertTags = json['expertTags'];
    experts = json['experts'];
    djStatus = json['djStatus'];
    vipType = json['vipType'];
    remarkName = json['remarkName'];
    authenticationTypes = json['authenticationTypes'];
    avatarDetail = json['avatarDetail'] != null
        ? new AvatarDetail.fromJson(json['avatarDetail'])
        : null;
    anchor = json['anchor'];
    avatarImgIdStr = json['avatarImgIdStr'];
    backgroundImgIdStr = json['backgroundImgIdStr'];
    avatarImgIdStr = json['avatarImgId_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['defaultAvatar'] = this.defaultAvatar;
    data['province'] = this.province;
    data['authStatus'] = this.authStatus;
    data['followed'] = this.followed;
    data['avatarUrl'] = this.avatarUrl;
    data['accountStatus'] = this.accountStatus;
    data['gender'] = this.gender;
    data['city'] = this.city;
    data['birthday'] = this.birthday;
    data['userId'] = this.userId;
    data['userType'] = this.userType;
    data['nickname'] = this.nickname;
    data['signature'] = this.signature;
    data['description'] = this.description;
    data['detailDescription'] = this.detailDescription;
    data['avatarImgId'] = this.avatarImgId;
    data['backgroundImgId'] = this.backgroundImgId;
    data['backgroundUrl'] = this.backgroundUrl;
    data['authority'] = this.authority;
    data['mutual'] = this.mutual;
    data['expertTags'] = this.expertTags;
    data['experts'] = this.experts;
    data['djStatus'] = this.djStatus;
    data['vipType'] = this.vipType;
    data['remarkName'] = this.remarkName;
    data['authenticationTypes'] = this.authenticationTypes;
    if (this.avatarDetail != null) {
      data['avatarDetail'] = this.avatarDetail!.toJson();
    }
    data['anchor'] = this.anchor;
    data['avatarImgIdStr'] = this.avatarImgIdStr;
    data['backgroundImgIdStr'] = this.backgroundImgIdStr;
    data['avatarImgId_str'] = this.avatarImgIdStr;
    return data;
  }
}

class AvatarDetail {
  int? userType;
  int? identityLevel;
  String? identityIconUrl;

  AvatarDetail({this.userType, this.identityLevel, this.identityIconUrl});

  AvatarDetail.fromJson(Map<String, dynamic> json) {
    userType = json['userType'];
    identityLevel = json['identityLevel'];
    identityIconUrl = json['identityIconUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userType'] = this.userType;
    data['identityLevel'] = this.identityLevel;
    data['identityIconUrl'] = this.identityIconUrl;
    return data;
  }
}

class Creator {
  bool? defaultAvatar;
  int? province;
  int? authStatus;
  bool? followed;
  String? avatarUrl;
  int? accountStatus;
  int? gender;
  int? city;
  int? birthday;
  int? userId;
  int? userType;
  String? nickname;
  String? signature;
  String? description;
  String? detailDescription;
  int? avatarImgId;
  int? backgroundImgId;
  String? backgroundUrl;
  int? authority;
  bool? mutual;
  List<String>? expertTags;
  Experts? experts;
  int? djStatus;
  int? vipType;
  String? remarkName;
  int? authenticationTypes;
  AvatarDetail? avatarDetail;
  bool? anchor;
  String? avatarImgIdStr;
  String? backgroundImgIdStr;

  Creator({
    this.defaultAvatar,
    this.province,
    this.authStatus,
    this.followed,
    this.avatarUrl,
    this.accountStatus,
    this.gender,
    this.city,
    this.birthday,
    this.userId,
    this.userType,
    this.nickname,
    this.signature,
    this.description,
    this.detailDescription,
    this.avatarImgId,
    this.backgroundImgId,
    this.backgroundUrl,
    this.authority,
    this.mutual,
    this.expertTags,
    this.experts,
    this.djStatus,
    this.vipType,
    this.remarkName,
    this.authenticationTypes,
    this.avatarDetail,
    this.anchor,
    this.avatarImgIdStr,
    this.backgroundImgIdStr,
  });

  Creator.fromJson(Map<String, dynamic> json) {
    defaultAvatar = json['defaultAvatar'];
    province = json['province'];
    authStatus = json['authStatus'];
    followed = json['followed'];
    avatarUrl = json['avatarUrl'];
    accountStatus = json['accountStatus'];
    gender = json['gender'];
    city = json['city'];
    birthday = json['birthday'];
    userId = json['userId'];
    userType = json['userType'];
    nickname = json['nickname'];
    signature = json['signature'];
    description = json['description'];
    detailDescription = json['detailDescription'];
    avatarImgId = json['avatarImgId'];
    backgroundImgId = json['backgroundImgId'];
    backgroundUrl = json['backgroundUrl'];
    authority = json['authority'];
    mutual = json['mutual'];
    experts =
        json['experts'] != null ? new Experts.fromJson(json['experts']) : null;
    djStatus = json['djStatus'];
    vipType = json['vipType'];
    remarkName = json['remarkName'];
    authenticationTypes = json['authenticationTypes'];
    avatarDetail = json['avatarDetail'] != null
        ? new AvatarDetail.fromJson(json['avatarDetail'])
        : null;
    anchor = json['anchor'];
    avatarImgIdStr = json['avatarImgIdStr'];
    backgroundImgIdStr = json['backgroundImgIdStr'];
    avatarImgIdStr = json['avatarImgId_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['defaultAvatar'] = this.defaultAvatar;
    data['province'] = this.province;
    data['authStatus'] = this.authStatus;
    data['followed'] = this.followed;
    data['avatarUrl'] = this.avatarUrl;
    data['accountStatus'] = this.accountStatus;
    data['gender'] = this.gender;
    data['city'] = this.city;
    data['birthday'] = this.birthday;
    data['userId'] = this.userId;
    data['userType'] = this.userType;
    data['nickname'] = this.nickname;
    data['signature'] = this.signature;
    data['description'] = this.description;
    data['detailDescription'] = this.detailDescription;
    data['avatarImgId'] = this.avatarImgId;
    data['backgroundImgId'] = this.backgroundImgId;
    data['backgroundUrl'] = this.backgroundUrl;
    data['authority'] = this.authority;
    data['mutual'] = this.mutual;
    data['expertTags'] = this.expertTags;
    if (this.experts != null) {
      data['experts'] = this.experts!.toJson();
    }
    data['djStatus'] = this.djStatus;
    data['vipType'] = this.vipType;
    data['remarkName'] = this.remarkName;
    data['authenticationTypes'] = this.authenticationTypes;
    if (this.avatarDetail != null) {
      data['avatarDetail'] = this.avatarDetail!.toJson();
    }
    data['anchor'] = this.anchor;
    data['avatarImgIdStr'] = this.avatarImgIdStr;
    data['backgroundImgIdStr'] = this.backgroundImgIdStr;
    data['avatarImgId_str'] = this.avatarImgIdStr;
    return data;
  }
}

class Experts {
  String? s1;
  String? s2;

  Experts({this.s1, this.s2});

  Experts.fromJson(Map<String, dynamic> json) {
    s1 = json['1'];
    s2 = json['2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1'] = this.s1;
    data['2'] = this.s2;
    return data;
  }
}

class Tracks {
  String? name;
  int? id;
  int? pst;
  int? t;
  List<Ar>? ar;
  List<String>? alia;
  int? pop;
  int? st;
  String? rt;
  int? fee;
  int? v;
  String? crbt;
  String? cf;
  Al? al;
  int? dt;
  H? h;
  M? m;
  M? l;
  M? sq;
  M? hr;
  String? a;
  String? cd;
  int? no;
  String? rtUrl;
  int? ftype;
  List<Null>? rtUrls;
  int? djId;
  int? copyright;
  int? sId;
  int? mark;
  int? originCoverType;
  dynamic? originSongSimpleData;
  String? tagPicList;
  bool? resourceState;
  int? version;
  String? songJumpInfo;
  String? entertainmentTags;
  int? single;
  dynamic? noCopyrightRcmd;
  int? mst;
  int? cp;
  int? mv;
  int? rtype;
  String? rurl;
  int? publishTime;
  List<String>? tns;

  Tracks(
      {this.name,
      this.id,
      this.pst,
      this.t,
      this.ar,
      this.alia,
      this.pop,
      this.st,
      this.rt,
      this.fee,
      this.v,
      this.crbt,
      this.cf,
      this.al,
      this.dt,
      this.h,
      this.m,
      this.l,
      this.sq,
      this.hr,
      this.a,
      this.cd,
      this.no,
      this.rtUrl,
      this.ftype,
      this.rtUrls,
      this.djId,
      this.copyright,
      this.sId,
      this.mark,
      this.originCoverType,
      this.originSongSimpleData,
      this.tagPicList,
      this.resourceState,
      this.version,
      this.songJumpInfo,
      this.entertainmentTags,
      this.single,
      this.noCopyrightRcmd,
      this.mst,
      this.cp,
      this.mv,
      this.rtype,
      this.rurl,
      this.publishTime,
      this.tns});

  Tracks.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    pst = json['pst'];
    t = json['t'];
    if (json['ar'] != null) {
      ar = <Ar>[];
      json['ar'].forEach((v) {
        ar!.add(new Ar.fromJson(v));
      });
    }
    pop = json['pop'];
    st = json['st'];
    rt = json['rt'];
    fee = json['fee'];
    v = json['v'];
    crbt = json['crbt'];
    cf = json['cf'];
    al = json['al'] != null ? new Al.fromJson(json['al']) : null;
    dt = json['dt'];
    h = json['h'] != null ? new H.fromJson(json['h']) : null;
    m = json['m'] != null ? new M.fromJson(json['m']) : null;
    l = json['l'] != null ? new M.fromJson(json['l']) : null;
    sq = json['sq'] != null ? new M.fromJson(json['sq']) : null;
    hr = json['hr'] != null ? new M.fromJson(json['hr']) : null;
    a = json['a'];
    cd = json['cd'];
    no = json['no'];
    rtUrl = json['rtUrl'];
    ftype = json['ftype'];
    if (json['rtUrls'] != null) {}
    djId = json['djId'];
    copyright = json['copyright'];
    sId = json['s_id'];
    mark = json['mark'];
    originCoverType = json['originCoverType'];
    originSongSimpleData = json['originSongSimpleData'];
    tagPicList = json['tagPicList'];
    resourceState = json['resourceState'];
    version = json['version'];
    songJumpInfo = json['songJumpInfo'];
    entertainmentTags = json['entertainmentTags'];
    single = json['single'];
    noCopyrightRcmd = json['noCopyrightRcmd'];
    mst = json['mst'];
    cp = json['cp'];
    mv = json['mv'];
    rtype = json['rtype'];
    rurl = json['rurl'];
    publishTime = json['publishTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['pst'] = this.pst;
    data['t'] = this.t;
    if (this.ar != null) {
      data['ar'] = this.ar!.map((v) => v.toJson()).toList();
    }
    data['alia'] = this.alia;
    data['pop'] = this.pop;
    data['st'] = this.st;
    data['rt'] = this.rt;
    data['fee'] = this.fee;
    data['v'] = this.v;
    data['crbt'] = this.crbt;
    data['cf'] = this.cf;
    if (this.al != null) {
      data['al'] = this.al!.toJson();
    }
    data['dt'] = this.dt;
    if (this.h != null) {
      data['h'] = this.h!.toJson();
    }
    if (this.m != null) {
      data['m'] = this.m!.toJson();
    }
    if (this.l != null) {
      data['l'] = this.l!.toJson();
    }
    if (this.sq != null) {
      data['sq'] = this.sq!.toJson();
    }
    if (this.hr != null) {
      data['hr'] = this.hr!.toJson();
    }
    data['a'] = this.a;
    data['cd'] = this.cd;
    data['no'] = this.no;
    data['rtUrl'] = this.rtUrl;
    data['ftype'] = this.ftype;
    if (this.rtUrls != null) {}
    data['djId'] = this.djId;
    data['copyright'] = this.copyright;
    data['s_id'] = this.sId;
    data['mark'] = this.mark;
    data['originCoverType'] = this.originCoverType;
    data['originSongSimpleData'] = this.originSongSimpleData;
    data['tagPicList'] = this.tagPicList;
    data['resourceState'] = this.resourceState;
    data['version'] = this.version;
    data['songJumpInfo'] = this.songJumpInfo;
    data['entertainmentTags'] = this.entertainmentTags;
    data['single'] = this.single;
    data['noCopyrightRcmd'] = this.noCopyrightRcmd;
    data['mst'] = this.mst;
    data['cp'] = this.cp;
    data['mv'] = this.mv;
    data['rtype'] = this.rtype;
    data['rurl'] = this.rurl;
    data['publishTime'] = this.publishTime;
    data['tns'] = this.tns;
    return data;
  }
}

class Ar {
  int? id;
  String? name;
  List<Null>? tns;
  List<Null>? alias;

  Ar({this.id, this.name, this.tns, this.alias});

  Ar.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['tns'] != null) {}
    if (json['alias'] != null) {}
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.tns != null) {}
    if (this.alias != null) {}
    return data;
  }
}

class Al {
  int? id;
  String? name;
  String? picUrl;
  List<Null>? tns;
  int? pic;
  String? picStr;

  Al({this.id, this.name, this.picUrl, this.tns, this.pic, this.picStr});

  Al.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    picUrl = json['picUrl'];
    if (json['tns'] != null) {}
    pic = json['pic'];
    picStr = json['pic_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['picUrl'] = this.picUrl;
    if (this.tns != null) {}
    data['pic'] = this.pic;
    data['pic_str'] = this.picStr;
    return data;
  }
}

class H {
  int? br;
  int? fid;
  int? size;
  dynamic? vd;
  int? sr;

  H({this.br, this.fid, this.size, this.vd, this.sr});

  H.fromJson(Map<String, dynamic> json) {
    br = json['br'];
    fid = json['fid'];
    size = json['size'];
    vd = json['vd'];
    sr = json['sr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['br'] = this.br;
    data['fid'] = this.fid;
    data['size'] = this.size;
    data['vd'] = this.vd;
    data['sr'] = this.sr;
    return data;
  }
}

class M {
  int? br;
  int? fid;
  int? size;
  dynamic? vd;
  int? sr;

  M({this.br, this.fid, this.size, this.vd, this.sr});

  M.fromJson(Map<String, dynamic> json) {
    br = json['br'];
    fid = json['fid'];
    size = json['size'];
    vd = json['vd'];
    sr = json['sr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['br'] = this.br;
    data['fid'] = this.fid;
    data['size'] = this.size;
    data['vd'] = this.vd;
    data['sr'] = this.sr;
    return data;
  }
}

class TrackIds {
  int? id;
  int? v;
  int? t;
  int? at;
  String? alg;
  int? uid;
  String? rcmdReason;
  String? sc;
  String? f;
  String? sr;

  TrackIds(
      {this.id,
      this.v,
      this.t,
      this.at,
      this.alg,
      this.uid,
      this.rcmdReason,
      this.sc,
      this.f,
      this.sr});

  TrackIds.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    v = json['v'];
    t = json['t'];
    at = json['at'];
    alg = json['alg'];
    uid = json['uid'];
    rcmdReason = json['rcmdReason'];
    sc = json['sc'];
    f = json['f'];
    sr = json['sr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['v'] = this.v;
    data['t'] = this.t;
    data['at'] = this.at;
    data['alg'] = this.alg;
    data['uid'] = this.uid;
    data['rcmdReason'] = this.rcmdReason;
    data['sc'] = this.sc;
    data['f'] = this.f;
    data['sr'] = this.sr;
    return data;
  }
}

class Privileges {
  int? id;
  int? fee;
  int? payed;
  int? realPayed;
  int? st;
  int? pl;
  int? dl;
  int? sp;
  int? cp;
  int? subp;
  bool? cs;
  int? maxbr;
  int? fl;
  String? pc;
  bool? toast;
  int? flag;
  bool? paidBigBang;
  bool? preSell;
  int? playMaxbr;
  int? downloadMaxbr;
  String? maxBrLevel;
  String? playMaxBrLevel;
  String? downloadMaxBrLevel;
  String? plLevel;
  String? dlLevel;
  String? flLevel;
  String? rscl;
  FreeTrialPrivilege? freeTrialPrivilege;
  List<ChargeInfoList>? chargeInfoList;

  Privileges(
      {this.id,
      this.fee,
      this.payed,
      this.realPayed,
      this.st,
      this.pl,
      this.dl,
      this.sp,
      this.cp,
      this.subp,
      this.cs,
      this.maxbr,
      this.fl,
      this.pc,
      this.toast,
      this.flag,
      this.paidBigBang,
      this.preSell,
      this.playMaxbr,
      this.downloadMaxbr,
      this.maxBrLevel,
      this.playMaxBrLevel,
      this.downloadMaxBrLevel,
      this.plLevel,
      this.dlLevel,
      this.flLevel,
      this.rscl,
      this.freeTrialPrivilege,
      this.chargeInfoList});

  Privileges.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fee = json['fee'];
    payed = json['payed'];
    realPayed = json['realPayed'];
    st = json['st'];
    pl = json['pl'];
    dl = json['dl'];
    sp = json['sp'];
    cp = json['cp'];
    subp = json['subp'];
    cs = json['cs'];
    maxbr = json['maxbr'];
    fl = json['fl'];
    pc = json['pc'];
    toast = json['toast'];
    flag = json['flag'];
    paidBigBang = json['paidBigBang'];
    preSell = json['preSell'];
    playMaxbr = json['playMaxbr'];
    downloadMaxbr = json['downloadMaxbr'];
    maxBrLevel = json['maxBrLevel'];
    playMaxBrLevel = json['playMaxBrLevel'];
    downloadMaxBrLevel = json['downloadMaxBrLevel'];
    plLevel = json['plLevel'];
    dlLevel = json['dlLevel'];
    flLevel = json['flLevel'];
    rscl = json['rscl'];
    freeTrialPrivilege = json['freeTrialPrivilege'] != null
        ? new FreeTrialPrivilege.fromJson(json['freeTrialPrivilege'])
        : null;
    if (json['chargeInfoList'] != null) {
      chargeInfoList = <ChargeInfoList>[];
      json['chargeInfoList'].forEach((v) {
        chargeInfoList!.add(new ChargeInfoList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fee'] = this.fee;
    data['payed'] = this.payed;
    data['realPayed'] = this.realPayed;
    data['st'] = this.st;
    data['pl'] = this.pl;
    data['dl'] = this.dl;
    data['sp'] = this.sp;
    data['cp'] = this.cp;
    data['subp'] = this.subp;
    data['cs'] = this.cs;
    data['maxbr'] = this.maxbr;
    data['fl'] = this.fl;
    data['pc'] = this.pc;
    data['toast'] = this.toast;
    data['flag'] = this.flag;
    data['paidBigBang'] = this.paidBigBang;
    data['preSell'] = this.preSell;
    data['playMaxbr'] = this.playMaxbr;
    data['downloadMaxbr'] = this.downloadMaxbr;
    data['maxBrLevel'] = this.maxBrLevel;
    data['playMaxBrLevel'] = this.playMaxBrLevel;
    data['downloadMaxBrLevel'] = this.downloadMaxBrLevel;
    data['plLevel'] = this.plLevel;
    data['dlLevel'] = this.dlLevel;
    data['flLevel'] = this.flLevel;
    data['rscl'] = this.rscl;
    if (this.freeTrialPrivilege != null) {
      data['freeTrialPrivilege'] = this.freeTrialPrivilege!.toJson();
    }
    if (this.chargeInfoList != null) {
      data['chargeInfoList'] =
          this.chargeInfoList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FreeTrialPrivilege {
  bool? resConsumable;
  bool? userConsumable;
  String? listenType;

  FreeTrialPrivilege(
      {this.resConsumable, this.userConsumable, this.listenType});

  FreeTrialPrivilege.fromJson(Map<String, dynamic> json) {
    resConsumable = json['resConsumable'];
    userConsumable = json['userConsumable'];
    listenType = json['listenType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resConsumable'] = this.resConsumable;
    data['userConsumable'] = this.userConsumable;
    data['listenType'] = this.listenType;
    return data;
  }
}

class ChargeInfoList {
  int? rate;
  String? chargeUrl;
  String? chargeMessage;
  int? chargeType;

  ChargeInfoList(
      {this.rate, this.chargeUrl, this.chargeMessage, this.chargeType});

  ChargeInfoList.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    chargeUrl = json['chargeUrl'];
    chargeMessage = json['chargeMessage'];
    chargeType = json['chargeType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rate'] = this.rate;
    data['chargeUrl'] = this.chargeUrl;
    data['chargeMessage'] = this.chargeMessage;
    data['chargeType'] = this.chargeType;
    return data;
  }
}
