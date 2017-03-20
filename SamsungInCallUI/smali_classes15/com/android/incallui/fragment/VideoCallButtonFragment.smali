.class public Lcom/android/incallui/fragment/VideoCallButtonFragment;
.super Lcom/android/incallui/fragment/CallButtonFragment;
.source "VideoCallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/VideoCallButtonFragment$SwitchCameraTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallButtonFragment"


# instance fields
.field protected final HIDE_INCALL_BUTTONS:I

.field protected final HIDE_INCALL_BUTTONS_DELAY:I

.field protected mDialpadButton:Landroid/widget/Button;

.field protected mEndCallButtonArea:Landroid/view/View;

.field protected mHideShowButton:Landroid/widget/ToggleButton;

.field protected mInCallButtonVisible:Z

.field protected mInCallButtons:Landroid/view/View;

.field protected mLeftArrowButton:Landroid/view/View;

.field protected mModifyLeftArrowButton:Landroid/view/View;

.field protected mModifyRightArrowButton:Landroid/view/View;

.field private mPrevAudioMode:I

.field protected mRightArrowButton:Landroid/view/View;

.field protected mSpeakerButton:Landroid/widget/ToggleButton;

.field protected mStopRecordingButton:Landroid/widget/Button;

.field protected mSwitchCameraButton:Landroid/widget/Button;

.field protected mVideoCallButtonHandler:Landroid/os/Handler;

.field protected mVideoState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mPrevAudioMode:I

    .line 77
    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoState:I

    .line 92
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->HIDE_INCALL_BUTTONS:I

    .line 94
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->HIDE_INCALL_BUTTONS_DELAY:I

    .line 96
    new-instance v0, Lcom/android/incallui/fragment/VideoCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment$1;-><init>(Lcom/android/incallui/fragment/VideoCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    return-void
.end method

.method private showRecordingInfo(ZZ)V
    .locals 1
    .param p1, "near"    # Z
    .param p2, "show"    # Z

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->showRecordingInfo(ZZ)V

    .line 460
    return-void
.end method

.method private stopRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 448
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 449
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->stopRecord()V

    .line 451
    invoke-direct {p0, v3, v3}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->showRecordingInfo(ZZ)V

    .line 452
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateVideoRecordButton()V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    const-string v1, "VideoCallButtonFragment"

    const-string v2, "stopRecording : There are no recording Views"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private toggleHideShow()V
    .locals 2

    .prologue
    .line 469
    const-string v0, "VideoCallButtonFragment"

    const-string v1, "toggleHideShow  "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const-string v0, "VideoCallButtonFragment"

    const-string v1, "camera is not allowed, return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const v0, 0x7f0900c6

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    .line 474
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateOutgoingHideShowButton()V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->toogglePreview()V

    .line 478
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateOutgoingHideShowButton()V

    goto :goto_0
.end method

.method private updateAudioButtons(I)V
    .locals 3
    .param p1, "supportedModes"    # I

    .prologue
    .line 326
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->isSupported(I)Z

    move-result v0

    .line 327
    .local v0, "bluetoothSupported":Z
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->isSupported(I)Z

    move-result v1

    .line 328
    .local v1, "speakerSupported":Z
    return-void
.end method


# virtual methods
.method protected enableSwitchCamera(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 432
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 433
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v1, v3

    .line 436
    .local v1, "isHold":Z
    :goto_1
    if-eqz p1, :cond_5

    .line 437
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v4

    if-nez v4, :cond_4

    .line 438
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "isHold":Z
    :cond_3
    move v1, v2

    .line 434
    goto :goto_1

    .line 440
    .restart local v1    # "isHold":Z
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 443
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected getSecUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    .prologue
    .line 499
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method public hideVideoTogglingViews()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 391
    const/4 v2, 0x1

    .line 393
    .local v2, "ret":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 395
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-nez v0, :cond_0

    .line 396
    const-string v4, "VideoCallButtonFragment"

    const-string v5, "isPossibleToHideButton : Activity is null!"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_0
    return v3

    .line 400
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 401
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_1

    .line 402
    const-string v4, "VideoCallButtonFragment"

    const-string v5, "isPossibleToHideButton : Call is null!"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 407
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v3

    if-eq v3, v6, :cond_3

    .line 408
    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v3

    if-ne v3, v6, :cond_4

    .line 409
    :cond_3
    const/4 v2, 0x0

    :cond_4
    move v3, v2

    .line 412
    goto :goto_0
.end method

.method protected isPrimaryVisible()Z
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isPrimaryVisible()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateAudioButtons(I)V

    .line 140
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v10, 0x64

    const/4 v6, 0x0

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 164
    .local v2, "id":I
    const-string v5, "VideoCallButtonFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick(View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 172
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 173
    .local v1, "callState":I
    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 177
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 226
    :goto_0
    :sswitch_0
    return-void

    .line 179
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->toggleVideoButtonContainer()V

    goto :goto_0

    .line 182
    :sswitch_2
    const-string v5, "Switch Camera Clicked"

    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->switchCameraClicked()V

    .line 184
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->switchCamera(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 187
    :sswitch_3
    const-string v5, "Recording stop Clicked"

    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_recordOff()V

    .line 189
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->stopRecording()V

    goto :goto_0

    .line 192
    :sswitch_4
    const-string v5, "Dialpad Hide Clicked"

    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->isDialpadVisible()Z

    move-result v5

    invoke-static {v1, v5}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_keypad(IZ)V

    .line 194
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v5, v6}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_0

    .line 197
    :sswitch_5
    const-string v5, "Mute Clicked"

    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    .line 199
    .local v3, "isMute":Z
    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCall_mute(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallButtonPresenter;

    if-nez v3, :cond_2

    const/4 v6, 0x1

    :cond_2
    invoke-virtual {v5, v6}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_0

    .line 203
    .end local v3    # "isMute":Z
    :sswitch_6
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->toggleHideShow()V

    goto :goto_0

    .line 206
    :sswitch_7
    const-string v5, "EndCall Clicked"

    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 207
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->end_call(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onEndCallButtonClicked()V

    .line 209
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto :goto_0

    .line 218
    :sswitch_8
    const-string v5, "Speaker Clicked"

    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v4

    .line 220
    .local v4, "mode":I
    invoke-static {v0, v4}, Lcom/android/incallui/util/VideoCallAppLogging;->clickSpeaker(Lcom/android/incallui/Call;I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto/16 :goto_0

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x7f100096 -> :sswitch_5
        0x7f100097 -> :sswitch_4
        0x7f10009b -> :sswitch_2
        0x7f100378 -> :sswitch_1
        0x7f10037a -> :sswitch_6
        0x7f10037b -> :sswitch_3
        0x7f10037d -> :sswitch_7
        0x7f10037e -> :sswitch_8
        0x7f100381 -> :sswitch_0
        0x7f100385 -> :sswitch_0
        0x7f1003d7 -> :sswitch_0
        0x7f1003dc -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/CallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "parent":Landroid/view/View;
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    .line 127
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 152
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onDestroyView()V

    .line 154
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    :cond_0
    return-void
.end method

.method protected onEndCallButtonClicked()V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onResume()V

    .line 148
    return-void
.end method

.method public onVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 304
    if-nez p2, :cond_0

    .line 318
    :goto_0
    return-void

    .line 305
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 312
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    .line 307
    :pswitch_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isPreviewReady()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAudio(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateAudioButtons(I)V

    .line 262
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mPrevAudioMode:I

    if-eq v1, p1, :cond_1

    .line 263
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mPrevAudioMode:I

    if-eqz v1, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "stringId":I
    packed-switch p1, :pswitch_data_0

    .line 276
    .end local v0    # "stringId":I
    :cond_0
    :pswitch_0
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mPrevAudioMode:I

    .line 278
    :cond_1
    return-void

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 7
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 230
    move v2, p1

    .line 231
    .local v2, "muteEnabled":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 232
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 234
    .local v1, "callState":I
    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    .line 235
    :cond_0
    const/4 v2, 0x0

    .line 238
    .end local v1    # "callState":I
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    .line 240
    .local v3, "switchCameraEnabled":Z
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 241
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 244
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 246
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 247
    :cond_7
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_8

    .line 248
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 249
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09025a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 251
    :cond_8
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateMuteButton()V

    .line 283
    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateAudioButtons(I)V

    .line 288
    return-void
.end method

.method protected showButtonContainer(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 380
    return-void
.end method

.method public showCameraEffectLayout(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 482
    return-void
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/UiAdapter;->setPrimaryVisible(Z)V

    .line 384
    return-void
.end method

.method public showSwitchCameraAnimation(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/UiAdapter;->showSwitchCameraAnimation(Z)V

    .line 486
    return-void
.end method

.method public switchCameraClicked()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 489
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->enableSwitchCamera(Z)V

    .line 490
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->showSwitchCameraAnimation(Z)V

    .line 491
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setSwitchCameraClicked(Z)V

    .line 492
    new-instance v0, Lcom/android/incallui/fragment/VideoCallButtonFragment$SwitchCameraTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonFragment$SwitchCameraTask;-><init>(Lcom/android/incallui/fragment/VideoCallButtonFragment;Lcom/android/incallui/fragment/VideoCallButtonFragment$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VideoCallButtonFragment$SwitchCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 493
    return-void
.end method

.method public toggleVideoButtonContainer()V
    .locals 4

    .prologue
    const/16 v1, 0x64

    .line 417
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 421
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mInCallButtonVisible:Z

    if-eqz v0, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->isPossibleToHideButton()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    :goto_0
    return-void

    .line 425
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->showButtonContainer(Z)V

    goto :goto_0

    .line 427
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->showButtonContainer(Z)V

    goto :goto_0
.end method

.method public updateCallButtons()V
    .locals 4

    .prologue
    .line 331
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 332
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 333
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 337
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 338
    .local v0, "isFarEndRecord":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 339
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 340
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 351
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    .line 352
    .local v1, "isLivePreview":Z
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->enableSwitchCamera(Z)V

    .line 353
    return-void

    .end local v0    # "isFarEndRecord":Z
    .end local v1    # "isLivePreview":Z
    :cond_3
    move v0, v2

    .line 337
    goto :goto_0

    .line 342
    .restart local v0    # "isFarEndRecord":Z
    :cond_4
    if-eqz v0, :cond_7

    .line 343
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 345
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 347
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 348
    :cond_8
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 349
    :cond_9
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateMuteButton()V
    .locals 4

    .prologue
    .line 356
    const-string v1, "VideoCallButtonFragment"

    const-string v2, "updateMuteButton()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    .line 358
    .local v0, "isMuted":Z
    const-string v1, "VideoCallButtonFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isMuted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 363
    :cond_0
    return-void
.end method

.method protected updateOutgoingHideShowButton()V
    .locals 4

    .prologue
    .line 366
    const-string v1, "VideoCallButtonFragment"

    const-string v2, "updateOutgoingHideShowButton()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    .line 368
    .local v0, "isShowMe":Z
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 370
    if-eqz v0, :cond_1

    .line 371
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09026e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090273

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateSpeakerButton()V
    .locals 4

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 292
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioMode()I

    move-result v0

    .line 293
    .local v0, "audioMode":I
    const-string v1, "VideoCallButtonFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSpeakerButton - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 300
    .end local v0    # "audioMode":I
    :cond_0
    :goto_0
    return-void

    .line 297
    .restart local v0    # "audioMode":I
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateVideoRecordButton()V
    .locals 2

    .prologue
    .line 464
    const-string v0, "VideoCallButtonFragment"

    const-string v1, "updateRecordButton..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateCallButtons()V

    .line 466
    return-void
.end method
