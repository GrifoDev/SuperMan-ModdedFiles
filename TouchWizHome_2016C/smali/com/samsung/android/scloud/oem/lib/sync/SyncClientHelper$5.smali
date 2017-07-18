.class final Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$5;
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
    .locals 14

    const-string v1, "data_version"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "SCloudClientHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UPLOAD : "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", v : "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "local_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "upload_file_list"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;->getLocalChange(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const/4 v10, 0x0

    if-eqz v7, :cond_1

    :try_start_0
    const-string v1, "content_sync_file"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    new-instance v11, Ljava/io/FileWriter;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v11, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v1, "SCloudClientHelper"

    const-string v2, "write content Str : content.sync"

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v11

    :goto_0
    :try_start_2
    const-string v1, "is_success"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "upload_file_list"

    invoke-virtual {v12, v1, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_0

    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_1
    return-object v12

    :cond_1
    :try_start_4
    const-string v1, "SCloudClientHelper"

    const-string v2, "content is null : content.sync"

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :goto_2
    :try_start_5
    const-string v1, "SCloudClientHelper"

    const-string v2, "getLocalChange err "

    invoke-static {v1, v2, v8}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "is_success"

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_0

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v10, :cond_2

    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_2
    :goto_4
    throw v1

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v10, v11

    goto :goto_3

    :catch_4
    move-exception v8

    move-object v10, v11

    goto :goto_2
.end method
