.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap6(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap2(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V

    goto :goto_0
.end method
