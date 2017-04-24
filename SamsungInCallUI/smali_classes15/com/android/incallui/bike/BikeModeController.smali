.class public Lcom/android/incallui/bike/BikeModeController;
.super Ljava/lang/Object;
.source "BikeModeController.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/CallList$Listener;


# static fields
.field private static final ACTION_INCALLUI_BIKE_MODE_CALL_DISCONNECT:Ljava/lang/String; = "com.samsung.BikeMode.callDisconnect"

.field private static final ACTION_INCALLUI_BIKE_MODE_DRAW_UI:Ljava/lang/String; = "com.samsung.BikeMode.DrawInCallUI"

.field private static final ACTION_INCALLUI_BIKE_MODE_END_SPEED_UPDATES:Ljava/lang/String; = "com.samsung.BikeMode.EndSpeedTracker"

.field private static final ACTION_INCALLUI_BIKE_MODE_SEND_SMS:Ljava/lang/String; = "com.samsung.BikeMode.SendRealTimeSMS"

.field private static final ACTION_INCALLUI_BIKE_MODE_START_SPEED_UPDATES:Ljava/lang/String; = "com.samsung.BikeMode.StartSpeedTracker"

.field private static final COUNT_DOWN_INTERVAL:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "BikeModeController"


# instance fields
.field private mBikeCallObserver:Landroid/database/ContentObserver;

.field private mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

.field private mBikeModeObserver:Landroid/database/ContentObserver;

.field private mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

.field private mBikeModeWaitingForAccountCall:Lcom/android/incallui/Call;

.field private final mContext:Landroid/content/Context;

.field private mIsPriorityCallerAnswered:Z

.field private mReciever:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

    new-instance v0, Lcom/android/incallui/bike/BikeModeController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/bike/BikeModeController$1;-><init>(Lcom/android/incallui/bike/BikeModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/incallui/bike/BikeModeController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/bike/BikeModeController$2;-><init>(Lcom/android/incallui/bike/BikeModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeCallObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/incallui/bike/BikeModeController$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/bike/BikeModeController$3;-><init>(Lcom/android/incallui/bike/BikeModeController;)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mReciever:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-direct {v0, p1, p0}, Lcom/android/incallui/bike/BikeModeAudioManager;-><init>(Landroid/content/Context;Lcom/android/incallui/bike/BikeModeController;)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/bike/BikeModeController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/bike/BikeModeController;->onBikeModeChange(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/bike/BikeModeController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/bike/BikeModeController;->onBikeCallChange(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/bike/BikeModeController;)Lcom/android/incallui/bike/BikeModeAudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/bike/BikeModeController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/bike/BikeModeController;->onBikeModeDrawUiReceived(Landroid/content/Intent;)V

    return-void
.end method

.method private onBikeCallChange(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isBikeCall"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private onBikeModeChange(Z)V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v4

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCallAnswered()Z

    move-result v2

    if-nez v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-static {v6}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOn(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5, v6}, Lcom/android/incallui/bike/BikeModeAudioManager;->playRingtone(Z)V

    invoke-static {v8}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->setInCallState(Lcom/android/incallui/InCallPresenter$InCallState;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCall(Z)V

    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopGuidance()V

    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5, v7}, Lcom/android/incallui/bike/BikeModeAudioManager;->playRingtone(Z)V

    invoke-static {v8}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    const-string v5, "BikeModeController"

    const-string v6, "BikeModeObserver:DrawInCallUI "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0
.end method

.method private onBikeModeDrawUiReceived(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCall(Z)V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BikeModeController"

    const-string v1, "onBikeModeDrawUiReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    :cond_0
    return-void
.end method


# virtual methods
.method public addIncomingCallListenerComsumed(Ljava/util/List;Lcom/android/incallui/InCallPresenter$IncomingCallListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
            ">;",
            "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
            ")Z"
        }
    .end annotation

    const-string v1, "bike_mode"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->setInCallState(Lcom/android/incallui/InCallPresenter$InCallState;)V

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    invoke-interface {p2, v1, v2, v0}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public answerBikeCall()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v5, p0, Lcom/android/incallui/bike/BikeModeController;->mIsPriorityCallerAnswered:Z

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    const-string v2, "BikeModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPriorityCallerAnswered set to :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/incallui/bike/BikeModeController;->mIsPriorityCallerAnswered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.BikeMode.StartSpeedTracker"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v2, v5}, Lcom/android/incallui/bike/BikeModeAudioManager;->setGuidancePlayed(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 2

    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public finish(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setIsBMOutCallHandled(I)V

    :cond_0
    return-void
.end method

.method public getBikeModeAudioManager()Lcom/android/incallui/bike/BikeModeAudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    return-object v0
.end method

.method public getInCallStateConsumed()Z
    .locals 1

    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleDialerKeyDown(ILandroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->isRingtonePlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    :cond_1
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0

    return-void
.end method

.method public onCreate(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setIsBMOutCallHandled(I)V

    :cond_0
    return-void
.end method

.method public onDestroy(Lcom/android/incallui/InCallActivity;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "bike_mode"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0xbb

    invoke-virtual {p1, v1, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0x3e9

    invoke-virtual {p1, v1, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    invoke-static {v3}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOn(Z)V

    invoke-static {v3}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOutgoingCall(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    const-string v2, "sem_statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    invoke-virtual {v0, v3}, Landroid/app/SemStatusBarManager;->disable(I)V

    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 8

    const/4 v7, 0x0

    const-string v4, "bike_mode"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeWaitingForAccountCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeWaitingForAccountCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeWaitingForAccountCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.BikeMode.EndSpeedTracker"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v4, "callmemo_enabled=false"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopGuidance()V

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    invoke-static {v7}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCall(Z)V

    const-string v4, "BikeModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPriorityCallerAnswered :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/incallui/bike/BikeModeController;->mIsPriorityCallerAnswered:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.BikeMode.callDisconnect"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-boolean v4, p0, Lcom/android/incallui/bike/BikeModeController;->mIsPriorityCallerAnswered:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bikeNavigatorState"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "BikeModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending SMS to Priority caller : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.BikeMode.SendRealTimeSMS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "callerNumber"

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-static {v7}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOn(Z)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeWaitingForAccountCall:Lcom/android/incallui/Call;

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeModeAudioManager;->isRingtonePlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onIncomingCallConsumed(Lcom/android/incallui/Call;I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "bike_mode"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, v0, :cond_2

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOn(Z)V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeCallAnswered(Z)V

    const-string v1, "BikeModeController"

    const-string v2, "onIncomingCallConsumed: Bikemode is on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeWaitingForAccountCall:Lcom/android/incallui/Call;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BikeModeController"

    const-string v2, "onIncomingCallConsumed: finish InCallActivity when incoming call in the bike mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    :cond_1
    const/16 v1, 0x1388

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/bike/BikeModeController;->startBikeModeTimer(II)V

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onKeyDownConsumed(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anykey_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCall(Z)V

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v3}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    if-eqz v0, :cond_0

    const-string v3, "BikeModeController"

    const-string v4, "unhold call! InCallActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause(Lcom/android/incallui/InCallActivity;)V
    .locals 4

    const-string v2, "bike_mode"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const-string v2, "BikeModeController"

    const-string v3, "on resume enable home button"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    :cond_1
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4

    const-string v2, "bike_mode"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->isGuidancePlayed()Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->playGuidance()V

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/bike/BikeModeAudioManager;->setGuidancePlayed(Z)V

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->isRingtonePlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    goto :goto_0
.end method

.method public onTrigger(Lcom/android/incallui/fragment/AnswerImageFragment;Landroid/view/View;I)V
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v5, "bike_mode"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.BikeMode.StartSpeedTracker"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v7}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCall(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, "BikeModeController"

    const-string v6, "unhold call!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    :goto_1
    invoke-static {v9}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    invoke-static {v8}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeCallAnswered(Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1, v7}, Lcom/android/incallui/AnswerUi;->animateForAnswerCall(I)V

    :cond_1
    invoke-virtual {p1, v7}, Lcom/android/incallui/fragment/AnswerImageFragment;->showAnswerUi(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/incallui/CallCardUi;->resetAnswerCallAnimator()V

    :cond_2
    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallActivity;->onWindowFocusChanged(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->sendMsgCallListChange()V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5}, Lcom/android/incallui/bike/BikeModeAudioManager;->isRingtonePlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    goto/16 :goto_0

    :pswitch_1
    const-string v5, "bike_mode"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCall(Z)V

    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    invoke-static {v9}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v5, "BikeModeController"

    const-string v6, "InCallUi: BikeModeCall: rejectCall"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v7}, Lcom/android/incallui/fragment/AnswerImageFragment;->showAnswerUi(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public resetBikeModeTimer()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

    if-eqz v0, :cond_0

    const-string v0, "BikeModeController"

    const-string v1, "resetBikeModeTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

    :cond_0
    return-void
.end method

.method public setStatusBar(Lcom/android/incallui/InCallActivity;Landroid/app/SemStatusBarManager;Z)V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "bike_mode"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v1

    const-string v2, "BikeModeController"

    const-string v3, "setStatusBar..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v2, 0x10000

    invoke-virtual {p2, v2}, Landroid/app/SemStatusBarManager;->disable(I)V

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v4}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v2, 0xbb

    invoke-virtual {p1, v2, v4}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v2, 0x3e9

    invoke-virtual {p1, v2, v4}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    :cond_1
    return-void
.end method

.method public setUp()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "bike_mode"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.BikeMode.DrawInCallUI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isBikeMode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isBikeCall"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public startBikeModeTimer(II)V
    .locals 7

    const-string v0, "BikeModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBikeModeTimer: limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    new-instance v0, Lcom/android/incallui/bike/BikeModeTimer;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/bike/BikeModeTimer;-><init>(Lcom/android/incallui/bike/BikeModeController;JJI)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public startOrFinishUiConsumed(Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "bike_mode"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v3, v4, :cond_1

    :cond_0
    const-string v3, "BikeModeController"

    const-string v4, "Outgoing Call made from Bike Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOutgoingCall(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_2

    const-string v3, "BikeModeController"

    const-string v4, "Outgoing Call Bike Mode Ended"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOutgoingCall(Z)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "BikeModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBikeMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->getBikeModeCallType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "newState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_3
    const-string v1, "BikeModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bike mode newState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public updateAppSwitchSystemKeyEventConsumed()Z
    .locals 1

    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateNotificationAndLaunchIncomingCallUiConsumed()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->getBikeModeCallType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "BikeModeController"

    const-string v1, "do not updateNotificationAndLaunchIncomingCallUi when Bike mode is on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateNotificationConsumed()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->getBikeModeCallType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
