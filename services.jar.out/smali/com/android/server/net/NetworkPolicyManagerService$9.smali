.class Lcom/android/server/net/NetworkPolicyManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateLocked(IZ)Z

    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap1(Lcom/android/server/net/NetworkPolicyManagerService;I)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
