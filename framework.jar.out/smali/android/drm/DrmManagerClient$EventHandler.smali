.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    const-string/jumbo v17, "DrmManagerClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unknown message type "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/drm/DrmInfo;

    const-string/jumbo v17, "drm_path"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v3, ""

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_0

    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v17, "FileDescriptorKey"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v3}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v12, v13

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/drm/DrmManagerClient;->-wrap0(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v15

    const-string/jumbo v17, "drm_info_status_object"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v17, "drm_info_object"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_1

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    if-eqz v15, :cond_4

    iget v0, v15, Landroid/drm/DrmInfoStatus;->statusCode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    new-instance v9, Landroid/drm/DrmEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v18, v0

    iget v0, v15, Landroid/drm/DrmInfoStatus;->infoType:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/drm/DrmManagerClient;->-wrap3(Landroid/drm/DrmManagerClient;I)I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v9, v0, v1, v2, v4}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get1(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v17

    if-eqz v17, :cond_2

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get1(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get0(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v17

    if-eqz v17, :cond_3

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get0(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v8}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    :cond_3
    return-void

    :catch_0
    move-exception v7

    :goto_3
    const-string/jumbo v17, "DrmManagerClient"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception the file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v7

    goto/16 :goto_1

    :cond_4
    if-eqz v15, :cond_5

    iget v14, v15, Landroid/drm/DrmInfoStatus;->infoType:I

    :goto_4
    if-eqz v15, :cond_6

    iget-object v0, v15, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v17

    if-eqz v17, :cond_6

    iget-object v0, v15, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v5

    new-instance v16, Ljava/lang/String;

    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v8, Landroid/drm/DrmErrorEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v14, v15}, Landroid/drm/DrmManagerClient;->-wrap2(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v8, v0, v1, v2, v4}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v14

    goto :goto_4

    :cond_6
    new-instance v8, Landroid/drm/DrmErrorEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v14, v15}, Landroid/drm/DrmManagerClient;->-wrap2(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v8, v0, v1, v2, v4}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/drm/DrmManagerClient;->-wrap1(Landroid/drm/DrmManagerClient;I)I

    move-result v17

    if-nez v17, :cond_7

    new-instance v9, Landroid/drm/DrmEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    move-result v17

    const/16 v18, 0x3e9

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v9, v0, v1, v2}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    new-instance v8, Landroid/drm/DrmErrorEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    move-result v17

    const/16 v18, 0x7d7

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v8, v0, v1, v2}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v7

    move-object v12, v13

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
