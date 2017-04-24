.class public Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;
.super Lcom/android/incallui/fragment/manager/BaseFragmentManager;
.source "VideoCallFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/fragment/manager/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/fragment/VideoCallFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SECVT-VideoCallFragmentManager"


# instance fields
.field mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-string v0, "VideoCallFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/VideoCallFragment;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_0
    return-void
.end method

.method private checkAndRemoveFragment(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "VideoCallFragmentManager : removeCurrentFragment"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->removeCurrentFragment()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mFragmentType:Ljava/lang/Enum;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mOrientationType:I

    :cond_1
    return v0
.end method


# virtual methods
.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/fragment/VideoCallFragment;
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyPortraitUI(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mOrientationType:I

    iget-object v6, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->checkAndRemoveFragment(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;

    if-eqz v4, :cond_5

    const-string v4, "VideoCallFragmentManager : keep VideoCallFragment during VoiceCall"

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    sget-object v2, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;

    :cond_7
    if-nez p1, :cond_8

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v4, v2, :cond_9

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VideoCallFragmentManager - setFragment : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig$UXType;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mOrientationType:I

    invoke-virtual {p0, v2, p1}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v2, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_9
    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;

    goto :goto_0
.end method

.method public bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/fragment/VideoCallFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;

    return-object v0
.end method

.method protected makeTestList()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-static {}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->onDestroy()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

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

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/VideoCallFragment;

    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/VideoCallFragment;

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/VideoCallFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/fragment/VideoCallFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->setCurrentFragment(Lcom/android/incallui/fragment/VideoCallFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/fragment/VideoCallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f100292

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$VideoCallFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v1, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/incallui/fragment/VideoCallQCIFFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isGloblaUX()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;-><init>()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;-><init>()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;-><init>()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;-><init>()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isChnUX()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAChnFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallVGAChnFragment;-><init>()V

    goto :goto_0

    :cond_7
    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
