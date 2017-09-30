.class Lcom/android/incallui/remotecall/RemoteCallPresenter$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/remotecall/RemoteCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/remotecall/RemoteCallPresenter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22

    const-string v1, "RemoteCallPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------------test message what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v20, "01012341234"

    const-string v2, "01099999999"

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/Dialog;

    new-instance v4, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;

    invoke-direct {v4, v1}, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;-><init>(Lcom/sec/ims/Dialog;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v12, v1, :cond_0

    const/4 v1, 0x3

    if-ne v12, v1, :cond_1

    :cond_0
    const/4 v15, 0x0

    :goto_2
    const-string v1, "RemoteCallPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remotecall handleMessage state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -callstate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/sec/ims/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v3}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callID"

    const-string v5, "localtage"

    const-string v6, "remotetag"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v7}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v8}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v9}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v10}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v11}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const/4 v15, 0x1

    goto :goto_2

    :pswitch_2
    new-instance v1, Lcom/sec/ims/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v3}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callID"

    const-string v5, "localtage"

    const-string v6, "remotetag"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v7}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v8}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v9}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v10}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v11}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_3
    new-instance v1, Lcom/sec/ims/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v3}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callID"

    const-string v5, "localtage"

    const-string v6, "remotetag"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v7}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v8}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v9}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v10}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v11}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    new-instance v1, Lcom/sec/ims/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v3}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callID"

    const-string v5, "localtage"

    const-string v6, "remotetag"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v7}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v8}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v9}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v10}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v11}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    new-instance v1, Lcom/sec/ims/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v3}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callID"

    const-string v5, "localtage"

    const-string v6, "remotetag"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v7}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v8}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v9}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v10}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v11}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    new-instance v1, Lcom/sec/ims/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v3}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callID"

    const-string v5, "localtage"

    const-string v6, "remotetag"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v7}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v8}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v9}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v10}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v11}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/ims/Dialog;

    const-string v4, "callID"

    const-string v5, "localtage"

    const-string v6, "remotetag"

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v2, v20

    move-object/from16 v3, v20

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct/range {v1 .. v19}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_7
    new-instance v1, Lcom/sec/ims/Dialog;

    const-string v4, "callID"

    const-string v5, "localtage"

    const-string v6, "remotetag"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v2, v20

    move-object/from16 v3, v20

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct/range {v1 .. v19}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_8
    new-instance v1, Lcom/sec/ims/Dialog;

    const-string v4, "callID"

    const-string v5, "localtage"

    const-string v6, "remotetag"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v3, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object/from16 v11, v20

    invoke-direct/range {v1 .. v19}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/ims/Dialog;

    const-string v4, "callID"

    const-string v5, "localtage"

    const-string v6, "remotetag"

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v2, v20

    move-object/from16 v3, v20

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct/range {v1 .. v19}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/incallui/remotecall/RemoteCallPresenter;->isSelfTestStart:Z

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->onNotifyRemoteCallStateChanged(Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
