.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;

    iget v8, p1, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WorkerHandler.handleMsg: msg.arg1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reply.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", arg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", args.handler.toString()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", args.handler.getLooper()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", args.handler.getLooper().getThread().getState()"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    iput-object v0, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onErrorResponse(ILjava/lang/Exception;)V

    move-object v0, v7

    goto :goto_2

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onErrorResponse(ILjava/lang/Exception;)V

    goto/16 :goto_1

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v3, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onErrorResponse(ILjava/lang/Exception;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_4
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->ops:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v7, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_5
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->valuesList:[Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_1

    :catch_4
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onErrorResponse(ILjava/lang/Exception;)V

    goto/16 :goto_1

    :catch_5
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onErrorResponse(ILjava/lang/Exception;)V

    const/16 v0, -0x45

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
