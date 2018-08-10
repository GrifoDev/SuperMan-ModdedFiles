.class Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;
.super Landroid/content/BroadcastReceiver;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, -0x1

    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "KnoxStateMonitor"

    const-string/jumbo v5, " onReceive RCP_POLICY_CHANGED intent OR intent.getAction() is null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v4, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "policyChangedBundle"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KnoxStateMonitor"

    const-string/jumbo v5, " onReceive RCP_POLICY_CHANGED bundle is null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "policyChangedBundle"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "KnoxStateMonitor"

    const-string/jumbo v5, " onReceive RCP_POLICY_CHANGED policyChangedBundle == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "KnoxStateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " onReceive RCP_POLICY_CHANGED policyChangedBundle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v4, "personaId"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "syncerList"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v4, "policyName"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eq v0, v7, :cond_7

    if-nez v3, :cond_8

    :cond_7
    const-string/jumbo v4, "KnoxStateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " onReceive RCP_POLICY_CHANGED invalid data in bundle .. returning .... : pId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " syncerList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " policyName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    if-eqz v2, :cond_7

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get4(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get5(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get2(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    iget-object v4, v4, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x1391

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "KnoxStateMonitor"

    const-string/jumbo v5, "Notification RCP policy is updated"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
