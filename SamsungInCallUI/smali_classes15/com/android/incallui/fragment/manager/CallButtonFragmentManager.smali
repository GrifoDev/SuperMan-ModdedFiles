.class public Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;
.super Lcom/android/incallui/fragment/manager/BaseFragmentManager;
.source "CallButtonFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/fragment/manager/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/fragment/CallButtonFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationListener;",
        "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;"
    }
.end annotation


# static fields
.field private static final IVR_FORMAT:Ljava/lang/String; = "xml"

.field protected static final LOG_TAG:Ljava/lang/String; = "CallButtonFragmentManager"

.field private static final SHOW_AM_VIEW:I = 0x96

.field private static final SHOW_AM_VIEW_DELAY:I = 0x1f4


# instance fields
.field mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

.field private mHandler:Landroid/os/Handler;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mIsBGCall:Z

.field private mIsBGCallChanged:Z

.field private mIsCallPlus:Z

.field public mIsHasIVR:Z

.field private mIsInit:Z

.field public mIsOutGoingCall:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsInit:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsCallPlus:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCall:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$1;-><init>(Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mHandler:Landroid/os/Handler;

    const-string v0, "CallButtonFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-boolean v0, v0, Lcom/android/incallui/InCallActivity;->mHasOutgoingCall:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-boolean v0, v0, Lcom/android/incallui/InCallActivity;->mHasIVR:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerToFirst(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_2
    return-void
.end method

.method private getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string v3, "CallButtonFragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultFragment mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$2;->$SwitchMap$com$android$incallui$fragment$manager$CallButtonFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v2

    :pswitch_0
    const-string v3, "CallButtonFragmentManager"

    const-string v4, "new VoiceCallButtonFragment() "

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    invoke-direct {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    const-string v3, "CallButtonFragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultFragment isVideoCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v1, :cond_0

    const-string v3, "CallButtonFragmentManager"

    const-string v4, "new VoiceCallButtonCallPlusFragment() "

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    const-string v3, "CallButtonFragmentManager"

    const-string v4, "new VoiceCallButtonVCCFragment() "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    invoke-direct {v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;

    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isGloblaUX()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;

    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;

    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;-><init>()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;

    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;-><init>()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;

    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;-><init>()V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isChnUX()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonVGAChnFragment;

    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAChnFragment;-><init>()V

    goto/16 :goto_0

    :cond_5
    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;

    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_5
    iget v3, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mOrientationType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    :cond_6
    new-instance v2, Lcom/android/incallui/fragment/EndCallButtonFragment;

    invoke-direct {v2}, Lcom/android/incallui/fragment/EndCallButtonFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_6
    new-instance v2, Lcom/android/incallui/fragment/CallButtonEmptyFragment;

    invoke-direct {v2}, Lcom/android/incallui/fragment/CallButtonEmptyFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private postCheckAndSet(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 4

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChange : isAutoAnswered - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/CallButtonFragment;->setCallButtonContainerVisibility(Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;
    .locals 12

    const/16 v11, 0xa

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getInCallState "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "visual_call_center_callerid_info"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "smart_ivr_callerid_info"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasOutgoingCall()Z

    move-result v9

    if-eqz v9, :cond_5

    iput-boolean v8, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    iput-object v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v9

    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v9, v10, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v9

    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v9, v10, :cond_6

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_6
    iput-boolean v5, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getCallToDisplay()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyPortraitUI(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mOrientationType:I

    iget-object v10, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v10}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-eq v9, v10, :cond_8

    const/4 p1, 0x1

    :cond_8
    if-eqz v0, :cond_b

    iget-boolean v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    if-eqz v9, :cond_b

    const-string v9, "visual_call_center_callerid_info"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "smart_ivr_callerid_info"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_9
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v9

    if-eqz v9, :cond_11

    iput-boolean v8, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCall:Z

    iput-boolean v5, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    const-string v9, "have BackgroundCall() "

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    const-string v9, "smart_ivr_callerid_info"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/VisualCallCenter;->VCC_createSrinIVRApi(Ljava/lang/String;)V

    :cond_a
    :goto_3
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v9

    const-string v10, "xml"

    invoke-static {v9, v10}, Lcom/android/incallui/util/VisualCallCenter;->VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    :cond_b
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/incallui/CallList;->isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_c

    if-nez v1, :cond_c

    move v5, v8

    :cond_c
    if-eqz v5, :cond_15

    sget-object v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVolteGroupCall(Lcom/android/incallui/Call;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->isNumberExists(Lcom/android/incallui/Call;)Z

    move-result v9

    if-nez v9, :cond_e

    :cond_d
    sget-object v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    :cond_e
    :goto_4
    const-string v9, "support_tphone"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v9

    if-nez v9, :cond_f

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    if-ne v9, v11, :cond_10

    :cond_f
    sget-object v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    :cond_10
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v9

    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v9, v10, :cond_1e

    sget-object v9, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    if-eq v4, v9, :cond_1e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    iput-object v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto/16 :goto_0

    :cond_11
    iget-boolean v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCall:Z

    if-ne v9, v8, :cond_12

    iput-boolean v8, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    :goto_5
    iput-boolean v5, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCall:Z

    const-string v9, "no BackgroundCall() "

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    iput-boolean v5, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    goto :goto_5

    :cond_13
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v9

    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v9, v10, :cond_14

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v9

    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v9, v10, :cond_14

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v9

    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v9, v10, :cond_14

    iget-boolean v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    if-eqz v9, :cond_a

    :cond_14
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/VisualCallCenter;->VCC_createYuloreIVRApi(Ljava/lang/String;)V

    const-string v9, "onCreate VCC api:"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_15
    sget-object v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v6

    if-ne v6, v8, :cond_16

    sget-object v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    :cond_16
    iget-object v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v4, v9, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    if-ne v9, v11, :cond_1a

    if-nez v1, :cond_19

    sget-object v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v9

    if-nez v9, :cond_18

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVolteGroupCall(Lcom/android/incallui/Call;)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v9

    if-nez v9, :cond_18

    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->isNumberExists(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSetupWizardComplete()Z

    move-result v9

    if-nez v9, :cond_e

    :cond_18
    sget-object v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    goto/16 :goto_4

    :cond_19
    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    goto/16 :goto_0

    :cond_1a
    const-string v9, "visual_call_center_callerid_info"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1b

    const-string v9, "smart_ivr_callerid_info"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    :cond_1b
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "visual_call_status"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_1c

    iget-boolean v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    if-eqz v9, :cond_1c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v9

    if-nez v9, :cond_1c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v9

    if-nez v9, :cond_1c

    iget-boolean v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    if-eqz v9, :cond_1c

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v9

    if-nez v9, :cond_1c

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v9

    if-nez v9, :cond_1c

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v9

    if-nez v9, :cond_1c

    sget-object v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VCC_VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v9, "CallButtonFragmentManager"

    const-string v10, "requestedMode = VCC_VOICE "

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1c
    sget-object v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v9, "ims_crane"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v4, v9, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    goto/16 :goto_4

    :cond_1d
    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    goto/16 :goto_0

    :cond_1e
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-eqz v7, :cond_1f

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v3}, Lcom/android/incallui/secrcs/RcsShareUI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sput-object v7, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->checkRemoteCapability(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableVoiceCallButtons isCraneRemote : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v9, Lcom/android/incallui/secrcs/RcsShareUI;->isCraneRemote:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableVoiceCallButtons isCrane : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v9, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v7, :cond_1f

    iput-boolean v8, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsCallPlus:Z

    :cond_1f
    iget-boolean v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsCallPlus:Z

    if-eqz v7, :cond_20

    sget-object v7, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    if-eq v4, v7, :cond_20

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/secrcs/RcsShareUI;->isVoiceMail()Z

    move-result v7

    if-nez v7, :cond_20

    sget-object v4, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->CALLPLUS_VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v7, "CallButtonFragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestedMode: CALLPLUS_VOICE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    if-nez p1, :cond_21

    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v7, v4, :cond_22

    :cond_21
    const-string v7, "CallButtonFragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestedMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mOrientationType:I

    invoke-virtual {p0, v4, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v4, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_22
    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    goto/16 :goto_0
.end method

.method protected forceUpdateFragment()Z
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v2, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    if-ne v1, v2, :cond_0

    const-string v1, "CallButtonFragmentManager - force update fragment"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallToDisplay()Lcom/android/incallui/Call;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v4, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/fragment/CallButtonFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    return-object v0
.end method

.method public isHasIVR(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const-string v0, "xml"

    invoke-static {p1, v0}, Lcom/android/incallui/util/VisualCallCenter;->VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    return v0
.end method

.method protected makeTestList()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-static {}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->forceUpdateFragment()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->onDestroy()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 1

    const-string v0, "CallButtonFragmentManager - onSMultiWindowOnChanged"

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->postCheckAndSet(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V

    return-void
.end method

.method public setCallPlusValue(Z)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallPlusValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsCallPlus:Z

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->setCurrentFragment(Lcom/android/incallui/fragment/CallButtonFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/fragment/CallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f100293

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$2;->$SwitchMap$com$android$incallui$fragment$manager$CallButtonFragmentManager$FragmentMode:[I

    move-object v2, p1

    check-cast v2, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const-string v2, "visual_call_center_callerid_info"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CallButtonFragmentManager"

    const-string v3, "clear Dailpad when end call "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/incallui/util/VisualCallCenter;->VCC_setDisplayDailpad(Z)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
