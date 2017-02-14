.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;
.super Landroid/os/Handler;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_ON_FINISH:I = 0x4

.field public static final MSG_ON_KILL:I = 0x5

.field public static final MSG_ON_LAYOUT:I = 0x2

.field public static final MSG_ON_START:I = 0x1

.field public static final MSG_ON_WRITE:I = 0x3


# instance fields
.field final synthetic this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unknown message: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :pswitch_0
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v11}, Landroid/print/PrintDocumentAdapter;->onStart()V

    :goto_0
    return-void

    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintDocumentAdapter;

    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintAttributes;

    iget-object v2, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/print/PrintAttributes;

    iget-object v3, v6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/os/CancellationSignal;

    iget-object v4, v6, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    iget-object v5, v6, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-virtual/range {v0 .. v5}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintDocumentAdapter;

    iget-object v9, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, [Landroid/print/PageRange;

    iget-object v8, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    iget-object v3, v6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/os/CancellationSignal;

    iget-object v7, v6, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v7, Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-virtual {v0, v9, v8, v3, v7}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    goto :goto_0

    :pswitch_3
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v11}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    iget-object v11, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v11}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v11}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-wrap0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :pswitch_4
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
