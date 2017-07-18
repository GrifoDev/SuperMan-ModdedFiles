.class final Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$6;
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
    .locals 23

    const-string v6, "data_version"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v6, "SCloudClientHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DOWNLOAD : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", v : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "local_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "sync_key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "download_file_list"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "download_file_list"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    move-object v11, v6

    :goto_0
    const-string v6, "deleted_file_list"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v6, "content_sync_file"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/os/ParcelFileDescriptor;

    const-string v6, "timestamp"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    new-instance v3, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/scloud/oem/lib/sync/SyncItem;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v13, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v20, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v17

    move-object v2, v13

    :goto_2
    :try_start_2
    const-string v6, "SCloudClientHelper"

    const-string v7, "no content file for content.sync"

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_3
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;)Ljava/util/Map;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, p1

    move v8, v15

    move-object v9, v3

    invoke-interface/range {v6 .. v12}, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;->updateLocal(Landroid/content/Context;ILcom/samsung/android/scloud/oem/lib/sync/SyncItem;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "local_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    return-object v18

    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_2
    :try_start_5
    const-string v6, "SCloudClientHelper"

    const-string v7, "read content file complete : content.sync"

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v13, :cond_5

    :try_start_6
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v2, v13

    goto :goto_3

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v13

    goto :goto_3

    :catch_2
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v16

    :goto_5
    :try_start_7
    const-string v6, "SCloudClientHelper"

    const-string v7, "read content file err. FILE : content.sync"

    move-object/from16 v0, v16

    invoke-static {v6, v7, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v2, :cond_3

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_3
    :goto_7
    throw v6

    :catch_5
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_6
    move-exception v16

    const-string v6, "FAIL_CORRUPTED_FILE"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "need_recover"

    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_4
    throw v16

    :catchall_1
    move-exception v6

    move-object v2, v13

    goto :goto_6

    :catch_7
    move-exception v16

    move-object v2, v13

    goto :goto_5

    :catch_8
    move-exception v17

    goto/16 :goto_2

    :cond_5
    move-object v2, v13

    goto/16 :goto_3
.end method
