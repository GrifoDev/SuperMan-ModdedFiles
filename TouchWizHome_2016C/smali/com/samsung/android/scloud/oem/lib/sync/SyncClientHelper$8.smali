.class final Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$8;
.super Ljava/lang/Object;
.source "SyncClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v6, "SCloudClientHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "COMPLETE : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "local_id"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "sync_key"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "timestamp"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "rcode"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    invoke-interface {v6, p1, v1, v8}, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;->complete(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;I)Z

    move-result v0

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v6, "is_success"

    invoke-virtual {v9, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v9
.end method
