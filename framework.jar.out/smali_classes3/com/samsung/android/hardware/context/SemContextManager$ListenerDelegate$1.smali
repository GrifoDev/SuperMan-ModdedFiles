.class Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v5}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextEvent;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v1, v2, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v5}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-get0(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "SemContextManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "History data is received. : type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v5}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/samsung/android/hardware/context/SemContextListener;->onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    iget-object v5, v5, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v6}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-set0(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Z)Z

    :goto_0
    return-void

    :cond_3
    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v0

    const-string/jumbo v5, "SemContextManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AutoRotationEvent : Angle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v5}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/samsung/android/hardware/context/SemContextListener;->onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    goto :goto_0

    :cond_5
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextEvent;->getPedometerContext()Lcom/samsung/android/hardware/context/SemContextPedometer;

    move-result-object v3

    const-string/jumbo v5, "SemContextManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[2] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getTotalStepCount()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getWalkStepCount()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getRunStepCount()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
