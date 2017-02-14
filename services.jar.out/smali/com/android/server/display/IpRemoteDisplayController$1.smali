.class Lcom/android/server/display/IpRemoteDisplayController$1;
.super Landroid/content/BroadcastReceiver;
.source "IpRemoteDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/IpRemoteDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intent received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/IpRemoteDisplayController;->-set3(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->-get5(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->-get13(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "IpRemoteDisplayController"

    const-string/jumbo v2, "HDMI Connected! we disconnect WFD!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap4(Lcom/android/server/display/IpRemoteDisplayController;)V

    :cond_0
    const-string/jumbo v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received ACTION_HDMI_PLUGGED : mHDMIConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController$1;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v3}, Lcom/android/server/display/IpRemoteDisplayController;->-get5(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
