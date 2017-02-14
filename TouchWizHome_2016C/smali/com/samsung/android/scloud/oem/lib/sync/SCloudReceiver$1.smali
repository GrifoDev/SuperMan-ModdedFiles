.class Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$1;
.super Ljava/lang/Object;
.source "SCloudReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver;

.field final synthetic val$accounts:[Landroid/accounts/Account;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver;Landroid/content/Context;[Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$1;->this$0:Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver;

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$1;->val$accounts:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const-string v2, "SCloudReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account signed in - clear scloud meta : start -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$1;->val$ctx:Landroid/content/Context;

    const-string v3, "sync_meta"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$1;->val$ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getClientMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$1;->val$ctx:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$1;->val$accounts:[Landroid/accounts/Account;

    aget-object v5, v5, v6

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;->accountSignedIn(Landroid/content/Context;Landroid/accounts/Account;)V

    goto :goto_0

    :cond_0
    const-string v2, "SCloudReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account signed in - clear scloud meta : finished - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
