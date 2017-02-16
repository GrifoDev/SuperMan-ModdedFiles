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
    .param p1, "this$0"    # Landroid/drm/DrmManagerClient;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 140
    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 141
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    const/4 v9, 0x0

    .line 146
    .local v9, "event":Landroid/drm/DrmEvent;
    const/4 v8, 0x0

    .line 147
    .local v8, "error":Landroid/drm/DrmErrorEvent;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v4, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 218
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

    .line 219
    return-void

    .line 151
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/drm/DrmInfo;

    .line 153
    .local v6, "drmInfo":Landroid/drm/DrmInfo;
    const-string/jumbo v17, "drm_path"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 154
    .local v11, "filepath":Ljava/lang/String;
    const/4 v12, 0x0

    .line 155
    .local v12, "fis":Ljava/io/FileInputStream;
    const-string/jumbo v3, ""

    .line 157
    .local v3, "FD":Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 169
    .end local v12    # "fis":Ljava/io/FileInputStream;
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

    .line 171
    .local v15, "status":Landroid/drm/DrmInfoStatus;
    const-string/jumbo v17, "drm_info_status_object"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v17, "drm_info_object"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    if-eqz v12, :cond_1

    .line 177
    :try_start_0
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    :cond_1
    :goto_1
    if-eqz v15, :cond_5

    iget v0, v15, Landroid/drm/DrmInfoStatus;->statusCode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 182
    new-instance v9, Landroid/drm/DrmEvent;

    .end local v9    # "event":Landroid/drm/DrmEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    move-result v17

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v18, v0

    iget v0, v15, Landroid/drm/DrmInfoStatus;->infoType:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/drm/DrmManagerClient;->-wrap3(Landroid/drm/DrmManagerClient;I)I

    move-result v18

    const/16 v19, 0x0

    .line 182
    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v9, v0, v1, v2, v4}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 221
    .end local v3    # "FD":Ljava/lang/String;
    .end local v6    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v8    # "error":Landroid/drm/DrmErrorEvent;
    .end local v11    # "filepath":Ljava/lang/String;
    .end local v15    # "status":Landroid/drm/DrmInfoStatus;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get1(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v17

    if-eqz v17, :cond_2

    if-eqz v9, :cond_2

    .line 222
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

    .line 224
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get0(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v17

    if-eqz v17, :cond_3

    if-eqz v8, :cond_3

    .line 225
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

    .line 144
    :cond_3
    return-void

    .line 159
    .restart local v3    # "FD":Ljava/lang/String;
    .restart local v6    # "drmInfo":Landroid/drm/DrmInfo;
    .restart local v8    # "error":Landroid/drm/DrmErrorEvent;
    .restart local v9    # "event":Landroid/drm/DrmEvent;
    .restart local v11    # "filepath":Ljava/lang/String;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .local v13, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    .line 161
    .local v10, "fd":Ljava/io/FileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v3

    .line 162
    const-string/jumbo v17, "FileDescriptorKey"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v3}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .local v12, "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 164
    .end local v10    # "fd":Ljava/io/FileDescriptor;
    .local v12, "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 165
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/io/IOException;
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

    .line 178
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v15    # "status":Landroid/drm/DrmInfoStatus;
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 185
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    if-eqz v15, :cond_6

    iget v14, v15, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 188
    .local v14, "infoType":I
    :goto_4
    if-eqz v15, :cond_7

    iget-object v0, v15, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v17

    if-eqz v17, :cond_7

    .line 189
    iget-object v0, v15, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v5

    .line 190
    .local v5, "bytes":[B
    new-instance v16, Ljava/lang/String;

    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 193
    .local v16, "url":Ljava/lang/String;
    new-instance v8, Landroid/drm/DrmErrorEvent;

    .end local v8    # "error":Landroid/drm/DrmErrorEvent;
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

    .line 188
    .local v8, "error":Landroid/drm/DrmErrorEvent;
    goto/16 :goto_2

    .line 185
    .end local v5    # "bytes":[B
    .end local v14    # "infoType":I
    .end local v16    # "url":Ljava/lang/String;
    .local v8, "error":Landroid/drm/DrmErrorEvent;
    :cond_6
    invoke-virtual {v6}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v14

    .restart local v14    # "infoType":I
    goto :goto_4

    .line 196
    :cond_7
    new-instance v8, Landroid/drm/DrmErrorEvent;

    .end local v8    # "error":Landroid/drm/DrmErrorEvent;
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

    .local v8, "error":Landroid/drm/DrmErrorEvent;
    goto/16 :goto_2

    .line 209
    .end local v3    # "FD":Ljava/lang/String;
    .end local v6    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v11    # "filepath":Ljava/lang/String;
    .end local v14    # "infoType":I
    .end local v15    # "status":Landroid/drm/DrmInfoStatus;
    .local v8, "error":Landroid/drm/DrmErrorEvent;
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

    if-nez v17, :cond_8

    .line 210
    new-instance v9, Landroid/drm/DrmEvent;

    .end local v9    # "event":Landroid/drm/DrmEvent;
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

    .local v9, "event":Landroid/drm/DrmEvent;
    goto/16 :goto_2

    .line 212
    .local v9, "event":Landroid/drm/DrmEvent;
    :cond_8
    new-instance v8, Landroid/drm/DrmErrorEvent;

    .end local v8    # "error":Landroid/drm/DrmErrorEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/drm/DrmManagerClient;->-get3(Landroid/drm/DrmManagerClient;)I

    move-result v17

    .line 213
    const/16 v18, 0x7d7

    const/16 v19, 0x0

    .line 212
    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v8, v0, v1, v2}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    .local v8, "error":Landroid/drm/DrmErrorEvent;
    goto/16 :goto_2

    .line 164
    .restart local v3    # "FD":Ljava/lang/String;
    .restart local v6    # "drmInfo":Landroid/drm/DrmInfo;
    .local v8, "error":Landroid/drm/DrmErrorEvent;
    .restart local v11    # "filepath":Ljava/lang/String;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .local v12, "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
