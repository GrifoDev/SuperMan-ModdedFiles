.class public Lcom/android/incallui/fragment/manager/AgifFragmentManager;
.super Lcom/android/incallui/fragment/manager/BaseFragmentManager;

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/manager/AgifFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/fragment/manager/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/agif/AgifFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "AgifFragmentManager"


# instance fields
.field mCurrentFragment:Lcom/android/incallui/agif/AgifFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-string v0, "AgifFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->checkAndSet(Z)Lcom/android/incallui/agif/AgifFragment;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->checkAndSet(Z)Lcom/android/incallui/agif/AgifFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/agif/AgifFragment;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "agif_calling_service"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->removeCurrentFragment()V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/incallui/fragment/manager/AgifFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/AgifFragmentManager$FragmentMode;

    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v1, v0, :cond_5

    :cond_4
    const-string v1, "AgifFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestedMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->mCurrentFragment:Lcom/android/incallui/agif/AgifFragment;

    goto :goto_0
.end method

.method public bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->getFragment()Lcom/android/incallui/agif/AgifFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/agif/AgifFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->mCurrentFragment:Lcom/android/incallui/agif/AgifFragment;

    return-object v0
.end method

.method protected makeTestList()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-static {}, Lcom/android/incallui/fragment/manager/AgifFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/AgifFragmentManager$FragmentMode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

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

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->checkAndSet(Z)Lcom/android/incallui/agif/AgifFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/agif/AgifFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->setCurrentFragment(Lcom/android/incallui/agif/AgifFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/agif/AgifFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->mCurrentFragment:Lcom/android/incallui/agif/AgifFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 3

    const v1, 0x7f10008e

    sget-object v0, Lcom/android/incallui/fragment/manager/AgifFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$AgifFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/AgifFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/AgifFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/incallui/agif/AgifFragment;

    invoke-direct {v0}, Lcom/android/incallui/agif/AgifFragment;-><init>()V

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/incallui/fragment/manager/AgifFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/android/incallui/agif/AgifFragment;

    invoke-direct {v0}, Lcom/android/incallui/agif/AgifFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
