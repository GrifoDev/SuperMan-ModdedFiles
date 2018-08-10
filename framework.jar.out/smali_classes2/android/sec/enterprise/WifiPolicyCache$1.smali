.class Landroid/sec/enterprise/WifiPolicyCache$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/enterprise/WifiPolicyCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/enterprise/WifiPolicyCache;


# direct methods
.method constructor <init>(Landroid/sec/enterprise/WifiPolicyCache;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/enterprise/WifiPolicyCache$1;->this$0:Landroid/sec/enterprise/WifiPolicyCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.WIFI_POLICY_STATE_CHANGED_INTERNAL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.WIFI_TYPE_CHANGED_INTERNAL"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Landroid/sec/enterprise/WifiPolicyCache$1;->this$0:Landroid/sec/enterprise/WifiPolicyCache;

    invoke-static {v4, v2, v3}, Landroid/sec/enterprise/WifiPolicyCache;->-wrap0(Landroid/sec/enterprise/WifiPolicyCache;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/sec/enterprise/WifiPolicyCache$1;->this$0:Landroid/sec/enterprise/WifiPolicyCache;

    const/4 v5, -0x1

    invoke-static {v4, v6, v5}, Landroid/sec/enterprise/WifiPolicyCache;->-wrap0(Landroid/sec/enterprise/WifiPolicyCache;Ljava/lang/String;I)V

    goto :goto_0
.end method
