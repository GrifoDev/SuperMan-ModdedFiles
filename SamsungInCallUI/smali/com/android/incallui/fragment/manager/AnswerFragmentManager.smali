.class public Lcom/android/incallui/fragment/manager/AnswerFragmentManager;
.super Lcom/android/incallui/fragment/manager/BaseFragmentManager;

# interfaces
.implements Lcom/android/incallui/InCallPresenter$ConfigurationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/fragment/manager/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/fragment/AnswerFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "AnswerFragmentManager"


# instance fields
.field mCurrentFragment:Lcom/android/incallui/fragment/AnswerFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-string v0, "AnswerFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/AnswerFragment;

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

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/fragment/AnswerFragment;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, v3, :cond_4

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "AnswerFragmentManager - fragment is gone"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->removeCurrentFragment()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isFromPopupForAnswer()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    move-object v0, v1

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;->THREE_WIDGET:Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    :cond_6
    if-nez p1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v1, v0, :cond_8

    :cond_7
    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/AnswerFragment;

    goto :goto_0
.end method

.method public bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->getFragment()Lcom/android/incallui/fragment/AnswerFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/fragment/AnswerFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/AnswerFragment;

    return-object v0
.end method

.method protected makeTestList()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-static {}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 0

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

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 1

    const-string v0, "AnswerFragmentManager - onSMultiWindowOnChanged"

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/AnswerFragment;

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/AnswerFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->setCurrentFragment(Lcom/android/incallui/fragment/AnswerFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/fragment/AnswerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/AnswerFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 3

    const v1, 0x7f100321

    sget-object v0, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$AnswerFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/incallui/fragment/AnswerImageFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/AnswerImageFragment;-><init>()V

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/incallui/fragment/manager/AnswerFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;

    invoke-direct {v0}, Lcom/android/incallui/fragment/AnswerThreeWidgetFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
