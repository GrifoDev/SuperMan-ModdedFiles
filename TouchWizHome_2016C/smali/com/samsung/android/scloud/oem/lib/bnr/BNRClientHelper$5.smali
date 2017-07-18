.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->setServiceHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 24

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x0

    const-string v20, "to_upload_list"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    const-string v20, "file_descriptor"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    const-string v20, "max_size"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BACKUP_ITEM, i: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->backupItem(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "BACKUP_ITEM, value is incorrect, return err"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "is_success"

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-object v16

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BACKUP_ITEM, c: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v8, Ljava/io/FileWriter;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v18, 0x0

    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v13, v0, [Ljava/lang/String;

    const-string v20, "["

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;

    const/16 v20, 0x0

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v20

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getSize()J

    move-result-wide v18

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BACKUP_ITEM, item: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getTimeStamp()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "key"

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v20, "value"

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getData()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v20, "timestamp"

    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getTimeStamp()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v12, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_6

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;

    if-nez v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BACKUP_ITEM, item is incorrect: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", return err"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    const-string v20, "is_success"

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_4

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_2
    move-object v7, v8

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_5
    :try_start_3
    invoke-virtual {v10}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getSize()J

    move-result-wide v20

    add-long v20, v20, v18

    cmp-long v20, v20, v14

    if-ltz v20, :cond_7

    :cond_6
    const-string v20, "]"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/FileWriter;->flush()V

    const-string v20, "is_success"

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v20, "local_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_9

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v7, v8

    goto/16 :goto_0

    :cond_7
    :try_start_5
    invoke-virtual {v10}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v13, v9

    invoke-virtual {v10}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getSize()J

    move-result-wide v20

    add-long v18, v18, v20

    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "BACKUP_ITEM, item: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getTimeStamp()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "key"

    invoke-virtual {v10}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v20, "value"

    invoke-virtual {v10}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getData()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v20, "timestamp"

    invoke-virtual {v10}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getTimeStamp()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v12, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    goto/16 :goto_0

    :catch_2
    move-exception v4

    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "FileNotFoundException~!!, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v20, "is_success"

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_2

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_4
    move-exception v4

    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IOException~!!, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v20, "is_success"

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_2

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_6
    move-exception v4

    :goto_5
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "JSONException~!!, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v20, "is_success"

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v7, :cond_2

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v20

    :goto_6
    if-eqz v7, :cond_8

    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_8
    :goto_7
    throw v20

    :catch_8
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v20

    move-object v7, v8

    goto :goto_6

    :catch_9
    move-exception v4

    move-object v7, v8

    goto :goto_5

    :catch_a
    move-exception v4

    move-object v7, v8

    goto/16 :goto_4

    :catch_b
    move-exception v4

    move-object v7, v8

    goto/16 :goto_3

    :cond_9
    move-object v7, v8

    goto/16 :goto_0
.end method
