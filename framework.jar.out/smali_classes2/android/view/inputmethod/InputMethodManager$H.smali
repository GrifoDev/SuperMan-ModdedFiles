.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/io/FileDescriptor;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/io/PrintWriter;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catch_0
    move-exception v10

    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    :sswitch_1
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/view/InputBindResult;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v4, v13, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v1, v4, :cond_2

    :cond_0
    const-string/jumbo v1, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring onBind: cur seq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v5, v5, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", given seq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v13, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v13, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    iget-object v1, v13, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v1, v4, :cond_1

    iget-object v1, v13, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v3

    return-void

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->-set1(Landroid/view/inputmethod/InputMethodManager;I)I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v4, v13, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v4, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v3

    throw v1

    :sswitch_2
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eq v1, v14, :cond_3

    monitor-exit v3

    return-void

    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v15, v1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v3

    if-eqz v15, :cond_6

    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "InputMethodManager"

    const-string/jumbo v3, "MSG_UNBIND startInputInner is called with null IBinder "

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    :cond_6
    return-void

    :catchall_2
    move-exception v1

    monitor-exit v3

    throw v1

    :sswitch_3
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_b

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_c

    const/4 v11, 0x1

    :goto_3
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: MSG_SET_ACTIVE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v4, v4, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v7, v1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    if-nez v7, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_8
    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v3, v3, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    invoke-static {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->-wrap0(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SIMPLE_LOG:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "InputMethodManager"

    const-string/jumbo v3, "MSG_SET_ACTIVE startInputInner is called with null IBinder "

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v7, :cond_d

    const/4 v2, 0x7

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_a
    monitor-exit v16

    return-void

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_d
    const/16 v2, 0x8

    goto :goto_5

    :catchall_3
    move-exception v1

    monitor-exit v16

    throw v1

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->-set0(Landroid/view/inputmethod/InputMethodManager;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    monitor-exit v3

    return-void

    :catchall_4
    move-exception v1

    monitor-exit v3

    throw v1

    :sswitch_8
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_10

    const/4 v11, 0x1

    :goto_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v11, v1, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result-object v12

    :cond_e
    monitor-exit v3

    if-eqz v12, :cond_f

    invoke-interface {v12, v11}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    :cond_f
    return-void

    :cond_10
    const/4 v11, 0x0

    goto :goto_6

    :catchall_5
    move-exception v1

    monitor-exit v3

    throw v1

    :sswitch_9
    :try_start_b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v9

    goto/16 :goto_0

    :sswitch_a
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v9

    goto/16 :goto_0

    :catch_3
    move-exception v9

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0x64 -> :sswitch_9
        0x65 -> :sswitch_a
    .end sparse-switch
.end method
