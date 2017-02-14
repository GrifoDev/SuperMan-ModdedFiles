.class public Lcom/android/incallui/UiAdapter;
.super Ljava/lang/Object;
.source "UiAdapter.java"


# static fields
.field public static final EVENT_VOICE_MODIFY_BANNER_HIDE:I = 0x67

.field public static final EVENT_VOICE_MODIFY_BANNER_SHOW:I = 0x68

.field private static final LOG_TAG:Ljava/lang/String; = "UiAdapter"

.field public static final TIMER_VOICE_MODIFY_BANNER_1_SEC:I = 0x3e8

.field public static final TIMER_VOICE_MODIFY_BANNER_5_SEC:I = 0x1388

.field private static sInstance:Lcom/android/incallui/UiAdapter;


# instance fields
.field protected mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/UiAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/UiAdapter$1;-><init>(Lcom/android/incallui/UiAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static deInit()V
    .locals 2

    const-class v1, Lcom/android/incallui/UiAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->cancelAllTimer()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/android/incallui/UiAdapter;
    .locals 1

    sget-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->init()Lcom/android/incallui/UiAdapter;

    :cond_0
    sget-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    return-object v0
.end method

.method public static init()Lcom/android/incallui/UiAdapter;
    .locals 2

    const-class v1, Lcom/android/incallui/UiAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/UiAdapter;

    invoke-direct {v0}, Lcom/android/incallui/UiAdapter;-><init>()V

    sput-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    :cond_0
    sget-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCallClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->addCallClicked()V

    :cond_0
    return-void
.end method

.method public arrangeIncomingHandle(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/AnswerUi;->arrangeIncomingHandle(I)V

    :cond_0
    return-void
.end method

.method public bluetoothClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->bluetoothClicked()V

    :cond_0
    return-void
.end method

.method protected cancelAllTimer()V
    .locals 1

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    return-void
.end method

.method public cancelTimer(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected cancelTimerToHideVoiceCallModifyStateMessage()V
    .locals 1

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    return-void
.end method

.method public dismissInCallMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    :cond_0
    return-void
.end method

.method public displayDialpad(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    :cond_0
    return-void
.end method

.method public extraVolumeClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->extraVolumeClicked()V

    :cond_0
    return-void
.end method

.method public getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getAnswerUi()Lcom/android/incallui/AnswerUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallButtonUi()Lcom/android/incallui/CallButtonUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallCardUi()Lcom/android/incallui/CallCardUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConferenceCallManagerShowingState()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getConferenceCallManagerShowingState()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public getConferenceManagerPresenter()Lcom/android/incallui/ConferenceManagerPresenter;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getConferenceManagerFragment()Lcom/android/incallui/ConferenceManagerUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getConferenceManagerFragment()Lcom/android/incallui/ConferenceManagerUi;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/ConferenceManagerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentOrientation()I
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCurrentOrientation()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getCurrentSecondaryCallName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->getCurrentSecondaryCallName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDialpadUi()Lcom/android/incallui/DialpadUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInCallActivity()Lcom/android/incallui/InCallActivity;
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallFragment()Lcom/android/incallui/VideoCallUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallFragment()Lcom/android/incallui/VideoCallUi;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/VideoCallFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoCallUi()Lcom/android/incallui/VideoCallUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallFragment()Lcom/android/incallui/VideoCallUi;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideConferenceCallManager()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    :cond_0
    return-void
.end method

.method public hideDialpadForModifyCall()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->hideDialpadForModifyCall()V

    :cond_0
    return-void
.end method

.method public hideVideoTogglingViews()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->hideVideoTogglingViews()V

    :cond_0
    return-void
.end method

.method public isAvailableFullScreenMode()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->isAvailableFullScreenMode()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->isMenuOpen()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->isShowingCameraEffectUi()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialpadVisible()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public isDisplayReady()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->needToShowPreparingImage()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isInExceptionArea(II)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->isInExceptionArea(II)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInMultiWindowMode()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public isMenuOpen()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isPreviewReady()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->isPreviewReady()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPrimaryVisible()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->isPrimaryVisible()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public isShowMultiWindowMode()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isShowingCameraEffectUi()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->isShowingCameraEffectUi()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSwapProcessing()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->isSwapProcessing()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public restartTimer(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected restartTimerToHideVoiceCallModifyStateMessage()V
    .locals 2

    const/16 v0, 0x67

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/UiAdapter;->restartTimer(II)V

    return-void
.end method

.method public returnToNormalWindowMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->returnToNormalWindowMode()V

    :cond_0
    return-void
.end method

.method public setAudioMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->setAudioMode(I)V

    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/VideoCallUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/VideoCallUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->setPrimaryVisible(Z)V

    :cond_0
    return-void
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->setPrimaryVisibleByDialpad(Z)V

    :cond_0
    return-void
.end method

.method public setRecordTimeUpdate(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->setRecordTimeUpdate(J)V

    :cond_0
    return-void
.end method

.method public showAddUserForConferenceCall()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->showAddUserForConferenceCall()V

    :cond_0
    return-void
.end method

.method public showButtonIndicatorArea(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->showButtonIndicatorArea(Z)V

    :cond_0
    return-void
.end method

.method public showCallBannerByDialpad(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->showCallBannerByDialpad(Z)V

    :cond_0
    return-void
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->showCallCardIndicatorArea(Z)V

    :cond_0
    return-void
.end method

.method public showCameraEffectLayout(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->showCameraEffectLayout(Z)V

    :cond_0
    return-void
.end method

.method public showConferenceCallManager()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager()V

    :cond_0
    return-void
.end method

.method public showConferenceStateMessage(ZLjava/lang/String;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "UiAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showConferenceStateMessage show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " persistent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->restartTimerToHideVoiceCallModifyStateMessage()V

    :goto_1
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->showConferenceStateInfoBanner(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->startTimerToHideVoiceCallModifyStateMessage()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->cancelTimerToHideVoiceCallModifyStateMessage()V

    goto :goto_1
.end method

.method public showFarEndCaptureAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->showFarEndCaptureAnimation()V

    :cond_0
    return-void
.end method

.method public showInCallMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->showInCallMenu()V

    :cond_0
    return-void
.end method

.method public showIncomingHideMeImage(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->showIncomingHideMeImage(Z)V

    :cond_0
    return-void
.end method

.method public showIndicatorArea(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIndicatorArea = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/UiAdapter;->showCallCardIndicatorArea(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/UiAdapter;->showVideoIndicatorArea(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/UiAdapter;->showButtonIndicatorArea(Z)V

    return-void
.end method

.method public showNearEndImage(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->showNearEndImage(Z)V

    :cond_0
    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->showRecordingInfo(ZZ)V

    :cond_0
    return-void
.end method

.method public showSwitchCameraAnimation(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->showSwitchCameraAnimation(Z)V

    :cond_0
    return-void
.end method

.method public showVideoBanner(Ljava/lang/String;)V
    .locals 5

    const-string v2, "UiAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showVideoBanner : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->showVideoStateMessageUi(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/incallui/VideoCallUi;->updateSmallForVideoBanner()V

    :cond_1
    return-void
.end method

.method public showVideoInCallResize(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->showVideoInCallResize(Z)V

    :cond_0
    return-void
.end method

.method public showVideoIndicatorArea(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->showVideoIndicatorArea(Z)V

    :cond_0
    return-void
.end method

.method public showVoiceCallModifyStateMessage(ZI)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    invoke-static {p2}, Lcom/android/incallui/VideoBanner;->getMessageForVideoState(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x67

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->restartTimerToHideVoiceCallModifyStateMessage()V

    :goto_1
    invoke-interface {v3, p1, v0}, Lcom/android/incallui/CallCardUi;->showModifyStateInfoBanner(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->startTimerToHideVoiceCallModifyStateMessage()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->cancelTimerToHideVoiceCallModifyStateMessage()V

    goto :goto_1
.end method

.method public startTimer(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected startTimerToHideVoiceCallModifyStateMessage()V
    .locals 2

    const/16 v0, 0x67

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/UiAdapter;->startTimer(II)V

    return-void
.end method

.method public switchCameraClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->switchCameraClicked()V

    :cond_0
    return-void
.end method

.method public switchVideoDisplay()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->switchVideoDisplay()V

    :cond_0
    return-void
.end method

.method public toggleVideoButtonContainer()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->toggleVideoButtonContainer()V

    :cond_0
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public updateCallCard(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->updateCallCard(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public updateCameraEffectLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->updateCameraEffectLayout()V

    :cond_0
    return-void
.end method

.method public updateCameraEffectLayout(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->updateCameraEffectLayout(Z)V

    :cond_0
    return-void
.end method

.method public updateIncomingHideButton()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->updateIncomingHideButton()V

    :cond_0
    return-void
.end method

.method public updateModifyRequestButtons(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->updateModifyRequestButtons(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public updateNavigationBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->updateNavigationBar()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->updateNavigationBar()V

    :cond_1
    return-void
.end method

.method public updateShowMeUi(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/UiAdapter;->showIncomingHideMeImage(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/UiAdapter;->updateCallButtons(Lcom/android/incallui/Call;)V

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->updateIncomingHideButton()V

    :cond_1
    return-void
.end method

.method public updateSwitchButtonLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->updateSwitchButtonLayout()V

    :cond_0
    return-void
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->updateSwitchButtonLayout(Z)V

    :cond_0
    return-void
.end method

.method public updateVideoRecordButton()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->updateVideoRecordButton()V

    :cond_0
    return-void
.end method
