.class public abstract Landroid/view/InputEventReceiver;
.super Ljava/lang/Object;
.source "InputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventReceiver$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventReceiver"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:J

.field private final mSeqMap:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 45
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    if-nez p2, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iput-object p1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    .line 69
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 70
    invoke-static {v0, p1, v1}, Landroid/view/InputEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    .line 73
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private dispatchBatchedInputEventPending()V
    .locals 0

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/view/InputEventReceiver;->onBatchedInputEventPending()V

    .line 190
    return-void
.end method

.method private dispatchInputEvent(ILandroid/view/InputEvent;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 184
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 185
    invoke-virtual {p0, p2}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    .line 183
    return-void
.end method

.method private dispose(Z)V
    .locals 6
    .param p1, "finalized"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 97
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 100
    :cond_1
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 101
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/InputEventReceiver;->nativeDispose(J)V

    .line 102
    iput-wide v4, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    .line 104
    :cond_2
    iput-object v2, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    .line 105
    iput-object v2, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 92
    return-void
.end method

.method private static native nativeConsumeBatchedInputEvents(JJ)Z
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFinishInputEvent(JIZ)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/InputEventReceiver;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method


# virtual methods
.method public final consumeBatchedInputEvents(J)Z
    .locals 5
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 172
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 173
    const-string/jumbo v0, "InputEventReceiver"

    const-string/jumbo v1, "Attempted to consume batched input events but the input event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_0
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/InputEventReceiver;->nativeConsumeBatchedInputEvents(JJ)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V

    .line 88
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 77
    return-void

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 80
    throw v0
.end method

.method public final finishInputEvent(Landroid/view/InputEvent;Z)V
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "handled"    # Z

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "event must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_0
    iget-wide v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 144
    const-string/jumbo v2, "InputEventReceiver"

    const-string/jumbo v3, "Attempted to finish an input event but the input event receiver has already been disposed."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 139
    return-void

    .line 147
    :cond_1
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 148
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 149
    const-string/jumbo v2, "InputEventReceiver"

    const-string/jumbo v3, "Attempted to finish an input event that is not in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 152
    .local v1, "seq":I
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 153
    iget-wide v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v2, v3, v1, p2}, Landroid/view/InputEventReceiver;->nativeFinishInputEvent(JIZ)V

    goto :goto_0
.end method

.method public onBatchedInputEventPending()V
    .locals 2

    .prologue
    .line 129
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 128
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 116
    return-void
.end method
