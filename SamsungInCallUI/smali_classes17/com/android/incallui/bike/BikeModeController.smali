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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

    .line 72
    new-instance v0, Lcom/android/incallui/bike/BikeModeController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/bike/BikeModeController$1;-><init>(Lcom/android/incallui/bike/BikeModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeObserver:Landroid/database/ContentObserver;

    .line 79
    new-instance v0, Lcom/android/incallui/bike/BikeModeController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/bike/BikeModeController$2;-><init>(Lcom/android/incallui/bike/BikeModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeCallObserver:Landroid/database/ContentObserver;

    .line 86
    new-instance v0, Lcom/android/incallui/bike/BikeModeController$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/bike/BikeModeController$3;-><init>(Lcom/android/incallui/bike/BikeModeController;)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mReciever:Landroid/content/BroadcastReceiver;

    .line 106
    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-direct {v0, p1, p0}, Lcom/android/incallui/bike/BikeModeAudioManager;-><init>(Landroid/content/Context;Lcom/android/incallui/bike/BikeModeController;)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/bike/BikeModeController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/bike/BikeModeController;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/incallui/bike/BikeModeController;->onBikeModeChange(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/bike/BikeModeController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/bike/BikeModeController;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/incallui/bike/BikeModeController;->onBikeCallChange(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/bike/BikeModeController;)Lcom/android/incallui/bike/BikeModeAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/bike/BikeModeController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/bike/BikeModeController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/bike/BikeModeController;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/incallui/bike/BikeModeController;->onBikeModeDrawUiReceived(Landroid/content/Intent;)V

    return-void
.end method

.method private onBikeCallChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 251
    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isBikeCall"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 252
    .local v1, "value":I
    if-ne v1, v0, :cond_1

    .line 253
    .local v0, "isBikeCall":Z
    :goto_0
    if-nez v0, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    .line 256
    :cond_0
    return-void

    .end local v0    # "isBikeCall":Z
    :cond_1
    move v0, v2

    .line 252
    goto :goto_0
.end method

.method private onBikeModeChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 224
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v3

    .line 225
    .local v3, "isBikeMode":Z
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v4

    .line 226
    .local v4, "isBikeModeOn":Z
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCallAnswered()Z

    move-result v2

    .line 228
    .local v2, "isBikeCallAnswered":Z
    if-nez v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 229
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 230
    .local v1, "incomingCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 231
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_1

    .line 232
    invoke-static {v6}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOn(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    .line 234
    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5, v6}, Lcom/android/incallui/bike/BikeModeAudioManager;->playRingtone(Z)V

    .line 235
    invoke-static {v8}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    .line 236
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->setInCallState(Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 237
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    .line 248
    .end local v0    # "activeCall":Lcom/android/incallui/Call;
    .end local v1    # "incomingCall":Lcom/android/incallui/Call;
    :cond_0
    :goto_0
    return-void

    .line 238
    .restart local v0    # "activeCall":Lcom/android/incallui/Call;
    .restart local v1    # "incomingCall":Lcom/android/incallui/Call;
    :cond_1
    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    .line 240
    invoke-static {v7}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCall(Z)V

    .line 241
    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopGuidance()V

    .line 242
    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5, v7}, Lcom/android/incallui/bike/BikeModeAudioManager;->playRingtone(Z)V

    .line 243
    invoke-static {v8}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    .line 244
    const-string v5, "BikeModeController"

    const-string v6, "BikeModeObserver:DrawInCallUI "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0
.end method

.method private onBikeModeDrawUiReceived(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 213
    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCall(Z)V

    .line 215
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    .line 216
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "BikeModeController"

    const-string v1, "onBikeModeDrawUiReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    .line 221
    :cond_0
    return-void
.end method


# virtual methods
.method public addIncomingCallListenerComsumed(Ljava/util/List;Lcom/android/incallui/InCallPresenter$IncomingCallListener;)Z
    .locals 3
    .param p2, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;
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

    .prologue
    .line 368
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/InCallPresenter$IncomingCallListener;>;"
    const-string v1, "bike_mode"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->setInCallState(Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 371
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_0

    .line 374
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 376
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 378
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    .line 379
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 377
    invoke-interface {p2, v1, v2, v0}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 384
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    const/4 v1, 0x1

    .line 387
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public answerBikeCall()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 259
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iput-boolean v5, p0, Lcom/android/incallui/bike/BikeModeController;->mIsPriorityCallerAnswered:Z

    .line 264
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    .line 265
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

    .line 267
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.BikeMode.StartSpeedTracker"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "speedUpdateStartIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 271
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    .line 272
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v2, v5}, Lcom/android/incallui/bike/BikeModeAudioManager;->setGuidancePlayed(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 136
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 138
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 140
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 142
    :cond_0
    return-void
.end method

.method public finish(Lcom/android/incallui/InCallActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 413
    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setIsBMOutCallHandled(I)V

    .line 416
    :cond_0
    return-void
.end method

.method public getBikeModeAudioManager()Lcom/android/incallui/bike/BikeModeAudioManager;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    return-object v0
.end method

.method public getInCallStateConsumed()Z
    .locals 1

    .prologue
    .line 309
    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleDialerKeyDown(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->isRingtonePlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    .line 492
    :cond_1
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 173
    return-void
.end method

.method public onCreate(Lcom/android/incallui/InCallActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 407
    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setIsBMOutCallHandled(I)V

    .line 410
    :cond_0
    return-void
.end method

.method public onDestroy(Lcom/android/incallui/InCallActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    const/4 v3, 0x0

    .line 430
    const-string v1, "bike_mode"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_0

    .line 432
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 433
    const/16 v1, 0xbb

    invoke-virtual {p1, v1, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 434
    const/16 v1, 0x3e9

    invoke-virtual {p1, v1, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 436
    invoke-static {v3}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOn(Z)V

    .line 437
    invoke-static {v3}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOutgoingCall(Z)V

    .line 438
    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    const-string v2, "sem_statusbar"

    .line 441
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    .line 442
    .local v0, "sbmw":Landroid/app/SemStatusBarManager;
    invoke-virtual {v0, v3}, Landroid/app/SemStatusBarManager;->disable(I)V

    .line 444
    .end local v0    # "sbmw":Landroid/app/SemStatusBarManager;
    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v7, 0x0

    .line 177
    const-string v4, "bike_mode"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeWaitingForAccountCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeWaitingForAccountCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeWaitingForAccountCall:Lcom/android/incallui/Call;

    .line 179
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 180
    :cond_0
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 181
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.BikeMode.EndSpeedTracker"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v3, "speedUpdateEndIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 184
    .local v0, "am":Landroid/media/AudioManager;
    const-string v4, "callmemo_enabled=false"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopGuidance()V

    .line 186
    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    .line 187
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    .line 188
    invoke-static {v7}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCall(Z)V

    .line 189
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

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.BikeMode.callDisconnect"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "bikeModeCallDisconnectIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    iget-boolean v4, p0, Lcom/android/incallui/bike/BikeModeController;->mIsPriorityCallerAnswered:Z

    if-nez v4, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bikeNavigatorState"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 195
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

    .line 196
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.BikeMode.SendRealTimeSMS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, "smsIntent":Landroid/content/Intent;
    const-string v4, "callerNumber"

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    .end local v2    # "smsIntent":Landroid/content/Intent;
    :cond_1
    invoke-static {v7}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOn(Z)V

    .line 208
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "bikeModeCallDisconnectIntent":Landroid/content/Intent;
    .end local v3    # "speedUpdateEndIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeWaitingForAccountCall:Lcom/android/incallui/Call;

    .line 210
    :cond_3
    return-void

    .line 203
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeModeAudioManager;->isRingtonePlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    iget-object v4, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v4}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 163
    return-void
.end method

.method public onIncomingCallConsumed(Lcom/android/incallui/Call;I)Z
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "liveCallCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 317
    const-string v2, "bike_mode"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, v0, :cond_2

    .line 319
    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOn(Z)V

    .line 320
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 321
    invoke-static {v1}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeCallAnswered(Z)V

    .line 322
    const-string v1, "BikeModeController"

    const-string v2, "onIncomingCallConsumed: Bikemode is on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeWaitingForAccountCall:Lcom/android/incallui/Call;

    .line 327
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    .line 328
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    const-string v1, "BikeModeController"

    const-string v2, "onIncomingCallConsumed: finish InCallActivity when incoming call in the bike mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 332
    :cond_1
    const/16 v1, 0x1388

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/bike/BikeModeController;->startBikeModeTimer(II)V

    .line 336
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onKeyDownConsumed(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 464
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v1, v2

    .line 484
    :goto_0
    return v1

    .line 466
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 467
    .local v0, "heldCall":Lcom/android/incallui/Call;
    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anykey_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 468
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCall(Z)V

    .line 470
    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v3}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    .line 471
    if-eqz v0, :cond_0

    .line 472
    const-string v3, "BikeModeController"

    const-string v4, "unhold call! InCallActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    .line 475
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause(Lcom/android/incallui/InCallActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 419
    const-string v2, "bike_mode"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    .line 421
    .local v0, "isBikeModeOn":Z
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v1

    .line 422
    .local v1, "isBikeModeOutgoingCall":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 423
    :cond_0
    const-string v2, "BikeModeController"

    const-string v3, "on resume enable home button"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 427
    .end local v0    # "isBikeModeOn":Z
    .end local v1    # "isBikeModeOutgoingCall":Z
    :cond_1
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 146
    const-string v2, "bike_mode"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    .line 148
    .local v0, "isBikeModeOn":Z
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->isGuidancePlayed()Z

    move-result v1

    .line 149
    .local v1, "isGuidancePlayed":Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, p2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->playGuidance()V

    .line 152
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/bike/BikeModeAudioManager;->setGuidancePlayed(Z)V

    .line 153
    const/4 v1, 0x1

    .line 158
    .end local v0    # "isBikeModeOn":Z
    .end local v1    # "isGuidancePlayed":Z
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v0    # "isBikeModeOn":Z
    .restart local v1    # "isGuidancePlayed":Z
    :cond_1
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->isRingtonePlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, p2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    goto :goto_0
.end method

.method public onTrigger(Lcom/android/incallui/fragment/AnswerImageFragment;Landroid/view/View;I)V
    .locals 10
    .param p1, "fragment"    # Lcom/android/incallui/fragment/AnswerImageFragment;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "whichHandle"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 495
    invoke-virtual {p1}, Lcom/android/incallui/fragment/AnswerImageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 496
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    packed-switch p3, :pswitch_data_0

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 499
    :pswitch_0
    const-string v5, "bike_mode"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 500
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    .line 501
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.BikeMode.StartSpeedTracker"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v4, "speedUpdateStartIntent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    invoke-static {v7}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCall(Z)V

    .line 504
    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    .line 505
    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    .line 507
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 508
    .local v3, "heldCall":Lcom/android/incallui/Call;
    if-eqz v3, :cond_3

    .line 509
    const-string v5, "BikeModeController"

    const-string v6, "unhold call!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    .line 516
    :goto_1
    invoke-static {v9}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    .line 517
    invoke-static {v8}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeCallAnswered(Z)V

    .line 519
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    .line 520
    .local v1, "answerUi":Lcom/android/incallui/AnswerUi;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v5

    if-nez v5, :cond_1

    .line 521
    invoke-interface {v1, v7}, Lcom/android/incallui/AnswerUi;->animateForAnswerCall(I)V

    .line 523
    :cond_1
    invoke-virtual {p1, v7}, Lcom/android/incallui/fragment/AnswerImageFragment;->showAnswerUi(Z)V

    .line 524
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 525
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/incallui/CallCardUi;->resetAnswerCallAnimator()V

    .line 527
    :cond_2
    invoke-virtual {v0, v8}, Lcom/android/incallui/InCallActivity;->onWindowFocusChanged(Z)V

    .line 528
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateKeepScreenOnFlag()V

    goto :goto_0

    .line 513
    .end local v1    # "answerUi":Lcom/android/incallui/AnswerUi;
    :cond_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    .line 514
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->sendMsgCallListChange()V

    goto :goto_1

    .line 531
    .end local v3    # "heldCall":Lcom/android/incallui/Call;
    .end local v4    # "speedUpdateStartIntent":Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5}, Lcom/android/incallui/bike/BikeModeAudioManager;->isRingtonePlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 532
    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    goto/16 :goto_0

    .line 538
    :pswitch_1
    const-string v5, "bike_mode"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 539
    invoke-static {v7}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCall(Z)V

    .line 540
    iget-object v5, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeAudioManager:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v5}, Lcom/android/incallui/bike/BikeModeAudioManager;->stopRingtone()V

    .line 541
    invoke-static {v9}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeCallType(I)V

    .line 542
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 543
    .local v2, "call":Lcom/android/incallui/Call;
    if-eqz v2, :cond_5

    .line 544
    const-string v5, "BikeModeController"

    const-string v6, "InCallUi: BikeModeCall: rejectCall"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 547
    :cond_5
    invoke-virtual {p1, v7}, Lcom/android/incallui/fragment/AnswerImageFragment;->showAnswerUi(Z)V

    goto/16 :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 168
    return-void
.end method

.method public resetBikeModeTimer()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "BikeModeController"

    const-string v1, "resetBikeModeTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeTimer;->cancel()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

    .line 296
    :cond_0
    return-void
.end method

.method public setStatusBar(Lcom/android/incallui/InCallActivity;Landroid/app/SemStatusBarManager;Z)V
    .locals 5
    .param p1, "activity"    # Lcom/android/incallui/InCallActivity;
    .param p2, "statusBarManager"    # Landroid/app/SemStatusBarManager;
    .param p3, "onStatus"    # Z

    .prologue
    const/4 v4, 0x1

    .line 393
    const-string v2, "bike_mode"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    .line 395
    .local v0, "isBikeModeOn":Z
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v1

    .line 396
    .local v1, "isBikeModeOutgoingCall":Z
    const-string v2, "BikeModeController"

    const-string v3, "setStatusBar..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    const/high16 v2, 0x10000

    invoke-virtual {p2, v2}, Landroid/app/SemStatusBarManager;->disable(I)V

    .line 399
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v4}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 400
    const/16 v2, 0xbb

    invoke-virtual {p1, v2, v4}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 401
    const/16 v2, 0x3e9

    invoke-virtual {p1, v2, v4}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    .line 404
    .end local v0    # "isBikeModeOn":Z
    .end local v1    # "isBikeModeOutgoingCall":Z
    :cond_1
    return-void
.end method

.method public setUp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 111
    const-string v1, "bike_mode"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 113
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "com.samsung.BikeMode.DrawInCallUI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeController;->mReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isBikeMode"

    .line 123
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeObserver:Landroid/database/ContentObserver;

    .line 122
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isBikeCall"

    .line 127
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeCallObserver:Landroid/database/ContentObserver;

    .line 126
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public startBikeModeTimer(II)V
    .locals 7
    .param p1, "limit"    # I
    .param p2, "timerType"    # I

    .prologue
    .line 284
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

    .line 285
    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeModeController;->resetBikeModeTimer()V

    .line 286
    new-instance v0, Lcom/android/incallui/bike/BikeModeTimer;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/bike/BikeModeTimer;-><init>(Lcom/android/incallui/bike/BikeModeController;JJI)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

    .line 287
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeController;->mBikeModeTimer:Lcom/android/incallui/bike/BikeModeTimer;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeTimer;->start()Landroid/os/CountDownTimer;

    .line 288
    return-void
.end method

.method public startOrFinishUiConsumed(Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 5
    .param p1, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 340
    const-string v3, "bike_mode"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 341
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_1

    .line 345
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v3, v4, :cond_1

    .line 346
    :cond_0
    const-string v3, "BikeModeController"

    const-string v4, "Outgoing Call made from Bike Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {v1}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOutgoingCall(Z)V

    .line 349
    :cond_1
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_2

    .line 351
    const-string v3, "BikeModeController"

    const-string v4, "Outgoing Call Bike Mode Ended"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeUtils;->setBikeModeOutgoingCall(Z)V

    .line 354
    :cond_2
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    .line 355
    .local v0, "isBikeModeOn":Z
    if-eqz v0, :cond_3

    .line 356
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v3

    if-nez v3, :cond_3

    .line 357
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 358
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

    .line 363
    .end local v0    # "isBikeModeOn":Z
    :goto_0
    return v1

    .line 361
    .restart local v0    # "isBikeModeOn":Z
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

    .end local v0    # "isBikeModeOn":Z
    :cond_4
    move v1, v2

    .line 363
    goto :goto_0
.end method

.method public updateAppSwitchSystemKeyEventConsumed()Z
    .locals 1

    .prologue
    .line 299
    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOutgoingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateNotificationAndLaunchIncomingCallUiConsumed()Z
    .locals 2

    .prologue
    .line 447
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->getBikeModeCallType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 449
    const-string v0, "BikeModeController"

    const-string v1, "do not updateNotificationAndLaunchIncomingCallUi when Bike mode is on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateNotificationConsumed()Z
    .locals 2

    .prologue
    .line 456
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->getBikeModeCallType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 458
    const/4 v0, 0x1

    .line 460
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
