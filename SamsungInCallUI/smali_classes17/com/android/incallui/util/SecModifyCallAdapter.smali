.class public Lcom/android/incallui/util/SecModifyCallAdapter;
.super Ljava/lang/Object;
.source "SecModifyCallAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecModifyCallAdapter"

.field private static sInstance:Lcom/android/incallui/util/SecModifyCallAdapter;


# instance fields
.field private mPreviousCallState:I

.field private mPreviousCallType:I

.field private mPreviousModifyType:I

.field private mPrimary:Lcom/android/incallui/Call;

.field private mWasModifyReceive:Z

.field private mWasModifyRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/SecModifyCallAdapter;->sInstance:Lcom/android/incallui/util/SecModifyCallAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    iput v1, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousCallState:I

    iput v2, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousCallType:I

    iput v2, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousModifyType:I

    iput-boolean v1, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyRequest:Z

    iput-boolean v1, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyReceive:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/util/SecModifyCallAdapter;
    .locals 2

    const-class v1, Lcom/android/incallui/util/SecModifyCallAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/util/SecModifyCallAdapter;->sInstance:Lcom/android/incallui/util/SecModifyCallAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/util/SecModifyCallAdapter;

    invoke-direct {v0}, Lcom/android/incallui/util/SecModifyCallAdapter;-><init>()V

    sput-object v0, Lcom/android/incallui/util/SecModifyCallAdapter;->sInstance:Lcom/android/incallui/util/SecModifyCallAdapter;

    :cond_0
    sget-object v0, Lcom/android/incallui/util/SecModifyCallAdapter;->sInstance:Lcom/android/incallui/util/SecModifyCallAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onCancelModifyRequest(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    :cond_1
    return-void
.end method

.method private onModifiedCall(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyRequest:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecCall;->setRequestModifyCalltype(I)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyReceive:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecCall;->setIncomingModifyCalltype(I)V

    :cond_2
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    :cond_3
    iget v1, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousCallType:I

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v1

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->REQUEST:I

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v1

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->RECEIVE:I

    if-ne v1, v2, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallPresenter;->handoverFailNotification(Lcom/android/incallui/Call;)V

    :cond_5
    iget-boolean v1, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyRequest:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyReceive:Z

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v4, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "SecModifyCallAdapter"

    const-string v2, "does not need to display video call banner when call type is voice"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyRequest:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyReceive:Z

    if-eqz v1, :cond_7

    :cond_9
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v4, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0
.end method


# virtual methods
.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 12

    const/4 v11, 0x6

    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {p3, v4, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v1

    const-string v4, "SecModifyCallAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStateChange : ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/SecModifyCallProcessor;->clearModifyInProgress()V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    if-ne v4, v2, :cond_4

    iget v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousCallType:I

    if-eq v4, v9, :cond_2

    iget v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousCallType:I

    if-ne v4, v0, :cond_1

    iget v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousModifyType:I

    if-eq v4, v1, :cond_6

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/util/SecModifyCallAdapter;->onModifiedCall(Lcom/android/incallui/Call;)V

    :cond_2
    :goto_0
    const-string v4, "video_connected_as_voice"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v11, :cond_3

    iget v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousCallState:I

    if-ne v4, v11, :cond_4

    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v10, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getShowToastAsConnectVoice()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousCallType:I

    if-ne v4, v10, :cond_4

    if-nez v0, :cond_4

    const-string v4, "canada_bmc_volte_ui"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f0901e0

    iget-object v7, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4, v7}, Lcom/android/incallui/util/NameNumberUtils;->displayToastLongwithName(ILcom/android/incallui/Call;)V

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4, v6}, Lcom/android/incallui/Call;->setShowToastAsConnectVoice(Z)V

    :cond_4
    iput v0, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousCallType:I

    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    iput v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousCallState:I

    iput v1, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousModifyType:I

    sget v4, Lcom/android/incallui/SecCall$ModifyType;->REQUEST:I

    if-eq v1, v4, :cond_5

    sget v4, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-ne v1, v4, :cond_9

    :cond_5
    move v4, v6

    :goto_2
    iput-boolean v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyRequest:Z

    sget v4, Lcom/android/incallui/SecCall$ModifyType;->RECEIVE:I

    if-ne v1, v4, :cond_a

    :goto_3
    iput-boolean v6, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyReceive:Z

    :goto_4
    return-void

    :cond_6
    iget-boolean v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyRequest:Z

    if-eqz v4, :cond_2

    sget v4, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/util/SecModifyCallAdapter;->onCancelModifyRequest(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-ne v4, v6, :cond_8

    const v4, 0x7f090325

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_1

    :cond_8
    const v4, 0x7f090325

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_1

    :cond_9
    move v4, v5

    goto :goto_2

    :cond_a
    move v6, v5

    goto :goto_3

    :cond_b
    const-string v4, "SecModifyCallAdapter"

    const-string v6, "onStateChange mPrimary == null"

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousCallState:I

    iput v9, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousCallType:I

    iput v9, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPreviousModifyType:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mPrimary:Lcom/android/incallui/Call;

    iput-boolean v5, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyRequest:Z

    iput-boolean v5, p0, Lcom/android/incallui/util/SecModifyCallAdapter;->mWasModifyReceive:Z

    goto :goto_4
.end method
