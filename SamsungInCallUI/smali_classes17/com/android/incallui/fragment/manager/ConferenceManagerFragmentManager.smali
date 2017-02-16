.class public Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;
.super Lcom/android/incallui/fragment/manager/BaseFragmentManager;
.source "ConferenceManagerFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/fragment/manager/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/fragment/ConferenceManagerFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationListener;"
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "ConferenceManagerFragmentManager"


# instance fields
.field mCurrentFragment:Lcom/android/incallui/fragment/ConferenceManagerFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 54
    const-string v0, "ConferenceManagerFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->log(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 56
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 57
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/fragment/ConferenceManagerFragment;
    .locals 6
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 91
    iget-object v3, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-object v2

    .line 95
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v2, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 96
    .local v0, "call":Lcom/android/incallui/Call;
    sget-object v1, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->NONE:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    .line 97
    .local v1, "requestedMode":Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 98
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 99
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    sget-object v1, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->DEFAULT_VIDEO:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    .line 113
    :cond_2
    :goto_1
    sget-object v3, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->NONE:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    if-ne v1, v3, :cond_7

    .line 114
    iget-object v3, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_3

    .line 115
    iget-object v3, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    .line 117
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->setVisible(Z)V

    .line 119
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->removeCurrentFragment()V

    .line 120
    iput-object v2, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    .line 103
    :cond_5
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 104
    sget-object v1, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->IMS_CONFERENCE:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    goto :goto_1

    .line 106
    :cond_6
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    sget-object v1, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    goto :goto_1

    .line 124
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConferenceManagerFragment:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->log(Ljava/lang/String;)V

    .line 126
    if-nez p1, :cond_8

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v2, v1, :cond_9

    .line 127
    :cond_8
    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    .line 128
    iput-object v1, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    .line 131
    :cond_9
    iget-object v2, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/ConferenceManagerFragment;

    goto/16 :goto_0
.end method

.method public bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/ConferenceManagerFragment;

    return-object v0
.end method

.method protected makeTestList()V
    .locals 5

    .prologue
    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mTestFragmentList:Ljava/util/List;

    .line 171
    invoke-static {}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 172
    .local v0, "mode":Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;
    iget-object v4, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "mode":Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/ConferenceManagerFragment;

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->onDestroy()V

    .line 160
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 161
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 162
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    .line 163
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 67
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 68
    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->setVisible(Z)V

    goto :goto_0
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/ConferenceManagerFragment;

    .line 77
    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/android/incallui/fragment/ConferenceManagerFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->setCurrentFragment(Lcom/android/incallui/fragment/ConferenceManagerFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/fragment/ConferenceManagerFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/ConferenceManagerFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/ConferenceManagerFragment;

    .line 82
    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/Enum;
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 136
    const v0, 0x7f100294

    .line 137
    .local v0, "containerViewId":I
    const/4 v1, 0x0

    .line 138
    .local v1, "setFragment":Landroid/app/Fragment;
    sget-object v2, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$ConferenceManagerFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    .end local p1    # "mode":Ljava/lang/Enum;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 151
    :goto_0
    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    .line 154
    :cond_0
    return-void

    .line 140
    :pswitch_0
    new-instance v1, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;-><init>()V

    .line 141
    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 143
    :pswitch_1
    new-instance v1, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;-><init>()V

    .line 144
    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 146
    :pswitch_2
    new-instance v1, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;-><init>()V

    .line 147
    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
