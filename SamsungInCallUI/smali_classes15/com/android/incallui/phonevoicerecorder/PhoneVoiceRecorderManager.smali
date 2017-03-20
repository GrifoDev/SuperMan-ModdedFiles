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
.field private final ACTION_TOGGLE:Ljava/lang/String;

.field final FROM:[Ljava/lang/String;

.field private final PERMISSOIN_TOGGLE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLastClickedTime:J

.field private mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

.field private mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x78

    sput v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->VOICE_CALL_RECORDING_NOTIFY_DURATION_SEC:I

    .line 68
    const-string v0, "content://com.android.phone.callsettings/enhanced_selected_table"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/telecom/InCallService;)V
    .locals 5
    .param p1, "inCallService"    # Landroid/telecom/InCallService;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "enhanced_selected_number"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->FROM:[Ljava/lang/String;

    .line 72
    const-string v1, "com.samsung.android.phone.action.PHONE_VOICE_RECORDER_TOGGLE"

    iput-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->ACTION_TOGGLE:Ljava/lang/String;

    .line 73
    const-string v1, "com.samsung.android.phone.permission.PHONE_VOICE_RECORDER_TOGGLE"

    iput-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->PERMISSOIN_TOGGLE:Ljava/lang/String;

    .line 91
    new-instance v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$1;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    iput-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    .line 110
    new-instance v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-direct {v1, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    iput-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    .line 112
    new-instance v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-direct {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    .line 113
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v1, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->startService(Landroid/telecom/InCallService;)V

    .line 115
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    .line 117
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 118
    sput-object p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    .line 120
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 121
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.samsung.android.phone.permission.PHONE_VOICE_RECORDER_TOGGLE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->toggleRecorderByIntent()V

    return-void
.end method

.method static synthetic access$102(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 57
    sput-object p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 585
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 586
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.phone.action.PHONE_VOICE_RECORDER_TOGGLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    return-object v0
.end method

.method private getAutoRecordType()I
    .locals 3

    .prologue
    .line 503
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

    .prologue
    .line 125
    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    if-nez v0, :cond_0

    const-string v0, "PhoneVoiceRecorderManager"

    const-string v1, "getInstance() : is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    return-object v0
.end method

.method private getOriginalNumber(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 525
    const-string v1, ""

    .line 527
    .local v1, "targetNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 528
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 529
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

    .line 530
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 531
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    .line 535
    :goto_0
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    :cond_0
    return-object v1

    .line 533
    :cond_1
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private isAutoRecordOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 495
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "record_calls_automatically_on_off"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 498
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 496
    goto :goto_0

    :cond_1
    move v0, v1

    .line 498
    goto :goto_0
.end method

.method private isAutoRecordTarget(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 507
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isAutoRecordOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v1

    .line 508
    :cond_1
    if-eqz p1, :cond_0

    .line 509
    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 512
    invoke-virtual {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->canRecord(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    sget-object v2, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    if-nez v2, :cond_0

    .line 514
    sget-object v2, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mAutoRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 515
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getAutoRecordType()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 519
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getOriginalNumber(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "targetNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isTargetNumber(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isTargetNumber(Ljava/lang/String;)Z
    .locals 12
    .param p1, "targetNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 542
    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

    .line 543
    .local v1, "mContentURI":Landroid/net/Uri;
    const-string v5, "_id desc"

    .line 544
    .local v5, "sortOrder":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 546
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 548
    :cond_0
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 549
    .local v8, "id":J
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 551
    .local v7, "num":Ljava/lang/String;
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    const-string v0, "isAutoRecordTarget : number is target - true"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v10

    .line 565
    .end local v7    # "num":Ljava/lang/String;
    .end local v8    # "id":J
    :goto_0
    return v0

    .line 556
    .restart local v7    # "num":Ljava/lang/String;
    .restart local v8    # "id":J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    const-string v0, "isAutoRecordTarget : number is not target - false"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v11

    .line 561
    goto :goto_0

    .line 564
    .end local v7    # "num":Ljava/lang/String;
    .end local v8    # "id":J
    :cond_4
    const-string v0, "isAutoRecordTarget : cursor is NULL or  cursor.moveToFirst() is fail."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v11

    .line 565
    goto :goto_0
.end method

.method private startAutoRecord(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    .line 178
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {p0, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->hasEnoughStorage(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->showRecordNoti(I)V

    goto :goto_0

    .line 186
    :cond_1
    const-string v0, "startAutoRecord"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 187
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->checkStorage(I)V

    .line 188
    sput-object p1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mAutoRecordedCall:Lcom/android/incallui/Call;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private startManualRecord(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x2

    .line 165
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {p0, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->hasEnoughStorage(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->showRecordNoti(I)V

    goto :goto_0

    .line 172
    :cond_1
    const-string v0, "startManualRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 173
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->checkStorage(I)V

    .line 174
    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private startRecord(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v0, "startRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 153
    sput-object p1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    .line 154
    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->updateRecorderCallerInfo(Lcom/android/incallui/Call;)V

    .line 155
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->startRecord()V

    .line 157
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 158
    :cond_1
    const v0, 0x7f09020b

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_0
.end method

.method private toggleRecorderByIntent()V
    .locals 3

    .prologue
    .line 573
    const-string v1, "toggleRecorderByIntent()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v0

    .line 576
    .local v0, "isTPhoneMode":Z
    if-eqz v0, :cond_0

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTphoneMode() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Blocking action - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.samsung.android.phone.action.PHONE_VOICE_RECORDER_TOGGLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->toggleRecord()V

    goto :goto_0
.end method


# virtual methods
.method public canRecord(Lcom/android/incallui/Call;)Z
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v1, 0x0

    .line 252
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 253
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 254
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 255
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 257
    .local v0, "canRecord":Z
    :goto_0
    if-nez v0, :cond_3

    move v0, v1

    .line 290
    .end local v0    # "canRecord":Z
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 255
    goto :goto_0

    .line 259
    .restart local v0    # "canRecord":Z
    :cond_3
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 260
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v2, v4, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 261
    :cond_4
    const-string v2, "CHN emergency call state is dialing, disable record button"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 262
    goto :goto_1

    .line 266
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 267
    const-string v2, "can not start record during onHold"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 268
    goto :goto_1

    .line 271
    :cond_6
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isKioskMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 272
    :cond_7
    const-string v2, "callForwarding is enabled, disable record button"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 273
    goto :goto_1

    .line 276
    :cond_8
    const-string v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    .line 277
    goto :goto_1

    .line 280
    :cond_9
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEncryptionMode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 281
    const-string v2, "isEncryptionMode, disable record button"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 282
    goto :goto_1

    .line 285
    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    :cond_b
    const-string v2, "isNotUpdatingCall - when conference call is disconnecting, disable record button"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 287
    goto/16 :goto_1
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->getRecordTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasEnoughStorage(I)Z
    .locals 1
    .param p1, "recordType"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->hasEnoughStorage(I)Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isShowRecordInfo(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 365
    if-nez p1, :cond_0

    .line 371
    :goto_0
    return v0

    .line 367
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 368
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 369
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 370
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 371
    .local v0, "showRecordInfo":Z
    :cond_2
    goto :goto_0
.end method

.method public makeBeepSound(J)V
    .locals 11
    .param p1, "duration"    # J

    .prologue
    .line 401
    const-string v5, "voice_call_recording"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const-string v5, "notice_sound_for_voice_recording"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 403
    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    sget v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->VOICE_CALL_RECORDING_NOTIFY_DURATION_SEC:I

    int-to-long v8, v5

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 405
    const-string v4, "android.resource://com.android.phone/raw/"

    .line 406
    .local v4, "mGuidanceSound":Ljava/lang/String;
    const-string v2, "guidance_beep"

    .line 407
    .local v2, "beepSound":Ljava/lang/String;
    const-string v1, "android.resource://com.android.phone/raw/guidance_beep"

    .line 409
    .local v1, "beepPath":Ljava/lang/String;
    sget-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 410
    sget-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    .line 411
    sget-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 412
    const/4 v5, 0x0

    sput-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 414
    :cond_2
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 416
    :try_start_0
    sget-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 417
    sget-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    const-string v7, "android.resource://com.android.phone/raw/guidance_beep"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 418
    sget-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 419
    sget-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 420
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 421
    .local v0, "audioManager":Landroid/media/AudioManager;
    sget-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 423
    sget-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$2;

    invoke-direct {v6, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$2;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 437
    sget-object v5, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$3;

    invoke-direct {v6, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$3;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_0
    move-exception v3

    .line 447
    .local v3, "ex":Ljava/io/IOException;
    const-string v5, "PhoneVoiceRecorderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeBeepSound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    .line 229
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x0

    .line 237
    if-nez p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
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

    .line 244
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    .line 245
    :cond_2
    sput-object v2, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    .line 246
    sput-object v2, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mAutoRecordedCall:Lcom/android/incallui/Call;

    .line 248
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->clearStorageChkMsg()V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 224
    return-void
.end method

.method public onRecorderStateChanged()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 295
    const-string v12, "voice_call_recording"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 296
    const-string v11, "blocked when not defined VOICE_CALL_RECORDING feature"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const-string v12, "support_tphone"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 301
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 302
    const-string v11, "blocked in the tphone mode."

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v11}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 310
    .local v0, "activeCall":Lcom/android/incallui/Call;
    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isAutoRecordTarget(Lcom/android/incallui/Call;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 311
    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startAutoRecord(Lcom/android/incallui/Call;)V

    .line 314
    :cond_3
    sget-object v12, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    if-eqz v12, :cond_a

    sget-object v12, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {v12}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/16 v13, 0xb

    if-eq v12, v13, :cond_a

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    .line 315
    .local v1, "call":Lcom/android/incallui/Call;
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

    .line 318
    if-eqz v1, :cond_0

    .line 319
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

    .line 321
    invoke-virtual {p0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->canRecord(Lcom/android/incallui/Call;)Z

    move-result v4

    .line 323
    .local v4, "canRecord":Z
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 324
    iget-object v12, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    .line 325
    .local v5, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v5, :cond_5

    .line 328
    iget-object v12, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09024d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 329
    .local v7, "multiPartyCall":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v12

    if-eqz v12, :cond_b

    if-eqz v7, :cond_b

    move-object v8, v7

    .line 330
    .local v8, "name":Ljava/lang/String;
    :goto_2
    iget-object v9, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 331
    .local v9, "number":Ljava/lang/String;
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

    .line 333
    if-eqz v8, :cond_4

    iget-object v12, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v12, v8}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->setCallerName(Ljava/lang/String;)V

    .line 334
    :cond_4
    if-eqz v9, :cond_5

    iget-object v12, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v12, v9}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->setCallerNumber(Ljava/lang/String;)V

    .line 338
    .end local v5    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v7    # "multiPartyCall":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 339
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    .line 340
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->resumeRecord()V

    .line 346
    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isShowRecordInfo(Lcom/android/incallui/Call;)Z

    move-result v10

    .line 348
    .local v10, "showRecordInfo":Z
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

    .line 350
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v6

    .line 352
    .local v6, "inCallActivity":Lcom/android/incallui/InCallActivity;
    if-eqz v6, :cond_9

    .line 353
    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    .line 354
    .local v3, "callCardUI":Lcom/android/incallui/CallCardUi;
    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v2

    .line 356
    .local v2, "callButtonUI":Lcom/android/incallui/CallButtonUi;
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

    .line 357
    :cond_8
    if-eqz v2, :cond_9

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonUi;->updateRecordButton(Z)V

    .line 360
    .end local v2    # "callButtonUI":Lcom/android/incallui/CallButtonUi;
    .end local v3    # "callCardUI":Lcom/android/incallui/CallCardUi;
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto/16 :goto_0

    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v4    # "canRecord":Z
    .end local v6    # "inCallActivity":Lcom/android/incallui/InCallActivity;
    .end local v10    # "showRecordInfo":Z
    :cond_a
    move-object v1, v0

    .line 314
    goto/16 :goto_1

    .line 329
    .restart local v1    # "call":Lcom/android/incallui/Call;
    .restart local v4    # "canRecord":Z
    .restart local v5    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v7    # "multiPartyCall":Ljava/lang/String;
    :cond_b
    iget-object v8, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto/16 :goto_2

    .line 341
    .end local v5    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v7    # "multiPartyCall":Ljava/lang/String;
    :cond_c
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/4 v13, 0x6

    if-eq v12, v13, :cond_d

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_6

    .line 342
    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->pauseRecord()V

    goto/16 :goto_3
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 233
    return-void
.end method

.method public pauseRecord()V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const-string v0, "pauseRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 207
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->pauseRecord()V

    goto :goto_0
.end method

.method public resumeRecord()V
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "resumeRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 215
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->resumeRecord()V

    goto :goto_0
.end method

.method public showRecordNoti(I)V
    .locals 3
    .param p1, "message"    # I

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->animateForHide()V

    .line 478
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 479
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "notification_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 481
    return-void
.end method

.method public showRecordToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 485
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 486
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$4;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$4;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method

.method public startService(Landroid/telecom/InCallService;)V
    .locals 0
    .param p1, "inCallService"    # Landroid/telecom/InCallService;

    .prologue
    .line 130
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v0, "stopRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 196
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->stopRecord()V

    .line 198
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    .line 199
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_0
.end method

.method public stopService()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->stopService()V

    .line 134
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 135
    sput-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    .line 136
    sput-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mAutoRecordedCall:Lcom/android/incallui/Call;

    .line 137
    return-void
.end method

.method public toggleRecord()V
    .locals 8

    .prologue
    .line 375
    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    .line 376
    .local v0, "call":Lcom/android/incallui/Call;
    :goto_0
    if-nez v0, :cond_1

    .line 397
    :goto_1
    return-void

    .line 375
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    .line 378
    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 380
    .local v2, "clickedTime":J
    iget-wide v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mLastClickedTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 381
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

    .line 382
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_1

    .line 386
    :cond_2
    iput-wide v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mLastClickedTime:J

    .line 388
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

    .line 390
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    .line 392
    const-string v1, "stopRecord() : "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_1

    .line 394
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startManualRecord(Lcom/android/incallui/Call;)V

    goto :goto_2
.end method

.method public updateRecorderCallerInfo(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 461
    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 462
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_1

    .line 464
    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09024d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "multiPartyCall":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    move-object v2, v1

    .line 466
    .local v2, "name":Ljava/lang/String;
    :goto_0
    iget-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 467
    .local v3, "number":Ljava/lang/String;
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

    .line 469
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v4, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->setCallerName(Ljava/lang/String;)V

    .line 470
    :cond_0
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v4, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->setCallerNumber(Ljava/lang/String;)V

    .line 472
    .end local v1    # "multiPartyCall":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_1
    return-void

    .line 465
    .restart local v1    # "multiPartyCall":Ljava/lang/String;
    :cond_2
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateRecorderState()V
    .locals 3

    .prologue
    .line 452
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    .line 453
    .local v1, "inCallActivity":Lcom/android/incallui/InCallActivity;
    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 455
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    const/16 v2, 0xc9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 457
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method
