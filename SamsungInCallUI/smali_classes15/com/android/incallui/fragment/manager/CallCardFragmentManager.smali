.class public Lcom/android/incallui/fragment/manager/CallCardFragmentManager;
.super Lcom/android/incallui/fragment/manager/BaseFragmentManager;
.source "CallCardFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;
.implements Lcom/android/incallui/InCallPresenter$OnehandModeListener;
.implements Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/fragment/manager/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/fragment/CallCardFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationListener;",
        "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;",
        "Lcom/android/incallui/InCallPresenter$OnehandModeListener;",
        "Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;"
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "CallCardFragmentManager"


# instance fields
.field mCurrentFragment:Lcom/android/incallui/fragment/CallCardFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-string v0, "CallCardFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallCardFragment;

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

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_0
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    return-object v0
.end method

.method public checkAndSet(Z)Lcom/android/incallui/fragment/CallCardFragment;
    .locals 11

    const/16 v10, 0xa

    const/4 v3, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v8}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v8}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move v4, v7

    :goto_1
    if-nez v1, :cond_4

    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallCardFragment;

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getCallToDisplay()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    if-eq v8, v10, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_6

    :cond_5
    move v3, v7

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    if-nez v4, :cond_7

    const-string v8, "CallCardFragmentManager"

    const-string v9, "return currentfragment"

    invoke-static {v8, v9, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallCardFragment;

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_d

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v6

    if-ne v6, v7, :cond_b

    sget-object v5, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    if-eqz v3, :cond_8

    sget-object v5, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    :cond_8
    :goto_2
    const-string v7, "support_tphone"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_9

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v10, :cond_a

    :cond_9
    sget-object v5, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    :cond_a
    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v8, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;->MULTIPARTY:Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    if-ne v7, v8, :cond_f

    sget-object v7, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    if-ne v5, v7, :cond_f

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->emptyNotUpdatingCall()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_f

    const-string v7, "CallCardFragmentManager... do not change"

    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallCardFragment;

    goto/16 :goto_0

    :cond_b
    sget-object v5, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    if-eqz v3, :cond_c

    sget-object v5, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;->VGA_END:Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    :cond_c
    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v5, v7, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->removeCurrentFragment()V

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v7

    if-eqz v7, :cond_e

    sget-object v5, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;->MULTIPARTY:Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    goto :goto_2

    :cond_e
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToShowRichScreen(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v5, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;->RICH_SCREEN:Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    goto :goto_2

    :cond_f
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v7

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v8, :cond_10

    iget-object v5, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mFragmentType:Ljava/lang/Enum;

    check-cast v5, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    :cond_10
    if-nez p1, :cond_11

    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v7, v5, :cond_12

    :cond_11
    invoke-virtual {p0, v5, p1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v5, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_12
    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallCardFragment;

    goto/16 :goto_0
.end method

.method protected forceUpdateFragment()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v1

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CallCardFragmentManager - force update fragment"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    move v2, v3

    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallCardFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/fragment/CallCardFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-object v0
.end method

.method protected makeTestList()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-static {}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->forceUpdateFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallCardFragment;

    :cond_0
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
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V

    :cond_1
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method public onOnehandAnyScreenOnChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method public onOnehandModeChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->setCurrentFragment(Lcom/android/incallui/fragment/CallCardFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001d5

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$CallCardFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/fragment/manager/CallCardFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VoiceCallCardFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallCardQCIFFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/fragment/VideoCallCardEndFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallCardEndFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;

    invoke-direct {v1}, Lcom/android/incallui/richscreen/RichScreenCallCardFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/android/incallui/fragment/CallCardEmptyFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/CallCardEmptyFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
