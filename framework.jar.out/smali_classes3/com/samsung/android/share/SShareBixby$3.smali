.class Lcom/samsung/android/share/SShareBixby$3;
.super Ljava/lang/Object;
.source "SShareBixby.java"

# interfaces
.implements Lcom/samsung/android/share/executor/IExecutorCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/share/SShareBixby;->createExecutorCommandHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/share/SShareBixby;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareBixby;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/share/executor/data/ParamFilling;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "SShareBixby"

    const-string/jumbo v2, "onParamFillingReceived"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-wrap2(Lcom/samsung/android/share/SShareBixby;)V

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "AppName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/executor/data/ScreenParameter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-virtual {v0}, Lcom/samsung/android/share/executor/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/share/SShareBixby;->-set2(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "SShareBixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ParamFilling: mSlotAppName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v3}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v2}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/share/SShareBixby;->-wrap4(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-wrap0(Lcom/samsung/android/share/SShareBixby;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get0(Lcom/samsung/android/share/SShareBixby;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v2}, Lcom/samsung/android/share/SShareBixby;->-get5(Lcom/samsung/android/share/SShareBixby;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v3}, Lcom/samsung/android/share/SShareBixby;->-get4(Lcom/samsung/android/share/SShareBixby;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ResolverActivity;->startBixbySelection(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get0(Lcom/samsung/android/share/SShareBixby;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return v4

    :cond_1
    return v4
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "SShareBixby"

    const-string/jumbo v1, "onRuleCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/share/executor/data/ScreenStateInfo;
    .locals 2

    const-string/jumbo v0, "SShareBixby"

    const-string/jumbo v1, "onScreenStatesRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/share/executor/data/ScreenStateInfo;

    const-string/jumbo v1, "ShareVia"

    invoke-direct {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/share/executor/data/State;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "SShareBixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateReceived:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ShareVia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1, v5}, Lcom/samsung/android/share/SShareBixby;->-set1(Lcom/samsung/android/share/SShareBixby;Z)Z

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get3(Lcom/samsung/android/share/SShareBixby;)Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    move-result-object v1

    const-string/jumbo v2, "success"

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendStateCommandResponse(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/share/executor/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CrossShareVia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-wrap2(Lcom/samsung/android/share/SShareBixby;)V

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/data/State;->getParamMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "AppName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/executor/data/Parameter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-virtual {v0}, Lcom/samsung/android/share/executor/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/share/SShareBixby;->-set2(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "SShareBixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "State: mSlotAppName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v3}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get7(Lcom/samsung/android/share/SShareBixby;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-virtual {v1, v4}, Lcom/samsung/android/share/SShareBixby;->sendNlgRequest(I)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get7(Lcom/samsung/android/share/SShareBixby;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get7(Lcom/samsung/android/share/SShareBixby;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get7(Lcom/samsung/android/share/SShareBixby;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-virtual {v1, v4}, Lcom/samsung/android/share/SShareBixby;->sendNlgRequest(I)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v2}, Lcom/samsung/android/share/SShareBixby;->-get7(Lcom/samsung/android/share/SShareBixby;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v1, v2}, Lcom/samsung/android/share/SShareBixby;->-wrap3(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v2}, Lcom/samsung/android/share/SShareBixby;->-get6(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/share/SShareBixby;->-wrap1(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get0(Lcom/samsung/android/share/SShareBixby;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v2}, Lcom/samsung/android/share/SShareBixby;->-get5(Lcom/samsung/android/share/SShareBixby;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v3}, Lcom/samsung/android/share/SShareBixby;->-get4(Lcom/samsung/android/share/SShareBixby;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ResolverActivity;->startBixbySelection(II)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get0(Lcom/samsung/android/share/SShareBixby;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v2}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/share/SShareBixby;->-wrap4(Lcom/samsung/android/share/SShareBixby;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-wrap0(Lcom/samsung/android/share/SShareBixby;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get0(Lcom/samsung/android/share/SShareBixby;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v2}, Lcom/samsung/android/share/SShareBixby;->-get5(Lcom/samsung/android/share/SShareBixby;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v3}, Lcom/samsung/android/share/SShareBixby;->-get4(Lcom/samsung/android/share/SShareBixby;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ResolverActivity;->startBixbySelection(II)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get0(Lcom/samsung/android/share/SShareBixby;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get2(Lcom/samsung/android/share/SShareBixby;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_8

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SShareBixby;->sendNlgRequest(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get8(Lcom/samsung/android/share/SShareBixby;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-virtual {v1, v5}, Lcom/samsung/android/share/SShareBixby;->sendNlgRequest(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-virtual {v1, v4}, Lcom/samsung/android/share/SShareBixby;->sendNlgRequest(I)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "SShareBixby"

    const-string/jumbo v2, "Invalid State Command"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/share/SShareBixby$3;->this$0:Lcom/samsung/android/share/SShareBixby;

    invoke-static {v1}, Lcom/samsung/android/share/SShareBixby;->-get3(Lcom/samsung/android/share/SShareBixby;)Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    move-result-object v1

    const-string/jumbo v2, "failure"

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendStateCommandResponse(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
