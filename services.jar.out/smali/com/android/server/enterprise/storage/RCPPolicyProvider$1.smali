.class Lcom/android/server/enterprise/storage/RCPPolicyProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "RCPPolicyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/storage/RCPPolicyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/storage/RCPPolicyProvider;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/storage/RCPPolicyProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/storage/RCPPolicyProvider$1;->this$0:Lcom/android/server/enterprise/storage/RCPPolicyProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 v8, 0xc8

    const/16 v7, 0x64

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "com.sec.knox.SETUP_COMPLETE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "RCPPolicyProvider"

    const-string/jumbo v5, "onReceive() KNOX SETUP COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "userid"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lt v2, v7, :cond_1

    if-gt v2, v8, :cond_1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/storage/RCPPolicyProvider$1;->this$0:Lcom/android/server/enterprise/storage/RCPPolicyProvider;

    invoke-static {v3}, Lcom/android/server/enterprise/storage/RCPPolicyProvider;->-get1(Lcom/android/server/enterprise/storage/RCPPolicyProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/storage/RCPPolicyProvider;->-get0()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "RCPPolicyProvider"

    const-string/jumbo v5, "onReceive() USER REMOVED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lt v2, v7, :cond_3

    if-gt v2, v8, :cond_3

    :goto_2
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/storage/RCPPolicyProvider$1;->this$0:Lcom/android/server/enterprise/storage/RCPPolicyProvider;

    invoke-static {v3}, Lcom/android/server/enterprise/storage/RCPPolicyProvider;->-get1(Lcom/android/server/enterprise/storage/RCPPolicyProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/storage/RCPPolicyProvider;->-get0()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2
.end method
