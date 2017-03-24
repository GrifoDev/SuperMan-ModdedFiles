.class public Lcom/android/systemui/volume/MediaSessions;
.super Ljava/lang/Object;
.source "MediaSessions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/MediaSessions$1;,
        Lcom/android/systemui/volume/MediaSessions$2;,
        Lcom/android/systemui/volume/MediaSessions$Callbacks;,
        Lcom/android/systemui/volume/MediaSessions$H;,
        Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/systemui/volume/MediaSessions$H;

.field private mInit:Z

.field private final mMgr:Landroid/media/session/MediaSessionManager;

.field private final mRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/media/session/MediaSession$Token;",
            "Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsLock:Ljava/lang/Object;

.field private final mRvc:Landroid/media/IRemoteVolumeController;

.field private final mSessionsListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/MediaSessions;)Lcom/android/systemui/volume/MediaSessions$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/MediaSessions;)Lcom/android/systemui/volume/MediaSessions$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mHandler:Lcom/android/systemui/volume/MediaSessions$H;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/MediaSessions;)Landroid/media/session/MediaSessionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/session/MediaController$PlaybackInfo;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/volume/MediaSessions;->isRemote(Landroid/media/session/MediaController$PlaybackInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/ISessionController;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/MediaSessions;->onRemoteVolumeChangedH(Landroid/media/session/ISessionController;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/ISessionController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/MediaSessions;->onUpdateRemoteControllerH(Landroid/media/session/ISessionController;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/MediaSessions;->updateRemoteH(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/volume/MediaSessions;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mRecordsLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/volume/MediaSessions$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/MediaSessions$1;-><init>(Lcom/android/systemui/volume/MediaSessions;)V

    iput-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mSessionsListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    new-instance v0, Lcom/android/systemui/volume/MediaSessions$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/MediaSessions$2;-><init>(Lcom/android/systemui/volume/MediaSessions;)V

    iput-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mRvc:Landroid/media/IRemoteVolumeController;

    iput-object p1, p0, Lcom/android/systemui/volume/MediaSessions;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/volume/MediaSessions$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/systemui/volume/MediaSessions$H;-><init>(Lcom/android/systemui/volume/MediaSessions;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$H;)V

    iput-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mHandler:Lcom/android/systemui/volume/MediaSessions$H;

    const-string/jumbo v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    iput-object p3, p0, Lcom/android/systemui/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

    return-void
.end method

.method private static dump(ILjava/io/PrintWriter;Landroid/media/session/MediaController;)V
    .locals 18

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "  Controller "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "    PlaybackState: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v9}, Lcom/android/systemui/volume/Util;->playbackStateToString(Landroid/media/session/PlaybackState;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "    PlaybackInfo: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Lcom/android/systemui/volume/Util;->playbackInfoToString(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v7, :cond_0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "  MediaMetadata.desc="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "    RatingType: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "    Flags: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string/jumbo v16, "    Extras:"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "      "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v13, :cond_2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "    QueueTitle: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_5

    :cond_3
    if-eqz v8, :cond_4

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "    sessionActivity: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v16, "    Queue:"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/session/MediaSession$QueueItem;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "      "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static isRemote(Landroid/media/session/MediaController$PlaybackInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onRemoteVolumeChangedH(Landroid/media/session/ISessionController;I)V
    .locals 5

    new-instance v0, Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/volume/MediaSessions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remoteVolumeChangedH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/systemui/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

    invoke-interface {v2, v1, p2}, Lcom/android/systemui/volume/MediaSessions$Callbacks;->onRemoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V

    return-void
.end method

.method private onUpdateRemoteControllerH(Landroid/media/session/ISessionController;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/volume/MediaSessions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRemoteControllerH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/MediaSessions;->postUpdateSessions()V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRemoteH(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/volume/MediaSessions$Callbacks;->onRemoteUpdate(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/volume/MediaSessions;->mRecordsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/volume/MediaSessions;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " state:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "  mInit: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/MediaSessions;->mInit:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v3, "  mRecords.size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->-get0(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/android/systemui/volume/MediaSessions;->dump(ILjava/io/PrintWriter;Landroid/media/session/MediaController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    monitor-exit v4

    return-void
.end method

.method protected getControllerName(Landroid/media/session/MediaController;)Ljava/lang/String;
    .locals 7

    iget-object v5, p0, Lcom/android/systemui/volume/MediaSessions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    return-object v1

    :catch_0
    move-exception v2

    :cond_0
    return-object v3
.end method

.method public init()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions;->mSessionsListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v2, p0, Lcom/android/systemui/volume/MediaSessions;->mHandler:Lcom/android/systemui/volume/MediaSessions$H;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/MediaSessions;->mInit:Z

    invoke-virtual {p0}, Lcom/android/systemui/volume/MediaSessions;->postUpdateSessions()V

    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions;->mRvc:Landroid/media/IRemoteVolumeController;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    return-void
.end method

.method protected onActiveSessionsUpdatedH(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    iget-object v10, p0, Lcom/android/systemui/volume/MediaSessions;->mRecordsLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onActiveSessionsUpdatedH n="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v7, Ljava/util/HashSet;

    iget-object v9, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v8

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v2

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v3, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    const/4 v9, 0x0

    invoke-direct {v3, p0, v0, v9}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;-><init>(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/MediaController;Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/MediaSessions;->getControllerName(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->-set0(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/systemui/volume/MediaSessions;->mHandler:Lcom/android/systemui/volume/MediaSessions$H;

    invoke-virtual {v0, v3, v9}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    invoke-static {v2}, Lcom/android/systemui/volume/MediaSessions;->isRemote(Landroid/media/session/MediaController$PlaybackInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->-get1(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9, v2}, Lcom/android/systemui/volume/MediaSessions;->updateRemoteH(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V

    const/4 v9, 0x1

    invoke-static {v3, v9}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->-set1(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_3
    :try_start_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/session/MediaSession$Token;

    iget-object v9, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    invoke-static {v3}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->-get0(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Landroid/media/session/MediaController;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v9, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v9, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Removing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->-get1(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " sentRemote="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->-get2(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v3}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->-get2(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/MediaSessions$Callbacks;

    invoke-interface {v9, v5}, Lcom/android/systemui/volume/MediaSessions$Callbacks;->onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V

    const/4 v9, 0x0

    invoke-static {v3, v9}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->-set1(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    monitor-exit v10

    return-void
.end method

.method protected postUpdateSessions()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/MediaSessions;->mInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions;->mHandler:Lcom/android/systemui/volume/MediaSessions$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/MediaSessions$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setVolume(Landroid/media/session/MediaSession$Token;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/volume/MediaSessions;->mRecordsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions;->mRecords:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVolume: No record found for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting level to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;->-get0(Lcom/android/systemui/volume/MediaSessions$MediaControllerRecord;)Landroid/media/session/MediaController;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/media/session/MediaController;->setVolumeTo(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
