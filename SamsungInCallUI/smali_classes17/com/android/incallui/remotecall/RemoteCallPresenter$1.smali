.class Lcom/android/incallui/remotecall/RemoteCallPresenter$1;
.super Landroid/os/Handler;
.source "RemoteCallPresenter.java"


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
    .locals 42

    const-string v2, "RemoteCallPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------------test message what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v41, "01012341234"

    const-string v18, "01099999999"

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/sec/ims/Dialog;

    new-instance v3, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;

    move-object/from16 v0, v39

    invoke-direct {v3, v0}, Lcom/android/incallui/remotecall/data/MultiEndDataIms6Wrapper;-><init>(Lcom/sec/ims/Dialog;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v16, 0x0

    const/4 v2, 0x2

    if-eq v13, v2, :cond_0

    const/4 v2, 0x3

    if-ne v13, v2, :cond_1

    :cond_0
    const/16 v16, 0x0

    :goto_2
    const-string v2, "RemoteCallPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remotecall handleMessage state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -callstate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lcom/sec/ims/Dialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v3}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v4}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "callID"

    const-string v6, "localtage"

    const-string v7, "remotetag"

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

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v12}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const/16 v16, 0x1

    goto :goto_2

    :pswitch_2
    new-instance v17, Lcom/sec/ims/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "callID"

    const-string v21, "localtage"

    const-string v22, "remotetag"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x2

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v17 .. v35}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_3
    new-instance v17, Lcom/sec/ims/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "callID"

    const-string v21, "localtage"

    const-string v22, "remotetag"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v17 .. v35}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    new-instance v17, Lcom/sec/ims/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "callID"

    const-string v21, "localtage"

    const-string v22, "remotetag"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x2

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v17 .. v35}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    new-instance v17, Lcom/sec/ims/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "callID"

    const-string v21, "localtage"

    const-string v22, "remotetag"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v17 .. v35}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    new-instance v17, Lcom/sec/ims/Dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "callID"

    const-string v21, "localtage"

    const-string v22, "remotetag"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->access$000(Lcom/android/incallui/remotecall/RemoteCallPresenter;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v17 .. v35}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v17, Lcom/sec/ims/Dialog;

    const-string v20, "callID"

    const-string v21, "localtage"

    const-string v22, "remotetag"

    const/16 v28, 0x2

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x2

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v18, v41

    move-object/from16 v19, v41

    move-object/from16 v23, v41

    move-object/from16 v24, v41

    move-object/from16 v25, v41

    move-object/from16 v26, v41

    move-object/from16 v27, v41

    invoke-direct/range {v17 .. v35}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_7
    new-instance v17, Lcom/sec/ims/Dialog;

    const-string v20, "callID"

    const-string v21, "localtage"

    const-string v22, "remotetag"

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v18, v41

    move-object/from16 v19, v41

    move-object/from16 v23, v41

    move-object/from16 v24, v41

    move-object/from16 v25, v41

    move-object/from16 v26, v41

    move-object/from16 v27, v41

    invoke-direct/range {v17 .. v35}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_8
    new-instance v17, Lcom/sec/ims/Dialog;

    const-string v20, "callID"

    const-string v21, "localtage"

    const-string v22, "remotetag"

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v19, v18

    move-object/from16 v23, v18

    move-object/from16 v24, v18

    move-object/from16 v25, v18

    move-object/from16 v26, v18

    move-object/from16 v27, v41

    invoke-direct/range {v17 .. v35}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v19, Lcom/sec/ims/Dialog;

    const-string v22, "callID"

    const-string v23, "localtage"

    const-string v24, "remotetag"

    const/16 v30, 0x2

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x2

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v37, 0x0

    move-object/from16 v20, v41

    move-object/from16 v21, v41

    move-object/from16 v25, v41

    move-object/from16 v26, v41

    move-object/from16 v27, v41

    move-object/from16 v28, v41

    move-object/from16 v29, v41

    invoke-direct/range {v19 .. v37}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/incallui/remotecall/RemoteCallPresenter;->isSelfTestStart:Z

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/remotecall/RemoteCallPresenter$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->onNotifyRemoteCallStateChanged(Ljava/util/ArrayList;)V

    return-void

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
