.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
.super Ljava/lang/Object;


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.phone.callsettings"

.field private static final AUTO_RECORD_CALL_SETTING:Ljava/lang/String; = "record_calls_automatically_on_off"

.field private static final AUTO_RECORD_CALL_SETTING_TYPE:Ljava/lang/String; = "record_calls_automatically_type"

.field private static final AUTO_RECORD_TYPE_ALL_CALLER:I = 0x0

.field private static final AUTO_RECORD_TYPE_SELECTED_CALLER:I = 0x1

.field private static final AUTO_RECORD_TYPE_UNSAVED_CALLER:I = 0x2

.field private static final ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

.field private static final ENHANCED_SELECTED_NUMBER:Ljava/lang/String; = "enhanced_selected_number"

.field private static final ENHANCED_SELECTED_TABLE:Ljava/lang/String; = "enhanced_selected_table"

.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "notification_type"

.field private static final PHONEMOTION_INTENT_ACTION_RELEASED_MIC:Ljava/lang/String; = "com.nttdocomo.android.phonemotion.intent.action.RELEASED_MIC"

.field private static final RECORD_INFO_STATE_CHANGED:I = 0xc9

.field private static final SHOW_RECORD_TOAST_MESSAGE:I = 0x12d

.field private static final TAG:Ljava/lang/String; = "PhoneVoiceRecorderManager"

.field private static final VOICE_CALL_RECORDING_NOTIFY_DURATION_SEC:I = 0x78

.field private static mAutoRecordedCall:Lcom/android/incallui/Call;

.field private static mMediaPlayer:Landroid/media/MediaPlayer;

.field private static mRecordedCall:Lcom/android/incallui/Call;

.field private static sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;


# instance fields
.field private final FROM:[Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallListListener:Lcom/android/incallui/CallList$Listener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastClickedTime:J

.field private mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

.field private mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

.field private mSessionModificationListener:Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

.field private mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

.field private mWaitForMicRelease:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

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

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$1;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$2;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

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

    sput-object p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->registerListeners()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)Landroid/content/Context;
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/incallui/Call;
    .locals 1

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mWaitForMicRelease:Z

    return p1
.end method

.method static synthetic access$402(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    sput-object p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->resetRecordedCallInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    return-object v0
.end method

.method private createCallListListener()Lcom/android/incallui/CallList$Listener;
    .locals 1

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$6;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    return-object v0
.end method

.method private createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nttdocomo.android.phonemotion.intent.action.RELEASED_MIC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private createSessionModificationListener()Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    .locals 1

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$5;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    return-object v0
.end method

.method private getAutoRecordType()I
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "record_calls_automatically_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    .locals 2

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    if-nez v0, :cond_0

    const-string v0, "PhoneVoiceRecorderManager"

    const-string v1, "getInstance() : is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    return-object v0
.end method

.method private getOriginalNumber(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contactCacheEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isAutoRecordOn()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

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

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getAutoRecordType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_2
    :goto_1
    :pswitch_0
    move v1, v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getOriginalNumber(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isSelectedNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isSavedNumber(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isSavedNumber(Lcom/android/incallui/Call;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSavedNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSelectedNumber(Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id desc"

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v6}, Landroid/telephony/PhoneNumberUtils;->semCompareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PhoneVoiceRecorderManager"

    const-string v2, "isAutoRecordTarget : number is target - true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    :goto_0
    return v0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PhoneVoiceRecorderManager"

    const-string v2, "isAutoRecordTarget : number is not target - false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :cond_2
    const-string v0, "PhoneVoiceRecorderManager"

    const-string v1, "isAutoRecordTarget : cursor is NULL or  cursor.moveToFirst() is fail."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto :goto_0
.end method

.method public static makeBeepSound(J)V
    .locals 4

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "notice_sound_for_voice_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    const-wide/16 v2, 0x78

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "android.resource://com.android.phone/raw/"

    const-string v0, "guidance_beep"

    const-string v0, "android.resource://com.android.phone/raw/guidance_beep"

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_2
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :try_start_0
    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v2, "android.resource://com.android.phone/raw/guidance_beep"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$3;

    invoke-direct {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$4;

    invoke-direct {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeBeepSound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private registerListeners()V
    .locals 5

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->createCallListListener()Lcom/android/incallui/CallList$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mCallListListener:Lcom/android/incallui/CallList$Listener;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mCallListListener:Lcom/android/incallui/CallList$Listener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->createSessionModificationListener()Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mSessionModificationListener:Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mSessionModificationListener:Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    const-string v3, "com.nttdocomo.android.phonemotion.permission.GET_STATUS"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private resetRecordedCallInfo()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    sput-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mAutoRecordedCall:Lcom/android/incallui/Call;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mWaitForMicRelease:Z

    return-void
.end method

.method private startAutoRecord(Lcom/android/incallui/Call;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startRecord(Lcom/android/incallui/Call;I)V

    return-void
.end method

.method private startManualRecord(Lcom/android/incallui/Call;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startRecord(Lcom/android/incallui/Call;I)V

    return-void
.end method

.method private startRecord(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mWaitForMicRelease:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getSugudenDisconnectVoiceSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->waitForMicReleased(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_1
    const-string v0, "PhoneVoiceRecorderManager"

    const-string v1, "startRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->updateRecorderCallerInfo(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->startRecord()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    :cond_2
    const v0, 0x7f090274

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_0
.end method

.method private startRecord(Lcom/android/incallui/Call;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->hasEnoughStorage(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->showRecordNoti(I)V

    goto :goto_0

    :cond_1
    const-string v0, "PhoneVoiceRecorderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord - recordType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mStorageManager:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0, p2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->checkStorage(I)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    sput-object p1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mAutoRecordedCall:Lcom/android/incallui/Call;

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private unregisterListeners()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mCallListListener:Lcom/android/incallui/CallList$Listener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mSessionModificationListener:Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterListeners occred exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterListeners occred exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterListeners occred exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private waitForMicReleased(Lcom/android/incallui/Call;)V
    .locals 2

    const-string v0, "PhoneVoiceRecorderManager"

    const-string v1, "waitForMicReleased..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastRequestReleaseMicUsage()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mWaitForMicRelease:Z

    return-void
.end method


# virtual methods
.method public canRecord(Lcom/android/incallui/Call;)Z
    .locals 7

    const/16 v6, 0xd

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v2, v6, :cond_0

    if-eq v2, v4, :cond_0

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    if-ne v2, v5, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    const-string v3, "feature_chn"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eq v2, v6, :cond_4

    if-ne v2, v4, :cond_5

    :cond_4
    const-string v1, "PhoneVoiceRecorderManager"

    const-string v2, "CHN emergency call state is dialing, disable record button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v3

    if-nez v3, :cond_6

    if-ne v2, v5, :cond_6

    const-string v1, "PhoneVoiceRecorderManager"

    const-string v2, "can not start record during onHold"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isKioskMode()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const-string v1, "PhoneVoiceRecorderManager"

    const-string v2, "callForwarding is enabled, disable record button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const-string v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_9
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEncryptionMode()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v1, "PhoneVoiceRecorderManager"

    const-string v2, "isEncryptionMode, disable record button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

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

    if-eqz v2, :cond_c

    :cond_b
    const-string v1, "PhoneVoiceRecorderManager"

    const-string v2, "isNotUpdatingCall - when conference call is disconnecting, disable record button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_c
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
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    and-int v1, v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method public onRecorderStateChanged()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PhoneVoiceRecorderManager"

    const-string v1, "blocked when not defined VOICE_CALL_RECORDING feature"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PhoneVoiceRecorderManager"

    const-string v1, "blocked in the tphone mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isAutoRecordTarget(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startAutoRecord(Lcom/android/incallui/Call;)V

    :cond_3
    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v4, 0xb

    if-eq v0, v4, :cond_8

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    :goto_1
    const-string v4, "PhoneVoiceRecorderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRecordedCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v4, "PhoneVoiceRecorderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->canRecord(Lcom/android/incallui/Call;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->updateRecorderCallerInfo(Lcom/android/incallui/Call;)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    if-ne v0, v5, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->resumeRecord()V

    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isShowRecordInfo(Lcom/android/incallui/Call;)Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v0, :cond_b

    move v0, v2

    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v2

    invoke-interface {v5, v0, v2}, Lcom/android/incallui/CallCardUi;->manageRecordInfo(ZZ)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1, v4}, Lcom/android/incallui/CallButtonUi;->updateRecordButton(Z)V

    :cond_7
    :goto_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto/16 :goto_1

    :cond_9
    const/4 v5, 0x6

    if-eq v0, v5, :cond_a

    const/16 v5, 0x8

    if-ne v0, v5, :cond_5

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->pauseRecord()V

    goto :goto_2

    :cond_b
    move v0, v3

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v0, :cond_d

    :goto_5
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v0

    invoke-virtual {v5, v2, v0}, Lcom/android/incallui/service/SecCallPopupService;->manageRecordInfo(ZZ)V

    goto :goto_4

    :cond_d
    move v2, v3

    goto :goto_5
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

    const-string v0, "PhoneVoiceRecorderManager"

    const-string v1, "pauseRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v0, "PhoneVoiceRecorderManager"

    const-string v1, "resumeRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->resumeRecord()V

    goto :goto_0
.end method

.method public showRecordNoti(I)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->animateForHide()V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "notification_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public showRecordToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopRecord()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "PhoneVoiceRecorderManager"

    const-string v1, "stopRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->stopRecord()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getSugudenDisconnectVoiceSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastPermitMicUse()V

    goto :goto_0
.end method

.method public stopService()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->resetRecordedCallInfo()V

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->unregisterListeners()V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->stopService()V

    return-void
.end method

.method public toggleRecord()V
    .locals 8

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecordedCall:Lcom/android/incallui/Call;

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

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

    const-string v0, "PhoneVoiceRecorderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleRecord() : Ignored button clicked in time - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mLastClickedTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_1

    :cond_2
    iput-wide v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mLastClickedTime:J

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleRecord(): state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    const-string v0, "PhoneVoiceRecorderManager"

    const-string v1, "stopRecord() : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->startManualRecord(Lcom/android/incallui/Call;)V

    goto :goto_2
.end method

.method public updateRecorderCallerInfo(Lcom/android/incallui/Call;)V
    .locals 6

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0902bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    :goto_0
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    const-string v3, "PhoneVoiceRecorderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRecorderCallerInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v1, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->setCallerName(Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mRecorder:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->setCallerNumber(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateRecorderState()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
