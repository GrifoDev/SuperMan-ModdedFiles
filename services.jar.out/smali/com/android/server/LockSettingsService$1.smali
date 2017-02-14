.class Lcom/android/server/LockSettingsService$1;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v5, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/LockSettingsService;->-get8(Lcom/android/server/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    const-wide/16 v6, 0x1

    invoke-static {v5, v6, v7, v4}, Lcom/android/server/LockSettingsService;->-wrap6(Lcom/android/server/LockSettingsService;JI)V

    return-void

    :cond_0
    if-lez v4, :cond_1

    iget-object v5, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Lcom/android/server/LockSettingsService;->-wrap5(Lcom/android/server/LockSettingsService;IZ)V

    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/LockSettingsService;->-get8(Lcom/android/server/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    :goto_0
    invoke-virtual {v0, v4, v1}, Landroid/security/KeyStore;->onUserAdded(II)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "android.intent.action.USER_STARTING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/LockSettingsService;->-get6(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    iget-object v5, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v5, v4, v7}, Lcom/android/server/LockSettingsService;->-wrap5(Lcom/android/server/LockSettingsService;IZ)V

    goto :goto_1
.end method
