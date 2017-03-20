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

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/incallui/UiAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/UiAdapter$1;-><init>(Lcom/android/incallui/UiAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    .line 132
    return-void
.end method

.method public static deInit()V
    .locals 2

    .prologue
    .line 119
    const-class v1, Lcom/android/incallui/UiAdapter;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->cancelAllTimer()V

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    .line 124
    :cond_0
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/android/incallui/UiAdapter;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/android/incallui/UiAdapter;->init()Lcom/android/incallui/UiAdapter;

    .line 106
    :cond_0
    sget-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    return-object v0
.end method

.method public static init()Lcom/android/incallui/UiAdapter;
    .locals 2

    .prologue
    .line 110
    const-class v1, Lcom/android/incallui/UiAdapter;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/android/incallui/UiAdapter;

    invoke-direct {v0}, Lcom/android/incallui/UiAdapter;-><init>()V

    sput-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    .line 114
    :cond_0
    sget-object v0, Lcom/android/incallui/UiAdapter;->sInstance:Lcom/android/incallui/UiAdapter;

    monitor-exit v1

    return-object v0

    .line 115
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

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 611
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 612
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->addCallClicked()V

    .line 614
    :cond_0
    return-void
.end method

.method public arrangeIncomingHandle(I)V
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    .line 716
    .local v0, "ui":Lcom/android/incallui/AnswerUi;
    if-eqz v0, :cond_0

    .line 717
    invoke-interface {v0, p1}, Lcom/android/incallui/AnswerUi;->arrangeIncomingHandle(I)V

    .line 719
    :cond_0
    return-void
.end method

.method public bluetoothClicked()V
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 597
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 598
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->bluetoothClicked()V

    .line 600
    :cond_0
    return-void
.end method

.method protected cancelAllTimer()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    .line 75
    return-void
.end method

.method public cancelTimer(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    :cond_0
    return-void
.end method

.method protected cancelTimerToHideVoiceCallModifyStateMessage()V
    .locals 1

    .prologue
    .line 399
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    .line 400
    return-void
.end method

.method public dismissInCallMenu()V
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 247
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    .line 250
    :cond_0
    return-void
.end method

.method public displayDialpad(ZZ)V
    .locals 1
    .param p1, "showDialpad"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 217
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 220
    :cond_0
    return-void
.end method

.method public extraVolumeClicked()V
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 604
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 605
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->extraVolumeClicked()V

    .line 607
    :cond_0
    return-void
.end method

.method public getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getAnswerUi()Lcom/android/incallui/AnswerUi;
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 141
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    .line 144
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 161
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    .line 164
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallButtonUi()Lcom/android/incallui/CallButtonUi;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 153
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 177
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    .line 180
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallCardUi()Lcom/android/incallui/CallCardUi;
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 169
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConferenceCallManagerShowingState()Z
    .locals 2

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, "visible":Z
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 309
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getConferenceCallManagerShowingState()Z

    move-result v1

    .line 312
    :cond_0
    return v1
.end method

.method public getConferenceManagerPresenter()Lcom/android/incallui/ConferenceManagerPresenter;
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 209
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getConferenceManagerFragment()Lcom/android/incallui/ConferenceManagerUi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getConferenceManagerFragment()Lcom/android/incallui/ConferenceManagerUi;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/ConferenceManagerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    .line 212
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentOrientation()I
    .locals 2

    .prologue
    .line 253
    const/4 v1, 0x1

    .line 254
    .local v1, "orientation":I
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 255
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCurrentOrientation()I

    move-result v1

    .line 258
    :cond_0
    return v1
.end method

.method public getCurrentSecondaryCallName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 724
    .local v0, "callCardUi":Lcom/android/incallui/CallCardUi;
    if-eqz v0, :cond_0

    .line 725
    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->getCurrentSecondaryCallName()Ljava/lang/String;

    move-result-object v1

    .line 727
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDialpadUi()Lcom/android/incallui/DialpadUi;
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 185
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v1

    .line 188
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInCallActivity()Lcom/android/incallui/InCallActivity;
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 136
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    return-object v0
.end method

.method public getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 201
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallFragment()Lcom/android/incallui/VideoCallUi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallFragment()Lcom/android/incallui/VideoCallUi;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/VideoCallFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    .line 204
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoCallUi()Lcom/android/incallui/VideoCallUi;
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 193
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallFragment()Lcom/android/incallui/VideoCallUi;

    move-result-object v1

    .line 196
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideConferenceCallManager()V
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 301
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 302
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager(Z)V

    .line 304
    :cond_0
    return-void
.end method

.method public hideDialpadForModifyCall()V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 233
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->hideDialpadForModifyCall()V

    .line 236
    :cond_0
    return-void
.end method

.method public hideVideoTogglingViews()V
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 618
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 619
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->hideVideoTogglingViews()V

    .line 621
    :cond_0
    return-void
.end method

.method public isAvailableFullScreenMode()Z
    .locals 3

    .prologue
    .line 678
    const/4 v0, 0x1

    .line 679
    .local v0, "isAvailable":Z
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    .line 680
    .local v1, "ui":Lcom/android/incallui/CallCardUi;
    if-eqz v1, :cond_0

    .line 681
    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->isAvailableFullScreenMode()Z

    move-result v0

    .line 683
    :cond_0
    if-eqz v0, :cond_1

    .line 684
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

    .line 685
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 687
    :cond_1
    :goto_0
    return v0

    .line 685
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialpadVisible()Z
    .locals 2

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "visible":Z
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 225
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    .line 228
    :cond_0
    return v1
.end method

.method public isDisplayReady()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 707
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    .line 708
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 709
    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->needToShowPreparingImage()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 711
    :cond_0
    return v1
.end method

.method public isInExceptionArea(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 648
    .local v0, "ui":Lcom/android/incallui/CallCardUi;
    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->isInExceptionArea(II)Z

    move-result v1

    .line 651
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInMultiWindowMode()Z
    .locals 2

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 264
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    .line 267
    :cond_0
    return v1
.end method

.method public isMenuOpen()Z
    .locals 3

    .prologue
    .line 669
    const/4 v1, 0x0

    .line 670
    .local v1, "isOpen":Z
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 671
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    const/4 v1, 0x1

    .line 674
    :cond_0
    return v1
.end method

.method public isPreviewReady()Z
    .locals 2

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    .line 700
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 701
    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->isPreviewReady()Z

    move-result v1

    .line 703
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPrimaryVisible()Z
    .locals 2

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, "visible":Z
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 457
    .local v0, "ui":Lcom/android/incallui/CallCardUi;
    if-eqz v0, :cond_0

    .line 458
    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->isPrimaryVisible()Z

    move-result v1

    .line 460
    :cond_0
    return v1
.end method

.method public isShowMultiWindowMode()Z
    .locals 2

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 275
    :cond_0
    return v0
.end method

.method public isShowingCameraEffectUi()Z
    .locals 2

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 692
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 693
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->isShowingCameraEffectUi()Z

    move-result v1

    .line 695
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSwapProcessing()Z
    .locals 2

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "enable":Z
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    .line 487
    .local v1, "ui":Lcom/android/incallui/CallCardUi;
    if-eqz v1, :cond_0

    .line 488
    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->isSwapProcessing()Z

    move-result v0

    .line 490
    :cond_0
    return v0
.end method

.method public restartTimer(II)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "delay"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/incallui/UiAdapter;->cancelTimer(I)V

    .line 89
    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    :cond_0
    return-void
.end method

.method protected restartTimerToHideVoiceCallModifyStateMessage()V
    .locals 2

    .prologue
    .line 403
    const/16 v0, 0x67

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/UiAdapter;->restartTimer(II)V

    .line 404
    return-void
.end method

.method public returnToNormalWindowMode()V
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 280
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->returnToNormalWindowMode()V

    .line 283
    :cond_0
    return-void
.end method

.method public setAudioMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 583
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 584
    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->setAudioMode(I)V

    .line 586
    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    .line 324
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/VideoCallUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 327
    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 287
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    .line 290
    :cond_0
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    .line 338
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/VideoCallUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 341
    :cond_0
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 442
    .local v0, "ui":Lcom/android/incallui/CallCardUi;
    if-eqz v0, :cond_0

    .line 443
    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->setPrimaryVisible(Z)V

    .line 445
    :cond_0
    return-void
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 449
    .local v0, "ui":Lcom/android/incallui/CallCardUi;
    if-eqz v0, :cond_0

    .line 450
    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->setPrimaryVisibleByDialpad(Z)V

    .line 452
    :cond_0
    return-void
.end method

.method public setRecordTimeUpdate(J)V
    .locals 1
    .param p1, "recDuration"    # J

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 465
    .local v0, "ui":Lcom/android/incallui/CallCardUi;
    if-eqz v0, :cond_0

    .line 466
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->setRecordTimeUpdate(J)V

    .line 468
    :cond_0
    return-void
.end method

.method public showAddUserForConferenceCall()V
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 576
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->showAddUserForConferenceCall()V

    .line 579
    :cond_0
    return-void
.end method

.method public showButtonIndicatorArea(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 625
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 626
    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->showButtonIndicatorArea(Z)V

    .line 628
    :cond_0
    return-void
.end method

.method public showCallBannerByDialpad(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    .line 641
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 642
    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->showCallBannerByDialpad(Z)V

    .line 644
    :cond_0
    return-void
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 479
    .local v0, "ui":Lcom/android/incallui/CallCardUi;
    if-eqz v0, :cond_0

    .line 480
    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->showCallCardIndicatorArea(Z)V

    .line 482
    :cond_0
    return-void
.end method

.method public showCameraEffectLayout(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 569
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->showCameraEffectLayout(Z)V

    .line 572
    :cond_0
    return-void
.end method

.method public showConferenceCallManager()V
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 294
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->showConferenceCallManager()V

    .line 297
    :cond_0
    return-void
.end method

.method public showConferenceStateMessage(ZLjava/lang/String;Z)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 377
    .local v0, "ui":Lcom/android/incallui/CallCardUi;
    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 380
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

    .line 381
    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    .line 382
    iget-object v1, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->restartTimerToHideVoiceCallModifyStateMessage()V

    .line 391
    :goto_1
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->showConferenceStateInfoBanner(ZLjava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->startTimerToHideVoiceCallModifyStateMessage()V

    goto :goto_1

    .line 388
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->cancelTimerToHideVoiceCallModifyStateMessage()V

    goto :goto_1
.end method

.method public showFarEndCaptureAnimation()V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    .line 331
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->showFarEndCaptureAnimation()V

    .line 334
    :cond_0
    return-void
.end method

.method public showInCallMenu()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 240
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->showInCallMenu()V

    .line 243
    :cond_0
    return-void
.end method

.method public showIncomingHideMeImage(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    .line 427
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 428
    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->showIncomingHideMeImage(Z)V

    .line 430
    :cond_0
    return-void
.end method

.method public showIndicatorArea(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 631
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

    .line 632
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/UiAdapter;->showCallCardIndicatorArea(Z)V

    .line 635
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/UiAdapter;->showVideoIndicatorArea(Z)V

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/incallui/UiAdapter;->showButtonIndicatorArea(Z)V

    .line 637
    return-void
.end method

.method public showNearEndImage(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    .line 663
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 664
    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->showNearEndImage(Z)V

    .line 666
    :cond_0
    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 1
    .param p1, "near"    # Z
    .param p2, "show"    # Z

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 317
    .local v0, "ui":Lcom/android/incallui/CallCardUi;
    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardUi;->showRecordingInfo(ZZ)V

    .line 320
    :cond_0
    return-void
.end method

.method public showSwitchCameraAnimation(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    .line 345
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->showSwitchCameraAnimation(Z)V

    .line 348
    :cond_0
    return-void
.end method

.method public showVideoBanner(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 407
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

    .line 408
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 409
    .local v0, "callCardUi":Lcom/android/incallui/CallCardUi;
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v1

    .line 410
    .local v1, "videoCallUi":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 411
    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->showVideoStateMessageUi(Ljava/lang/String;)V

    .line 413
    :cond_0
    if-eqz v1, :cond_1

    .line 414
    invoke-interface {v1}, Lcom/android/incallui/VideoCallUi;->updateSmallForVideoBanner()V

    .line 416
    :cond_1
    return-void
.end method

.method public showVideoInCallResize(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    .line 420
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->showVideoInCallResize(Z)V

    .line 423
    :cond_0
    return-void
.end method

.method public showVideoIndicatorArea(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    .line 434
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->showVideoIndicatorArea(Z)V

    .line 437
    :cond_0
    return-void
.end method

.method public showVoiceCallModifyStateMessage(ZI)V
    .locals 8
    .param p1, "show"    # Z
    .param p2, "nType"    # I

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v3

    .line 352
    .local v3, "ui":Lcom/android/incallui/CallCardUi;
    if-nez v3, :cond_0

    .line 353
    iget-object v4, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 354
    .local v1, "msg":Landroid/os/Message;
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

    .line 355
    .local v2, "str":[Ljava/lang/String;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    iget-object v4, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 373
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "str":[Ljava/lang/String;
    :goto_0
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    .line 361
    .local v0, "message":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 362
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    invoke-static {p2}, Lcom/android/incallui/VideoBanner;->getMessageForVideoState(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v4, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x67

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->restartTimerToHideVoiceCallModifyStateMessage()V

    .line 372
    :goto_1
    invoke-interface {v3, p1, v0}, Lcom/android/incallui/CallCardUi;->showModifyStateInfoBanner(ZLjava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->startTimerToHideVoiceCallModifyStateMessage()V

    goto :goto_1

    .line 369
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->cancelTimerToHideVoiceCallModifyStateMessage()V

    goto :goto_1
.end method

.method public startTimer(II)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "delay"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/incallui/UiAdapter;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 83
    :cond_0
    return-void
.end method

.method protected startTimerToHideVoiceCallModifyStateMessage()V
    .locals 2

    .prologue
    .line 395
    const/16 v0, 0x67

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/UiAdapter;->startTimer(II)V

    .line 396
    return-void
.end method

.method public switchCameraClicked()V
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 590
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 591
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->switchCameraClicked()V

    .line 593
    :cond_0
    return-void
.end method

.method public switchVideoDisplay()V
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getVideoCallUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    .line 656
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 657
    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->switchVideoDisplay()V

    .line 659
    :cond_0
    return-void
.end method

.method public toggleVideoButtonContainer()V
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 520
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 521
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->toggleVideoButtonContainer()V

    .line 523
    :cond_0
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 513
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 514
    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 516
    :cond_0
    return-void
.end method

.method public updateCallCard(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 505
    .local v0, "ui":Lcom/android/incallui/CallCardUi;
    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardUi;->updateCallCard(Lcom/android/incallui/Call;)V

    .line 508
    :cond_0
    return-void
.end method

.method public updateCameraEffectLayout()V
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 548
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 549
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->updateCameraEffectLayout()V

    .line 551
    :cond_0
    return-void
.end method

.method public updateCameraEffectLayout(Z)V
    .locals 1
    .param p1, "isShowingBanner"    # Z

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 555
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 556
    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->updateCameraEffectLayout(Z)V

    .line 558
    :cond_0
    return-void
.end method

.method public updateIncomingHideButton()V
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 472
    .local v0, "ui":Lcom/android/incallui/CallCardUi;
    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->updateIncomingHideButton()V

    .line 475
    :cond_0
    return-void
.end method

.method public updateModifyRequestButtons(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 562
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 563
    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->updateModifyRequestButtons(Lcom/android/incallui/Call;)V

    .line 565
    :cond_0
    return-void
.end method

.method public updateNavigationBar()V
    .locals 2

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v1

    .line 732
    .local v1, "callCardUi":Lcom/android/incallui/CallCardUi;
    if-eqz v1, :cond_0

    .line 733
    invoke-interface {v1}, Lcom/android/incallui/CallCardUi;->updateNavigationBar()V

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 736
    .local v0, "callButtonUi":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_1

    .line 737
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->updateNavigationBar()V

    .line 739
    :cond_1
    return-void
.end method

.method public updateShowMeUi(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 494
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/UiAdapter;->showIncomingHideMeImage(Z)V

    .line 497
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/UiAdapter;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 498
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->updateIncomingHideButton()V

    .line 501
    :cond_1
    return-void
.end method

.method public updateSwitchButtonLayout()V
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 534
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->updateSwitchButtonLayout()V

    .line 537
    :cond_0
    return-void
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 1
    .param p1, "isShowingBanner"    # Z

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 541
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 542
    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonUi;->updateSwitchButtonLayout(Z)V

    .line 544
    :cond_0
    return-void
.end method

.method public updateVideoRecordButton()V
    .locals 1

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 527
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 528
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->updateVideoRecordButton()V

    .line 530
    :cond_0
    return-void
.end method
