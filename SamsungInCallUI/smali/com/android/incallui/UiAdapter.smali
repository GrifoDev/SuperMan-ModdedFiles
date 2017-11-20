.class public Lcom/android/incallui/UiAdapter;
.super Ljava/lang/Object;


# static fields
.field public static final ACTIVE_CALL:I = 0x1

.field public static final BACKGROUND_CALL:I = 0x2

.field public static final CONFERENCE_CALL:I = 0x0

.field public static final EVENT_VOICE_MODIFY_BANNER_HIDE:I = 0x67

.field public static final EVENT_VOICE_MODIFY_BANNER_SHOW:I = 0x68

.field public static final EVENT_VOICE_PRIMARY_MODIFY_BANNER_HIDE:I = 0x69

.field public static final EVENT_VOICE_SECONDARY_MODIFY_BANNER_HIDE:I = 0x6a

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

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    const/16 v0, 0x6a

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

.method protected cancelTimerToHideVoiceCallModifyStateMessage(I)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    :cond_2
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

.method public enableSwapButton(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->enableSwapButton(Z)V

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

.method public getAgifPresenter()Lcom/android/incallui/AgifPresenter;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAgifFragment()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAgifFragment()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifFragment;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AgifPresenter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAgifFragment()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationHeight()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
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

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallButtonUi()Lcom/android/incallui/CallButtonUi;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallCardUi()Lcom/android/incallui/CallCardUi;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConferenceCallManagerShowingState()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getConferenceCallManagerShowingState()Z

    move-result v0

    :cond_0
    return v0
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

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/ConferenceManagerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentViewSize()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCurrentOrientation()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getCurrentOrientation()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getCurrentSecondaryCallName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->getCurrentSecondaryCallName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceDefaultHeight()I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getDialpadUi()Lcom/android/incallui/DialpadUi;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInCallActivity()Lcom/android/incallui/InCallActivity;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    return-object v0
.end method

.method public getRealContentViewSize()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getRealContentViewSize()Landroid/graphics/Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/VideoCallFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoCallUi()Lcom/android/incallui/VideoCallUi;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallFragment()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->isAvailableFullScreenMode()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->isMenuOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->isShowingCameraEffectUi()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public isDialpadVisible()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isDisplayReady()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/VideoCallUi;->needToShowPreparingImage()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInExceptionArea(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->isInExceptionArea(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMultiWindowMode()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isMenuOpen()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPreviewReady()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->isPreviewReady()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimaryVisible()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->isPrimaryVisible()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isShowAgifFragment()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "isShowAgifFragment() "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->isShowAgifList()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isShowAgifImageView()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->isDisplayingAgif()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isShowMultiWindowMode()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isMultiWindowUX()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isShowVZWInfoBanner()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->isShowVZWInfoBanner()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isShowingCameraEffectUi()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->isShowingCameraEffectUi()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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

.method public isTabletUX()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isTabletUX()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onCallButtonViewChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getDialpadUi()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->onCallButtonViewChanged()V

    :cond_0
    return-void
.end method

.method public onSelectAgifContents(Landroid/net/Uri;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectAgifContents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getAgifImageFile()Ljava/io/File;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, v0, v3}, Lcom/android/incallui/CallCardUi;->onSelectAgifContents(Landroid/net/Uri;Ljava/io/File;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/incallui/AgifPresenter$AgifUi;->onSelectAgifContents(Landroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method public restartTimer(III)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method protected restartTimerToHideVoiceCallModifyStateMessage(I)V
    .locals 2

    const/16 v1, 0x1388

    if-nez p1, :cond_0

    const/16 v0, 0x67

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/incallui/UiAdapter;->restartTimer(III)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x69

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/incallui/UiAdapter;->restartTimer(III)V

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/16 v0, 0x6a

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/incallui/UiAdapter;->restartTimer(III)V

    :cond_2
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

.method public showCallCardCameraEffectLayout(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->showCameraEffectLayout(Z)V

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
    .locals 5

    const/4 v4, 0x1

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

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/incallui/UiAdapter;->restartTimerToHideVoiceCallModifyStateMessage(I)V

    :goto_1
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->showConferenceStateInfoBanner(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/incallui/UiAdapter;->startTimerToHideVoiceCallModifyStateMessage(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/incallui/UiAdapter;->cancelTimerToHideVoiceCallModifyStateMessage(I)V

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

.method public showVideoBanner(Ljava/lang/String;)V
    .locals 3

    const-string v0, "UiAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showVideoBanner : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->showVideoStateMessageUi(Ljava/lang/String;)V

    :cond_0
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

.method public showVoiceCallModifyStateMessage(ZII)V
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x68

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_a

    if-nez p3, :cond_b

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    invoke-static {p2}, Lcom/android/incallui/VideoBanner;->getMessageForVideoState(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, p3}, Lcom/android/incallui/UiAdapter;->restartTimerToHideVoiceCallModifyStateMessage(I)V

    :goto_1
    if-ne p3, v5, :cond_3

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    invoke-static {p2}, Lcom/android/incallui/VideoBanner;->getMessageForVideoState(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    invoke-static {p2}, Lcom/android/incallui/VideoBanner;->getMessageForModify(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x69

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, p3}, Lcom/android/incallui/UiAdapter;->restartTimerToHideVoiceCallModifyStateMessage(I)V

    :cond_3
    :goto_2
    if-ne p3, v6, :cond_4

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    invoke-static {p2, v7}, Lcom/android/incallui/VideoBanner;->getMessageForVideoState(IZ)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, p3}, Lcom/android/incallui/UiAdapter;->restartTimerToHideVoiceCallModifyStateMessage(I)V

    :cond_4
    :goto_3
    if-nez p3, :cond_5

    invoke-interface {v2, p1, v1, v7}, Lcom/android/incallui/CallCardUi;->showModifyStateInfoBanner(ZLjava/lang/String;I)V

    :cond_5
    if-ne p3, v5, :cond_6

    invoke-interface {v2, p1, v1, v0, v5}, Lcom/android/incallui/CallCardUi;->showModifyStateInfoBanner(ZLjava/lang/String;[Ljava/lang/String;I)V

    :cond_6
    if-ne p3, v6, :cond_1

    invoke-interface {v2, p1, v1, v6}, Lcom/android/incallui/CallCardUi;->showModifyStateInfoBanner(ZLjava/lang/String;I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/incallui/UiAdapter;->startTimerToHideVoiceCallModifyStateMessage(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, p3}, Lcom/android/incallui/UiAdapter;->startTimerToHideVoiceCallModifyStateMessage(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, p3}, Lcom/android/incallui/UiAdapter;->startTimerToHideVoiceCallModifyStateMessage(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0, p3}, Lcom/android/incallui/UiAdapter;->cancelTimerToHideVoiceCallModifyStateMessage(I)V

    move-object v1, v0

    goto :goto_3

    :cond_b
    move-object v1, v0

    goto :goto_1
.end method

.method public startTimer(III)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method protected startTimerToHideVoiceCallModifyStateMessage(I)V
    .locals 2

    const/16 v1, 0x1388

    if-nez p1, :cond_0

    const/16 v0, 0x67

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/incallui/UiAdapter;->startTimer(III)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x69

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/incallui/UiAdapter;->startTimer(III)V

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/16 v0, 0x6a

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/incallui/UiAdapter;->startTimer(III)V

    :cond_2
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

.method public updateAgifContainer(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->updateAgifContainer(Z)V

    :cond_0
    return-void
.end method

.method public updateAgifListText(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/AgifPresenter$AgifUi;->updateAgifListText(I)V

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

.method public updateCallCardCameraEffectLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->updateCameraEffectLayout()V

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

.method public updateIncomingHideButton()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->updateIncomingHideButton()V

    :cond_0
    return-void
.end method

.method public updateInviteGroupVideoButtonLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->updateInviteGroupVideoButtonLayout()V

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
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->updateNavigationBar()V

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

.method public updateSmallView(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->updateSmallView(Lcom/android/incallui/Call;)V

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
