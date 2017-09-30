.class public Lcom/android/incallui/fragment/VideoCallButtonFragment;
.super Lcom/android/incallui/fragment/CallButtonFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/InCallNotifier$VideoSessionEventListener;


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

.field protected mModifyLeftArrowButton:Landroid/view/View;

.field protected mModifyRightArrowButton:Landroid/view/View;

.field private mPrevAudioMode:I

.field protected mSpeakerButton:Landroid/widget/ToggleButton;

.field protected mStopRecordingButton:Landroid/widget/Button;

.field protected mSwitchCameraButton:Landroid/widget/Button;

.field protected mVideoCallButtonHandler:Landroid/os/Handler;

.field protected mVideoState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/CallButtonFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mPrevAudioMode:I

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoState:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->HIDE_INCALL_BUTTONS:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->HIDE_INCALL_BUTTONS_DELAY:I

    new-instance v0, Lcom/android/incallui/fragment/VideoCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment$1;-><init>(Lcom/android/incallui/fragment/VideoCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    return-void
.end method

.method private showRecordingInfo(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->showRecordingInfo(ZZ)V

    return-void
.end method

.method private stopRecording()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->stopRecord()V

    invoke-direct {p0, v2, v2}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->showRecordingInfo(ZZ)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateVideoRecordButton()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "VideoCallButtonFragment"

    const-string v1, "stopRecording : There are no recording Views"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private toggleHideShow()V
    .locals 2

    const-string v0, "VideoCallButtonFragment"

    const-string v1, "toggleHideShow  "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoCallButtonFragment"

    const-string v1, "camera is not allowed, return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f090102

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateOutgoingHideShowButton()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->toogglePreview()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateOutgoingHideShowButton()V

    goto :goto_0
.end method


# virtual methods
.method protected enableBluetooth(Z)V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->isAudio(I)Z

    move-result v0

    const-string v1, "VideoCallButtonFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetoothEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected enableSwitchCamera(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    :goto_1
    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected getSecUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method public hideVideoTogglingViews()V
    .locals 0

    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "VideoCallButtonFragment"

    const-string v2, "isPossibleToHideButton : Activity is null!"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "VideoCallButtonFragment"

    const-string v2, "isPossibleToHideButton : Call is null!"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v3

    if-eq v3, v0, :cond_3

    :cond_2
    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-ne v2, v0, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method protected isPrimaryVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isPrimaryVisible()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateAudioButtons(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x64

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v0, "VideoCallButtonFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    :goto_0
    sparse-switch v2, :sswitch_data_0

    :goto_1
    :sswitch_0
    return-void

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->toggleVideoButtonContainer()V

    goto :goto_1

    :sswitch_2
    const-string v0, "Switch Camera Clicked"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->switchCameraClicked()V

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->switchCamera(Lcom/android/incallui/Call;)V

    goto :goto_1

    :sswitch_3
    const-string v0, "Recording stop Clicked"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_recordOff()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->stopRecording()V

    goto :goto_1

    :sswitch_4
    const-string v2, "Dialpad Hide Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->isDialpadVisible()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_keypad(IZ)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_1

    :sswitch_5
    const-string v0, "Mute Clicked"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCall_mute(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_1

    :sswitch_6
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->toggleHideShow()V

    goto :goto_1

    :sswitch_7
    const-string v1, "EndCall Clicked"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->end_call(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onEndCallButtonClicked()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto :goto_1

    :sswitch_8
    const-string v0, "Speaker Clicked"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    invoke-static {v3, v0}, Lcom/android/incallui/util/VideoCallAppLogging;->clickSpeaker(Lcom/android/incallui/Call;I)V

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopDockConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->isAudio(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090297

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c1 -> :sswitch_5
        0x7f1000c2 -> :sswitch_4
        0x7f1000c6 -> :sswitch_2
        0x7f100418 -> :sswitch_1
        0x7f10041b -> :sswitch_6
        0x7f10041c -> :sswitch_3
        0x7f10041e -> :sswitch_7
        0x7f10041f -> :sswitch_8
        0x7f100470 -> :sswitch_0
        0x7f100475 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/CallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/CallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallNotifier;->addVideoSessionEventListener(Lcom/android/incallui/InCallNotifier$VideoSessionEventListener;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const/16 v1, 0x64

    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onDestroyView()V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->removeVideoSessionEventListener(Lcom/android/incallui/InCallNotifier$VideoSessionEventListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected onEndCallButtonClicked()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/fragment/CallButtonFragment;->onResume()V

    return-void
.end method

.method public onVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isPreviewReady()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->enableSwitchCamera(Z)V

    goto :goto_0

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
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateAudioButtons(I)V

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mPrevAudioMode:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mPrevAudioMode:I

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mPrevAudioMode:I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_9

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    return-void

    :cond_9
    move v0, p1

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateMuteButton()V

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateAudioButtons(I)V

    return-void
.end method

.method protected showButtonContainer(Z)V
    .locals 0

    return-void
.end method

.method public showCameraEffectLayout(Z)V
    .locals 0

    return-void
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/UiAdapter;->setPrimaryVisible(Z)V

    return-void
.end method

.method public switchCameraClicked()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->enableSwitchCamera(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setSwitchCameraClicked(Z)V

    :try_start_0
    new-instance v0, Lcom/android/incallui/fragment/VideoCallButtonFragment$SwitchCameraTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonFragment$SwitchCameraTask;-><init>(Lcom/android/incallui/fragment/VideoCallButtonFragment;Lcom/android/incallui/fragment/VideoCallButtonFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VideoCallButtonFragment$SwitchCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VideoCallButtonFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchCameraClicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toggleVideoButtonContainer()V
    .locals 4

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mInCallButtonVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->isPossibleToHideButton()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->showButtonContainer(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->showButtonContainer(Z)V

    goto :goto_0
.end method

.method protected updateAudioButtons(I)V
    .locals 0

    return-void
.end method

.method public updateBluetoothButton(Z)V
    .locals 0

    return-void
.end method

.method public updateCallButtons()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->enableSwitchCamera(Z)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateMuteButton()V
    .locals 4

    const-string v0, "VideoCallButtonFragment"

    const-string v1, "updateMuteButton()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

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

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected updateOutgoingHideShowButton()V
    .locals 3

    const-string v0, "VideoCallButtonFragment"

    const-string v1, "updateOutgoingHideShowButton()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateSpeakerButton()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioMode()I

    move-result v0

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

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateVideoRecordButton()V
    .locals 2

    const-string v0, "VideoCallButtonFragment"

    const-string v1, "updateRecordButton..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->updateCallButtons()V

    return-void
.end method
