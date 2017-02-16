.class Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x139d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "com.sec.knox.container.action.containerremovalstarted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get3(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-set0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V

    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get6(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-set1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;Ljava/util/List;)Ljava/util/List;

    :cond_1
    return-void
.end method
