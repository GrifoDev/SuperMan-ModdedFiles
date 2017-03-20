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
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 65
    const-string v0, "VideoCallFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->log(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/VideoCallFragment;

    .line 67
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 68
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 69
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    .line 72
    :cond_0
    return-void
.end method

.method private checkAndRemoveFragment(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "removed":Z
    if-nez p1, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 219
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    const-string v1, "VideoCallFragmentManager : removeCurrentFragment"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->removeCurrentFragment()V

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mFragmentType:Ljava/lang/Enum;

    .line 224
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mOrientationType:I

    .line 226
    :cond_1
    return v0
.end method


# virtual methods
.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/fragment/VideoCallFragment;
    .locals 7
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 110
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    .line 111
    .local v1, "hasLiveCall":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 112
    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyPortraitUI(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mOrientationType:I

    iget-object v6, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 113
    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_0

    .line 114
    const/4 p1, 0x1

    .line 117
    :cond_0
    iget-object v5, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    :cond_1
    :goto_0
    return-object v4

    .line 120
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    .line 121
    if-eqz v1, :cond_3

    .line 122
    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;

    goto :goto_0

    .line 124
    :cond_3
    const/4 v0, 0x0

    .line 128
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->checkAndRemoveFragment(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 131
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v4

    if-nez v4, :cond_6

    .line 132
    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;

    if-eqz v4, :cond_5

    .line 133
    const-string v4, "VideoCallFragmentManager : keep VideoCallFragment during VoiceCall"

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    .line 135
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;

    goto :goto_0

    .line 139
    :cond_6
    sget-object v2, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;

    .line 141
    .local v2, "requestedMode":Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v3

    .line 142
    .local v3, "videoResolution":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 143
    sget-object v2, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;

    .line 147
    :cond_7
    if-nez p1, :cond_8

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v4, v2, :cond_9

    .line 148
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

    .line 149
    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mOrientationType:I

    .line 150
    invoke-virtual {p0, v2, p1}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    .line 151
    iput-object v2, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mFragmentType:Ljava/lang/Enum;

    .line 154
    :cond_9
    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;

    goto :goto_0
.end method

.method public bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->getFragment()Lcom/android/incallui/fragment/VideoCallFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/fragment/VideoCallFragment;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;

    return-object v0
.end method

.method protected makeTestList()V
    .locals 5

    .prologue
    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mTestFragmentList:Ljava/util/List;

    .line 209
    invoke-static {}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 210
    .local v0, "mode":Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;
    iget-object v4, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "mode":Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->onDestroy()V

    .line 196
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 197
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 198
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    .line 201
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 81
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 82
    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/VideoCallFragment;

    .line 101
    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/VideoCallFragment;

    .line 105
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/VideoCallFragment;

    .line 91
    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/android/incallui/fragment/VideoCallFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->setCurrentFragment(Lcom/android/incallui/fragment/VideoCallFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/fragment/VideoCallFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VideoCallFragment;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/VideoCallFragment;

    .line 96
    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/Enum;
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 159
    const v0, 0x7f100292

    .line 160
    .local v0, "containerViewId":I
    const/4 v1, 0x0

    .line 161
    .local v1, "setFragment":Landroid/app/Fragment;
    sget-object v2, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$VideoCallFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;

    .end local p1    # "mode":Ljava/lang/Enum;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 187
    :goto_0
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/fragment/manager/VideoCallFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    .line 190
    :cond_0
    return-void

    .line 163
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    :cond_1
    new-instance v1, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/TabletVideoCallQCIFFragment;-><init>()V

    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 166
    :cond_2
    new-instance v1, Lcom/android/incallui/fragment/VideoCallQCIFFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallQCIFFragment;-><init>()V

    .line 168
    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 170
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isGloblaUX()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;-><init>()V

    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 172
    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 173
    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;-><init>()V

    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 174
    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 175
    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallVGAUsaFragment;-><init>()V

    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 176
    :cond_5
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 177
    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallVGAJpnFragment;-><init>()V

    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 178
    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isChnUX()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 179
    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAChnFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallVGAChnFragment;-><init>()V

    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 181
    :cond_7
    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;-><init>()V

    .line 183
    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
