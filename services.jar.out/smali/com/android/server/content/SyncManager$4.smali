.class Lcom/android/server/content/SyncManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get3(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->-wrap6(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->-set1(Lcom/android/server/content/SyncManager;Z)Z

    iget-object v1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get3(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const-string/jumbo v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "Reconnection detected: clearing all backoffs"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-wrap9(Lcom/android/server/content/SyncManager;)V

    :cond_1
    return-void
.end method
