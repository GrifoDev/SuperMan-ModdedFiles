.class Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;
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

    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, -0x1

    if-nez p2, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "KnoxStateMonitor"

    const-string/jumbo v6, " onReceive RCP_POLICY_CHANGED intent OR intent.getAction() is null "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v5, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "policyChangedBundle"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "KnoxStateMonitor"

    const-string/jumbo v6, " onReceive RCP_POLICY_CHANGED bundle is null "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "policyChangedBundle"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "KnoxStateMonitor"

    const-string/jumbo v6, " onReceive RCP_POLICY_CHANGED policyChangedBundle == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "KnoxStateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " onReceive RCP_POLICY_CHANGED policyChangedBundle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v5, "personaId"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v5, "syncerList"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string/jumbo v5, "policyName"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eq v1, v8, :cond_7

    if-nez v4, :cond_8

    :cond_7
    const-string/jumbo v5, "KnoxStateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " onReceive RCP_POLICY_CHANGED invalid data in bundle .. returning .... : pId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " syncerList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " policyName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    if-eqz v3, :cond_7

    const-string/jumbo v0, "Notifications"

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get7(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get8(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get2(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    iget-object v5, v5, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1391

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "KnoxStateMonitor"

    const-string/jumbo v6, "Notification RCP policy is updated"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
