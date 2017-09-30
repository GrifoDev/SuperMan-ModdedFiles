.class public Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;
.super Lcom/android/incallui/fragment/manager/BaseFragmentManager;

# interfaces
.implements Lcom/android/incallui/InCallPresenter$ConfigurationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


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
        "Lcom/android/incallui/InCallPresenter$ConfigurationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "ConferenceManagerFragmentManager"


# instance fields
.field mCurrentFragment:Lcom/android/incallui/fragment/ConferenceManagerFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-string v0, "ConferenceManagerFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/fragment/ConferenceManagerFragment;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    sget-object v0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->NONE:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->DEFAULT_VIDEO:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    :cond_2
    :goto_1
    sget-object v2, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->NONE:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->setVisible(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->removeCurrentFragment()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->IMS_CONFERENCE:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    goto :goto_1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConferenceManagerFragment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->log(Ljava/lang/String;)V

    if-nez p1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v1, v0, :cond_9

    :cond_8
    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/ConferenceManagerFragment;

    goto/16 :goto_0
.end method

.method public bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/ConferenceManagerFragment;

    return-object v0
.end method

.method protected makeTestList()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-static {}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/ConferenceManagerFragment;

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

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 2

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/fragment/ConferenceManagerFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/ConferenceManagerFragment;->setVisible(Z)V

    goto :goto_0
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/ConferenceManagerFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/fragment/ConferenceManagerFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->setCurrentFragment(Lcom/android/incallui/fragment/ConferenceManagerFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/fragment/ConferenceManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/ConferenceManagerFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v1, 0x7f10031f

    const/4 v0, 0x0

    sget-object v2, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$ConferenceManagerFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/ConferenceManagerVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
