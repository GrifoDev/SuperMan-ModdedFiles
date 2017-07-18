.class Lcom/android/server/display/WifiDisplayAdapter$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.server.display.wfd.DISCONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.wfd.notification"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-eq v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get2(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-ne v1, v5, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get2(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-ne v1, v6, :cond_5

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "wifi_display_on"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.screensharing.LOGGING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string/jumbo v2, "feature"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "extra"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap11(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string/jumbo v2, "ownerPackageName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap27(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SEM_PRESENTATION_START Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.intent.action.WIFI_DISPLAY_SINK_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set4(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->isWfdConnected()Z

    goto/16 :goto_1
.end method
