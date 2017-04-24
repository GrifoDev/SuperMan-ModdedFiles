.class public Lcom/android/incallui/util/SALogging;
.super Ljava/lang/Object;
.source "SALogging.java"


# static fields
.field private static final ACTION_TELECOMM_SALOGGING:Ljava/lang/String; = "com.samsung.android.intent.action.ACTION_TELECOMM_SALOGGING"

.field private static final CONFERENCE:I = 0x32

.field private static final CS_CALL:Ljava/lang/String; = "CS"

.field private static final DURING:I = 0x1e

.field private static final END:I = 0x3c

.field private static final EPDG_CALL:Ljava/lang/String; = "WIFI"

.field private static final EXTRA_MUTE_NAME:Ljava/lang/String; = "extra_name_mute"

.field private static final EXTRA_MUTE_PALM_OVER:I = 0x4

.field private static final EXTRA_MUTE_TURN_OVER:I = 0x3

.field private static final EXTRA_SCREEN_INCOMING_CALL_FULLSCREEN:I = 0x2

.field private static final EXTRA_SCREEN_INCOMING_CALL_POPUP:I = 0x1

.field private static final EXTRA_SCREEN_NAME:Ljava/lang/String; = "extra_name_screen"

.field private static final GENERAL_VIDEO_CALL:I = 0x18f

.field private static final GENERAL_VOICE_CALL:I = 0xc7

.field private static final INCOMING:I = 0xa

.field private static final MULTIPARTY:I = 0x28

.field private static final OUTGOING:I = 0x14

.field private static final PS_CALL:Ljava/lang/String; = "LTE"

.field public static final SCREEN_COVER:I = 0x8

.field public static final SCREEN_FULL:I = 0x0

.field public static final SCREEN_MINI:I = 0x4

.field public static final SCREEN_POPUP:I = 0x1

.field public static final SCREEN_SVIEW:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SALogging"

.field private static final UPGRADE_REQUEST_RECEIVING:I = 0x1

.field private static final UPGRADE_REQUEST_SENDING:I = 0x0

.field private static final VIDEO_CS_CALL:I = 0xc8

.field private static final VILTE:I = 0x12c

.field private static final VOICE_CALL:I = 0x64

.field private static mIsReceiverRegistered:Z

.field private static mTelecommSALoggingReceiver:Landroid/content/BroadcastReceiver;

.field private static sCurrentScreenId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/SALogging;->mIsReceiverRegistered:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/SALogging;->sCurrentScreenId:Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/util/SALogging$1;

    invoke-direct {v0}, Lcom/android/incallui/util/SALogging$1;-><init>()V

    sput-object v0, Lcom/android/incallui/util/SALogging;->mTelecommSALoggingReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getGeneralScreenId()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVoiceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    add-int/lit16 v0, v0, 0xc7

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    add-int/lit16 v0, v0, 0x18f

    goto :goto_0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WIFI"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LTE"

    goto :goto_0

    :cond_1
    const-string v0, "CS"

    goto :goto_0
.end method

.method public static getScreenId(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    const/16 v1, 0x64

    :goto_1
    add-int/2addr v1, p1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0xa

    :goto_2
    const-string v2, "SALogging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x12c

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x14

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x28

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x32

    goto :goto_2

    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    add-int/lit8 v1, v1, 0x3c

    goto :goto_2

    :cond_8
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    add-int/lit8 v1, v1, 0x0

    goto/16 :goto_2

    :cond_a
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v1, v1, 0x1e

    goto/16 :goto_2
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerTelecommSALoggingReceiver(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/incallui/util/SALogging;->mIsReceiverRegistered:Z

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.intent.action.ACTION_TELECOMM_SALOGGING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/android/incallui/util/SALogging;->mTelecommSALoggingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-boolean v1, Lcom/android/incallui/util/SALogging;->mIsReceiverRegistered:Z

    const-string v2, "SALogging"

    const-string v3, "TelecommSALoggingReceiver is successfully registered."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    const-string v1, "SALogging"

    const-string v2, "TelecommSALoggingReceiver is already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    invoke-static {p0}, Lcom/android/incallui/util/SALogging;->setCurrentScreenId(Ljava/lang/String;)V

    return-void
.end method

.method public static sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventValue(J)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    invoke-static {p0}, Lcom/android/incallui/util/SALogging;->setCurrentScreenId(Ljava/lang/String;)V

    return-void
.end method

.method public static sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventDetail(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    invoke-static {p0}, Lcom/android/incallui/util/SALogging;->setCurrentScreenId(Ljava/lang/String;)V

    return-void
.end method

.method public static sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventDetail(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventValue(J)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    invoke-static {p0}, Lcom/android/incallui/util/SALogging;->setCurrentScreenId(Ljava/lang/String;)V

    return-void
.end method

.method public static sendSAExceptionLog()V
    .locals 3

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;-><init>()V

    const-string v2, "null exception"

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->setMessage(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method public static sendSAPrefLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->registerSettingPref(Ljava/util/Map;)V

    return-void
.end method

.method public static sendSAPrefLog(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->registerSettingPref(Ljava/util/Map;)V

    return-void
.end method

.method public static sendSASettingLog(Ljava/lang/String;F)V
    .locals 3

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;->set(Ljava/lang/String;F)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method public static sendSASettingLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method public static sendSASettingLog(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;->set(Ljava/lang/String;Ljava/util/Set;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method public static sendSASettingLog(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;->set(Ljava/lang/String;Z)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method public static sendSAViewFlowLog(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method public static sendSAViewFlowLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenViewDetail(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method private static setCurrentScreenId(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/incallui/util/SALogging;->sCurrentScreenId:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    sput-object p0, Lcom/android/incallui/util/SALogging;->sCurrentScreenId:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/incallui/util/SALogging;->sCurrentScreenId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    sput-object p0, Lcom/android/incallui/util/SALogging;->sCurrentScreenId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static unregisterTelecommSALoggingReceiver(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/incallui/util/SALogging;->mIsReceiverRegistered:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/util/SALogging;->mTelecommSALoggingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-boolean v0, Lcom/android/incallui/util/SALogging;->mIsReceiverRegistered:Z

    const-string v0, "SALogging"

    const-string v1, "TelecommSALoggingReceiver is successfully unregistered."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "SALogging"

    const-string v2, "TelecommSALoggingReceiver is not unregistered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
