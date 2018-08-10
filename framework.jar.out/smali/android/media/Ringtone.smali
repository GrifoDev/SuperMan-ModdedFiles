.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Ringtone$MyOnCompletionListener;,
        Landroid/media/Ringtone$RingtoneInfo;
    }
.end annotation


# static fields
.field public static final AUDIO_NO_FADE:Ljava/lang/String; = "NOFADE"

.field public static final AUDIO_STREAM_RING:Ljava/lang/String; = "AUDIO_STREAM_RING"

.field private static final LOGD:Z = true

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_SELECTION:Ljava/lang/String; = "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"

.field private static final TAG:Ljava/lang/String; = "Ringtone"

.field private static final sActiveRingtones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/Ringtone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllowRemote:Z

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

.field private final mContext:Landroid/content/Context;

.field private mIsLooping:Z

.field private final mIsRingtonePicker:Z

.field private final mIsSettingPkg:Z

.field private final mIsTelecomPkg:Z

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private final mPlaybackSettingsLock:Ljava/lang/Object;

.field private final mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final mRemoteToken:Landroid/os/Binder;

.field private mRingtoneInfo:Landroid/media/Ringtone$RingtoneInfo;

.field private mSecForSeek:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUriStatus:Z

.field private mVolume:F


# direct methods
.method static synthetic -get0()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/media/Ringtone$MyOnCompletionListener;

    invoke-direct {v1, p0}, Landroid/media/Ringtone$MyOnCompletionListener;-><init>(Landroid/media/Ringtone;)V

    iput-object v1, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    iput-boolean v4, p0, Landroid/media/Ringtone;->mIsLooping:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/Ringtone;->mVolume:F

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    iput v4, p0, Landroid/media/Ringtone;->mSecForSeek:I

    iput-object v2, p0, Landroid/media/Ringtone;->mRingtoneInfo:Landroid/media/Ringtone$RingtoneInfo;

    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz p2, :cond_0

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    :cond_0
    iput-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.server.telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/Ringtone;->mIsTelecomPkg:Z

    const-string/jumbo v1, "com.android.providers.media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/Ringtone;->mIsRingtonePicker:Z

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/Ringtone;->mIsSettingPkg:Z

    iput-boolean v4, p0, Landroid/media/Ringtone;->mUriStatus:Z

    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method private applyPlaybackProperties_sync()V
    .locals 5

    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Landroid/media/Ringtone;->mVolume:F

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-boolean v2, p0, Landroid/media/Ringtone;->mIsLooping:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget v3, p0, Landroid/media/Ringtone;->mVolume:F

    iget-boolean v4, p0, Landroid/media/Ringtone;->mIsLooping:Z

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IRingtonePlayer;->setPlaybackProperties(Landroid/os/IBinder;FZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Ringtone"

    const-string/jumbo v2, "Problem setting playback properties: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "Ringtone"

    const-string/jumbo v2, "Neither local nor remote player available when applying playback properties"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkDecryptionMode()Z
    .locals 3

    :try_start_0
    const-string/jumbo v1, "trigger_restart_min_framework"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "Ringtone"

    const-string/jumbo v2, "Inside Japan Flag for Decrypt Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private destroyLocalPlayer()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getActualUri()Landroid/net/Uri;
    .locals 4

    iget-object v1, p0, Landroid/media/Ringtone;->mRingtoneInfo:Landroid/media/Ringtone$RingtoneInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone;->mRingtoneInfo:Landroid/media/Ringtone$RingtoneInfo;

    invoke-virtual {v1}, Landroid/media/Ringtone$RingtoneInfo;->isExternalRingtone()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Internal uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v1

    :cond_1
    iget-boolean v1, p0, Landroid/media/Ringtone;->mIsTelecomPkg:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "External Storage"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Landroid/media/Ringtone;->mRingtoneInfo:Landroid/media/Ringtone$RingtoneInfo;

    invoke-virtual {v1}, Landroid/media/Ringtone$RingtoneInfo;->isUsingRingtoneCache()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mRingtoneInfo:Landroid/media/Ringtone$RingtoneInfo;

    invoke-virtual {v2}, Landroid/media/Ringtone$RingtoneInfo;->getType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->isDRMRingtone(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mRingtoneInfo:Landroid/media/Ringtone$RingtoneInfo;

    invoke-virtual {v2}, Landroid/media/Ringtone$RingtoneInfo;->getType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current uri is DRM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    const-string/jumbo v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "External uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v1
.end method

.method public static getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v16, 0x0

    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v3, "settings"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v9, v3, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const v4, 0x10408cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    :cond_0
    :goto_0
    if-nez v16, :cond_1

    const v3, 0x10408d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_1

    const-string/jumbo v16, ""

    :cond_1
    return-object v16

    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/media/RingtoneManager;->getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    :try_start_0
    const-string/jumbo v3, "media"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p3, :cond_5

    const/4 v5, 0x0

    :goto_1
    sget-object v4, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v12, 0x0

    return-object v3

    :cond_5
    :try_start_1
    const-string/jumbo v5, "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_2
    const/4 v12, 0x0

    if-nez v16, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    :catch_0
    move-exception v13

    const/4 v14, 0x0

    if-eqz p3, :cond_8

    :try_start_2
    const-string/jumbo v3, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    :cond_8
    if-eqz v14, :cond_9

    :try_start_3
    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Landroid/media/IRingtonePlayer;->getTitle(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v16

    :cond_9
    :goto_3
    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_1
    move-exception v15

    goto :goto_3

    :catchall_0
    move-exception v3

    if-eqz v12, :cond_a

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_a
    const/4 v12, 0x0

    throw v3

    :cond_b
    const v3, 0x10408cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0
.end method

.method private isValidUri(Landroid/net/Uri;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    return v8

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v9

    :cond_2
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return v9

    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_0
    return v8

    :catch_0
    move-exception v7

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private playFallbackRingtone()Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v9

    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    invoke-direct {p0}, Landroid/media/Ringtone;->checkDecryptionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mRingtoneInfo:Landroid/media/Ringtone$RingtoneInfo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/media/Ringtone;->mRingtoneInfo:Landroid/media/Ringtone$RingtoneInfo;

    invoke-virtual {v0}, Landroid/media/Ringtone$RingtoneInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_0
    const/4 v6, 0x0

    if-eq v9, v11, :cond_1

    const/16 v0, 0x80

    if-ne v9, v0, :cond_2

    :cond_1
    :try_start_0
    const-string/jumbo v0, "Ringtone"

    const-string/jumbo v1, "play fallbackring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_5

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_1
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    return v11

    :cond_2
    const-string/jumbo v0, "Ringtone"

    const-string/jumbo v1, "play fallbacknoti"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1100029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    const-string/jumbo v0, "Ringtone"

    const-string/jumbo v1, "Failed to open fallback ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return v10

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v8

    const-string/jumbo v0, "Ringtone"

    const-string/jumbo v1, "Fallback ringtone does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :try_start_4
    const-string/jumbo v0, "Ringtone"

    const-string/jumbo v1, "Could not load fallback ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "Ringtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not playing fallback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private startLocalPlayer()V
    .locals 2

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Problem isPlaying ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v2, v3}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Problem checking ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    const-string/jumbo v2, "Ringtone"

    const-string/jumbo v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public play()V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/Ringtone;->getStreamType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Landroid/media/Ringtone;->mSecForSeek:I

    if-lez v0, :cond_1

    const-string/jumbo v0, "Ringtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "play()_jump to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/media/Ringtone;->mSecForSeek:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "mSec"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/media/Ringtone;->mSecForSeek:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iput v8, p0, Landroid/media/Ringtone;->mSecForSeek:I

    :cond_1
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v5, p0, Landroid/media/Ringtone;->mIsLooping:Z

    iget v4, p0, Landroid/media/Ringtone;->mVolume:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :try_start_1
    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-interface/range {v0 .. v5}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "Ringtone"

    const-string/jumbo v1, "IlligalStateException Occured in MediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v6

    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Ringtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Problem playing ringtone: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Ringtone"

    const-string/jumbo v1, "Neither local nor remote playback available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public semIsUriValid()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/Ringtone;->mUriStatus:Z

    return v0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid null AudioAttributes for Ringtone"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    return-void
.end method

.method public setLooping(Z)V
    .locals 2

    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setRepeat(Z)V
    .locals 1

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setSecForSeek(I)V
    .locals 0

    iput p1, p0, Landroid/media/Ringtone;->mSecForSeek:I

    return-void
.end method

.method public setStreamType(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "Ringtone"

    const-string/jumbo v1, "setStreamType()"

    invoke-static {p1, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Landroid/media/Ringtone;->mRingtoneInfo:Landroid/media/Ringtone$RingtoneInfo;

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/media/Ringtone$RingtoneInfo;->parse(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone$RingtoneInfo;

    move-result-object v3

    iput-object v3, p0, Landroid/media/Ringtone;->mRingtoneInfo:Landroid/media/Ringtone$RingtoneInfo;

    :cond_1
    iget-object v3, p0, Landroid/media/Ringtone;->mRingtoneInfo:Landroid/media/Ringtone$RingtoneInfo;

    invoke-virtual {v3}, Landroid/media/Ringtone$RingtoneInfo;->getHighlightOffset()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iput v1, p0, Landroid/media/Ringtone;->mSecForSeek:I

    :cond_2
    iget-boolean v3, p0, Landroid/media/Ringtone;->mIsTelecomPkg:Z

    if-eqz v3, :cond_4

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    iget-object v4, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v3, v4}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    const-string/jumbo v4, "AUDIO_STREAM_RING"

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    iput-object v3, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    :cond_3
    :goto_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v3, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/media/Ringtone;->getActualUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v3, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object v3, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    iget-object v3, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/Ringtone;->mUriStatus:Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    iget-object v3, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_8

    const-string/jumbo v3, "Ringtone"

    const-string/jumbo v4, "Successfully created local player"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2

    :cond_4
    iget-boolean v3, p0, Landroid/media/Ringtone;->mIsRingtonePicker:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Landroid/media/Ringtone;->mIsSettingPkg:Z

    if-eqz v3, :cond_3

    :cond_5
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    iget-object v4, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v3, v4}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    const-string/jumbo v4, "NOFADE"

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    iput-object v3, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3

    throw v4
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    iget-boolean v3, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v3, :cond_6

    const-string/jumbo v3, "Ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Remote playback not allowed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-boolean v3, p0, Landroid/media/Ringtone;->mIsTelecomPkg:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Landroid/media/Ringtone;->isValidUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-boolean v6, p0, Landroid/media/Ringtone;->mUriStatus:Z

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/Ringtone;->mUriStatus:Z

    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    const-string/jumbo v3, "Ringtone"

    const-string/jumbo v4, "Problem opening; delegating to remote player, return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setVolume(F)V
    .locals 2

    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    :try_start_0
    iput p1, p0, Landroid/media/Ringtone;->mVolume:F

    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Problem stopping ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
