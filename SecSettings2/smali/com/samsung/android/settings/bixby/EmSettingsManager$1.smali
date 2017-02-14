.class Lcom/samsung/android/settings/bixby/EmSettingsManager$1;
.super Ljava/lang/Object;
.source "EmSettingsManager.java"

# interfaces
.implements Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bixby/EmSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/app/executor/data/ParamFilling;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get2(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get2(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;->onParamFillingReceived()V

    :cond_0
    return-void
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get3(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get3(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;->onRuleCanceled()V

    :cond_0
    return-void
.end method

.method public onScreenStatesRequested()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get4(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenStatesRequested() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get4(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;->onScreenStatesRequested()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get5(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenStatesRequested() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get5(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get5(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public onStateReceived(Lcom/samsung/android/app/executor/data/State;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-wrap0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set1(Lcom/samsung/android/settings/bixby/EmSettingsManager;Lcom/samsung/android/app/executor/data/State;)Lcom/samsung/android/app/executor/data/State;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set2(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set0(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get1(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get1(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;->onStateReceived()V

    :cond_0
    return-void
.end method
