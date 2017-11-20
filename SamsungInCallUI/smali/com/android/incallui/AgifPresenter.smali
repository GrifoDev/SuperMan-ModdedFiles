.class public Lcom/android/incallui/AgifPresenter;
.super Lcom/android/incallui/Presenter;

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/coreapps/CoreAppsManager$Listener;
.implements Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AgifPresenter$AgifUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/AgifPresenter$AgifUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/coreapps/CoreAppsManager$Listener;",
        "Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AgifPresenter"


# instance fields
.field private mIsNeedToOutgoingAnim:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public getNeedToOutgoingAnim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    return v0
.end method

.method public getUi()Lcom/android/incallui/AgifPresenter$AgifUi;
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AgifPresenter$AgifUi;

    return-object v0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/AgifPresenter;->getUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    return-object v0
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 0

    return-void
.end method

.method public onEnableStateChanged()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AgifPresenter;->getUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "AgifPresenter"

    const-string v2, "onEnableStateChanged()"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowAgifFragment(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->setVisible(Z)V

    if-nez v1, :cond_2

    invoke-interface {v0, v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->showAgifList(Z)V

    :cond_2
    iget-boolean v2, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v1, "AgifPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnableStateChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->startOutgoingCallAnimation()V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AgifPresenter;->getUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->setVisible(Z)V

    invoke-interface {v0, v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->showAgifList(Z)V

    goto :goto_0
.end method

.method public onReceveShareMessage(Landroid/net/Uri;Ljava/io/File;Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onSmartImageQueryComplete()V
    .locals 0

    return-void
.end method

.method public onSmartInfoQueryComplete()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/AgifPresenter;->getUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "SmartCallback onQueryComplete"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "support_spam_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-interface {v0}, Lcom/android/incallui/AgifPresenter$AgifUi;->onSmartInfoChanged()V

    goto :goto_0
.end method

.method public onSmartInfoQueryStart()V
    .locals 0

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AgifPresenter;->getUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    if-nez v0, :cond_8

    if-eq p1, p2, :cond_8

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_8

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getLiveCallCounts()I

    move-result v0

    if-ne v0, v1, :cond_8

    iput-boolean v1, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    :cond_3
    :goto_1
    const-string v0, "AgifPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStateChange oldState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, v6, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-interface {v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowAgifFragment(Landroid/content/Context;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/AgifPresenter$AgifUi;->setVisible(Z)V

    if-nez v4, :cond_4

    invoke-interface {v3, v2}, Lcom/android/incallui/AgifPresenter$AgifUi;->showAgifList(Z)V

    :cond_4
    iget-boolean v5, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    invoke-interface {v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->startOutgoingCallAnimation()V

    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/AgifPresenter$AgifUi;->updateButtonColor(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_6

    invoke-interface {v3, v6}, Lcom/android/incallui/AgifPresenter$AgifUi;->setSentAgifUri(Landroid/net/Uri;)V

    :cond_6
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_9

    move v0, v1

    :goto_2
    invoke-interface {v3}, Lcom/android/incallui/AgifPresenter$AgifUi;->isShowAgifList()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    invoke-interface {v3, v2}, Lcom/android/incallui/AgifPresenter$AgifUi;->showAgifList(Z)V

    :cond_7
    if-nez v0, :cond_a

    :goto_3
    invoke-interface {v3, v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->setEnableSlidingTrayIcon(Z)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_3

    iput-boolean v2, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move v1, v2

    goto :goto_3
.end method

.method public onUiReady(Lcom/android/incallui/AgifPresenter$AgifUi;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->addListener(Lcom/android/incallui/coreapps/CoreAppsManager$Listener;)V

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/smartcall/SmartCallController;->addListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/AgifPresenter$AgifUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AgifPresenter;->onUiReady(Lcom/android/incallui/AgifPresenter$AgifUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/Presenter;->onUiResume()V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/AgifPresenter$AgifUi;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->removeListener(Lcom/android/incallui/coreapps/CoreAppsManager$Listener;)V

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/smartcall/SmartCallController;->removeListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/AgifPresenter$AgifUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AgifPresenter;->onUiUnready(Lcom/android/incallui/AgifPresenter$AgifUi;)V

    return-void
.end method

.method public setNeedToOutgoingAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/AgifPresenter;->mIsNeedToOutgoingAnim:Z

    return-void
.end method
