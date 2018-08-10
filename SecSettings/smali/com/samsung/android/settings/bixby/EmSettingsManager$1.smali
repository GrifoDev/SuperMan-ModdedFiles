.class Lcom/samsung/android/settings/bixby/EmSettingsManager$1;
.super Ljava/lang/Object;
.source "EmSettingsManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


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
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set5(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set4(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get3(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get3(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;->onParamFillingReceived()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRuleCanceled() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get6(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] : "

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

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get5(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get5(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;->onRuleCanceled()V

    :cond_0
    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get7(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "EmSettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onScreenStatesRequested() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get7(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    move-result-object v3

    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get11(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/LinkedHashSet;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "EmSettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onScreenStatesRequested() return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get11(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get11(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->addState(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    return-object v4
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-wrap0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearNlgParams()V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set2(Lcom/samsung/android/settings/bixby/EmSettingsManager;Lcom/samsung/android/sdk/bixby/data/State;)Lcom/samsung/android/sdk/bixby/data/State;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set3(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set1(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-set0(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/Map;)Ljava/util/Map;

    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateReceived() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->-get6(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] : "

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
