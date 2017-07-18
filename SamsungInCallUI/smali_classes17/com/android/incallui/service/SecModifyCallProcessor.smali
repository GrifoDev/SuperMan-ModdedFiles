.class public Lcom/android/incallui/service/SecModifyCallProcessor;
.super Ljava/lang/Object;
.source "SecModifyCallProcessor.java"


# static fields
.field private static final SHOW_IMMEDIATELY:I = 0x1

.field private static final SHOW_NEXTSTATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SECVT-SecModifyCallProcessor"

.field private static mCallChargeState:Z

.field private static sSecModifyCallProcessor:Lcom/android/incallui/service/SecModifyCallProcessor;


# instance fields
.field private mIncomingCallType:I

.field private mModifyInProgress:Z

.field public modifyRequestError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/service/SecModifyCallProcessor;->mCallChargeState:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/service/SecModifyCallProcessor;->mModifyInProgress:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/service/SecModifyCallProcessor;->mIncomingCallType:I

    iput-boolean v1, p0, Lcom/android/incallui/service/SecModifyCallProcessor;->modifyRequestError:Z

    return-void
.end method

.method private closeSystemDialogs(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private dismissInCallMenu()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;
    .locals 2

    const-class v1, Lcom/android/incallui/service/SecModifyCallProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/service/SecModifyCallProcessor;->sSecModifyCallProcessor:Lcom/android/incallui/service/SecModifyCallProcessor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/service/SecModifyCallProcessor;

    invoke-direct {v0}, Lcom/android/incallui/service/SecModifyCallProcessor;-><init>()V

    sput-object v0, Lcom/android/incallui/service/SecModifyCallProcessor;->sSecModifyCallProcessor:Lcom/android/incallui/service/SecModifyCallProcessor;

    :cond_0
    sget-object v0, Lcom/android/incallui/service/SecModifyCallProcessor;->sSecModifyCallProcessor:Lcom/android/incallui/service/SecModifyCallProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hideDialpadForModifyCall()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    return-void
.end method

.method private onIncomingModifyCall(ILcom/android/incallui/Call;)V
    .locals 3

    const-string v0, "SECVT-SecModifyCallProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingModifyCall() callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/SecModifyCallProcessor;->updateIncomingModifyCalltype(ILcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private onResultModifyCallRequest(ILjava/lang/String;Lcom/android/incallui/Call;)V
    .locals 3

    const-string v0, "SECVT-SecModifyCallProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResultModifyCallRequest() callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/SecModifyCallProcessor;->mModifyInProgress:Z

    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/incallui/Call;->cancelModifyRequestDummy()V

    :cond_0
    const-string v0, "us_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "SECVT-SecModifyCallProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResultModifyCallRequest - Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p1, p3}, Lcom/android/incallui/service/SecModifyCallProcessor;->showModifyCallException(Ljava/lang/String;ILcom/android/incallui/Call;)V

    :cond_2
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_3
    return-void
.end method

.method private showModifyCallException(Ljava/lang/String;ILcom/android/incallui/Call;)V
    .locals 5

    const v4, 0x7f0902dc

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "us_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/service/SecModifyCallProcessor;->modifyRequestError:Z

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    invoke-direct {p0}, Lcom/android/incallui/service/SecModifyCallProcessor;->updateCallButtons()V

    :cond_0
    const/16 v2, 0x456

    if-ne v0, v2, :cond_3

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    const-string v2, "SECVT-SecModifyCallProcessor"

    const-string v3, "onResultModifyCallRequest - MESSAGE_FAREND_STAY_ON_VOICE "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc

    invoke-virtual {p3, v2}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MODIFY_SWITCH_REJECT_POPUP:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0902db

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x455

    if-ne v0, v2, :cond_7

    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0902de

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0902dd

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_6
    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_7
    const-string v2, "dcm_volte_popup_message"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x1e8

    if-ne v0, v2, :cond_8

    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_8
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->isChangedToTwoWayVideo()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {p2}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x14

    invoke-virtual {p3, v2}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p3, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    goto :goto_0

    :cond_a
    const-string v2, "SECVT-SecModifyCallProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleModifyCallException Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateCallButtons()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/UiAdapter;->updateCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private updateIncomingModifyCalltype(ILcom/android/incallui/Call;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "SECVT-SecModifyCallProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming ModifyCalltype : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecCall;->setIncomingModifyCalltype(I)V

    :cond_0
    return-void
.end method

.method private updateRequestModifyCalltype(I)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "SECVT-SecModifyCallProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request ModifyCalltype : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/SecCall;->setRequestModifyCalltype(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public acceptModifyCall()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/service/SecModifyCallProcessor;->respondModifyCall(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public checkAndUpdateModifyDummyState()V
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v4

    sget v5, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-ne v4, v5, :cond_2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasOutgoingCall()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->cancelModifyRequestDummy()V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v4

    sget v5, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-ne v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->cancelModifyRequestDummy()V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    :cond_3
    return-void

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public clearModifyInProgress()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/SecModifyCallProcessor;->mModifyInProgress:Z

    return-void
.end method

.method public onModifyCall(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v1, "SECVT-SecModifyCallProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onModifyCall - isIncoming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/incallui/CallList;->getCallFromTelecomCallId(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/service/SecModifyCallProcessor;->onIncomingModifyCall(ILcom/android/incallui/Call;)V

    :goto_0
    const-string v1, "enabled"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecModifyCallProcessor;->closeSystemDialogs(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/service/SecModifyCallProcessor;->hideDialpadForModifyCall()V

    invoke-direct {p0}, Lcom/android/incallui/service/SecModifyCallProcessor;->dismissInCallMenu()V

    return-void

    :cond_1
    invoke-direct {p0, p2, p3, v0}, Lcom/android/incallui/service/SecModifyCallProcessor;->onResultModifyCallRequest(ILjava/lang/String;Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public rejectModifyCall()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v1

    sget v2, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->cancelModifyRequestDummy()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "SECVT-SecModifyCallProcessor"

    const-string v2, "Reject ModifyCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/service/SecModifyCallProcessor;->respondModifyCall(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public requestModifyCall(I)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    iget-boolean v4, p0, Lcom/android/incallui/service/SecModifyCallProcessor;->mModifyInProgress:Z

    if-eqz v4, :cond_0

    const-string v4, "SECVT-SecModifyCallProcessor"

    const-string v5, "requestModifyCall - modify in progress, ignore more modify request"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    const-string v4, "dcm_volte_popup_message"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0901de

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090046

    new-instance v6, Lcom/android/incallui/service/SecModifyCallProcessor$1;

    invoke-direct {v6, p0}, Lcom/android/incallui/service/SecModifyCallProcessor$1;-><init>(Lcom/android/incallui/service/SecModifyCallProcessor;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/service/SecModifyCallProcessor;->updateRequestModifyCalltype(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    const-string v3, "SECVT-SecModifyCallProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestModifyCall is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v6, p0, Lcom/android/incallui/service/SecModifyCallProcessor;->mModifyInProgress:Z

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/android/incallui/TelecomAdapter;->requestModifyCall(Lcom/android/incallui/Call;I)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public requestVideoShare(Z)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecModifyCallProcessor;->requestModifyCall(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecModifyCallProcessor;->requestModifyCall(I)Z

    goto :goto_0
.end method

.method public respondModifyCall(ZLjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SECVT-SecModifyCallProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "respondModifyCall() CallState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/incallui/TelecomAdapter;->respondModifyCall(Lcom/android/incallui/Call;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCallCharge(Z)V
    .locals 3

    const-string v0, "SECVT-SecModifyCallProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallCharge () chargePart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p1, Lcom/android/incallui/service/SecModifyCallProcessor;->mCallChargeState:Z

    return-void
.end method
