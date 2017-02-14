.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorderManager.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.phone.callsettings"

.field private static final AUTO_RECORD_CALL_SETTING:Ljava/lang/String; = "record_calls_automatically_on_off"

.field private static final AUTO_RECORD_CALL_SETTING_TYPE:Ljava/lang/String; = "record_calls_automatically_type"

.field public static final ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

.field public static final ENHANCED_SELECTED_NUMBER:Ljava/lang/String; = "enhanced_selected_number"

.field public static final ENHANCED_SELECTED_TABLE:Ljava/lang/String; = "enhanced_selected_table"

.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "notification_type"

.field public static final RECORD_INFO_STATE_CHANGED:I = 0xc9

.field public static VOICE_CALL_RECORDING_NOTIFY_DURATION_SEC:I

.field private static mAutoRecordedCall:Lcom/android/incallui/Call;

.field private static mRecordedCall:Lcom/android/incallui/Call;

.field private static mediaPlayer:Landroid/media/MediaPlayer;

.field private static sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;


# instance fields
.field final FROM:[Ljava/lang/String;

.field private mLastClickedTime:J

.field private mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

.field private mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

.field private mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x78

    sput v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->VOICE_CALL_RECORDING_NOTIFY_DURATION_SEC:I

    const-string v0, "content://com.android.phone.callsettings/enhanced_selected_table"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/telecom/InCallService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "enhanced_selected_number"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->FROM:[Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-direct {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->startService(Landroid/telecom/InCallService;)V

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    sput-object p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    return-void
.end method

.method static synthetic access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    sput-object p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private getAutoRecordType()I
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "record_calls_automatically_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    .locals 2

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    if-nez v0, :cond_0

    const-string v0, "PhoneVoiceRecorderManager"

    const-string v1, "getInstance() : is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    return-object v0
.end method

.method private getOriginalNumber(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const-string v1, ""

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contactCacheEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private isAutoRecordOn()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "record_calls_automatically_on_off"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isAutoRecordTarget(Lcom/android/incallui/Call;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isAutoRecordOn()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->canRecord(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mAutoRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getAutoRecordType()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getOriginalNumber(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isTargetNumber(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isTargetNumber(Ljava/lang/String;)Z
    .locals 12

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id desc"

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "isAutoRecordTarget : number is target - true"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v10

    :goto_0
    return v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isAutoRecordTarget : number is not target - false"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v11

    goto :goto_0

    :cond_4
    const-string v0, "isAutoRecordTarget : cursor is NULL or  cursor.moveToFirst() is fail."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v11

    goto :goto_0
.end method

.method public static makeBeepSound(J)V
    .locals 10

    const-string v6, "voice_call_recording"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "notice_sound_for_voice_recording"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    sget v8, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->VOICE_CALL_RECORDING_NOTIFY_DURATION_SEC:I

    int-to-long v8, v8

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    const-string v5, "android.resource://com.android.phone/raw/"

    const-string v2, "guidance_beep"

    const-string v1, "android.resource://com.android.phone/raw/guidance_beep"

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    sget-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V

    sget-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_2
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    :try_start_0
    sget-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const-string v7, "android.resource://com.android.phone/raw/guidance_beep"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    sget-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v7, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$1;

    invoke-direct {v7}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$1;-><init>()V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v7, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$2;

    invoke-direct {v7}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$2;-><init>()V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v6, "PhoneVoiceRecorderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeBeepSound: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private startAutoRecord(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {p0, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->hasEnoughStorage(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->showRecordNoti(I)V

    goto :goto_0

    :cond_1
    const-string v0, "startAutoRecord"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->checkStorage(I)V

    sput-object p1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mAutoRecordedCall:Lcom/android/incallui/Call;

    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private startManualRecord(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {p0, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->hasEnoughStorage(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->showRecordNoti(I)V

    goto :goto_0

    :cond_1
    const-string v0, "startManualRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->checkStorage(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private startRecord(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "startRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sput-object p1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->updateRecorderCallerInfo(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->startRecord()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    :cond_1
    const v0, 0x7f090205

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_0
.end method


# virtual methods
.method public canRecord(Lcom/android/incallui/Call;)Z
    .locals 7

    const/16 v6, 0xd

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v2, v4, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v6, :cond_5

    :cond_4
    const-string v2, "CHN emergency call state is dialing, disable record button"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v5, :cond_6

    const-string v2, "can not start record during onHold"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isKioskMode()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const-string v2, "callForwarding is enabled, disable record button"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_8
    const-string v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEncryptionMode()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "isEncryptionMode, disable record button"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_c
    const-string v2, "isNotUpdatingCall - when conference call is disconnecting, disable record button"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1
.end method

.method public getRecordTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->getRecordTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasEnoughStorage(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->hasEnoughStorage(I)Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isShowRecordInfo(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    goto :goto_0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect : mRecordedCall : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    :cond_2
    sput-object v2, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    sput-object v2, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mAutoRecordedCall:Lcom/android/incallui/Call;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->clearStorageChkMsg()V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onRecorderStateChanged()V
    .locals 14

    const/4 v11, 0x0

    const-string v12, "voice_call_recording"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v11, "blocked when not defined VOICE_CALL_RECORDING feature"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v12, "support_tphone"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v11, "blocked in the tphone mode."

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v11}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isAutoRecordTarget(Lcom/android/incallui/Call;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startAutoRecord(Lcom/android/incallui/Call;)V

    :cond_3
    sget-object v12, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    if-eqz v12, :cond_a

    sget-object v12, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {v12}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/16 v13, 0xb

    if-eq v12, v13, :cond_a

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mRecordedCall : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "call : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->canRecord(Lcom/android/incallui/Call;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090242

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v12

    if-eqz v12, :cond_b

    if-eqz v7, :cond_b

    move-object v8, v7

    :goto_2
    iget-object v9, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "contactCacheEntry : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_4

    iget-object v12, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v12, v8}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->setCallerName(Ljava/lang/String;)V

    :cond_4
    if-eqz v9, :cond_5

    iget-object v12, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v12, v9}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->setCallerNumber(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->resumeRecord()V

    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isShowRecordInfo(Lcom/android/incallui/Call;)Z

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onRecorderStateChanged - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", showRecordInfo = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", canRecord = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isRecording()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isPaused="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v10, :cond_7

    const/4 v11, 0x1

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v12

    invoke-interface {v3, v11, v12}, Lcom/android/incallui/CallCardUi;->manageRecordInfo(ZZ)V

    :cond_8
    if-eqz v2, :cond_9

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonUi;->updateRecordButton(Z)V

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    goto/16 :goto_1

    :cond_b
    iget-object v8, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/4 v13, 0x6

    if-eq v12, v13, :cond_d

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_6

    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->pauseRecord()V

    goto/16 :goto_3
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public pauseRecord()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pauseRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->pauseRecord()V

    goto :goto_0
.end method

.method public resumeRecord()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "resumeRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->resumeRecord()V

    goto :goto_0
.end method

.method public showRecordNoti(I)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->animateForHide()V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "notification_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public startService(Landroid/telecom/InCallService;)V
    .locals 0

    return-void
.end method

.method public stopRecord()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "stopRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->stopRecord()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_0
.end method

.method public stopService()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->stopService()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    sput-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    sput-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mAutoRecordedCall:Lcom/android/incallui/Call;

    return-void
.end method

.method public toggleRecord()V
    .locals 8

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mLastClickedTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleRecord() : Ignored button clicked in time - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mLastClickedTime:J

    sub-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_1

    :cond_2
    iput-wide v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mLastClickedTime:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleRecord(): state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    const-string v1, "stopRecord() : "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startManualRecord(Lcom/android/incallui/Call;)V

    goto :goto_2
.end method

.method public updateRecorderCallerInfo(Lcom/android/incallui/Call;)V
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090242

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    move-object v2, v1

    :goto_0
    iget-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRecorderCallerInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v4, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->setCallerName(Ljava/lang/String;)V

    :cond_0
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v4, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->setCallerNumber(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateRecorderState()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0xc9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
