.class Lcom/android/server/RCPManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/RCPManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Received com.samsung.android.plugin.ACTION_PLUGIN_CHANGE_NOTI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Connected BT Gear : sending Notification policy broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    const/4 v2, -0x1

    invoke-static {v1, p1, v2}, Lcom/android/server/RCPManagerService;->-wrap5(Lcom/android/server/RCPManagerService;Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
