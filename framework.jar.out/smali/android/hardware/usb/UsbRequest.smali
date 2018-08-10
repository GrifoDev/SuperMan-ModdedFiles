.class public Landroid/hardware/usb/UsbRequest;
.super Ljava/lang/Object;
.source "UsbRequest.java"


# static fields
.field private static final MAX_USBFS_BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "UsbRequest"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mClientData:Ljava/lang/Object;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private mEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mIsUsingNewQueue:Z

.field private mLength:I

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mTempBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private native native_cancel()Z
.end method

.method private native native_close()V
.end method

.method private native native_dequeue_array([BIZ)I
.end method

.method private native native_dequeue_direct()I
.end method

.method private native native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z
.end method

.method private native native_queue(Ljava/nio/ByteBuffer;II)Z
.end method

.method private native native_queue_array([BIZ)Z
.end method

.method private native native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_cancel()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_close()V

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_0
    return-void
.end method

.method dequeue(Z)V
    .locals 8

    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v4, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    if-eqz v4, :cond_5

    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_direct()I

    move-result v1

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    iput v4, p0, Landroid/hardware/usb/UsbRequest;->mLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3
    :try_start_2
    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    :try_start_3
    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    const/4 v4, 0x0

    :try_start_4
    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_5
    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    const/4 v6, 0x0

    :try_start_6
    iput-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    throw v4

    :cond_5
    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_direct()I

    move-result v1

    :goto_3
    if-ltz v1, :cond_0

    iget v4, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    :try_start_7
    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    if-eqz p1, :cond_7

    :try_start_8
    const-string/jumbo v4, "UsbRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Buffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not have enough space to read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/nio/BufferOverflowException;

    invoke-direct {v4}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v4

    :cond_6
    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget v6, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-direct {p0, v4, v6, v3}, Landroid/hardware/usb/UsbRequest;->native_dequeue_array([BIZ)I

    move-result v1

    goto :goto_3

    :cond_7
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getClientData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    return-object v0
.end method

.method public getEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z
    .locals 7

    iput-object p2, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const-string/jumbo v0, "connection"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v3

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/UsbRequest;->native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    :cond_0
    return v6
.end method

.method public queue(Ljava/nio/ByteBuffer;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-wide v6, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    const-string/jumbo v5, "request is not initialized"

    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-boolean v2, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    xor-int/lit8 v2, v2, 0x1

    const-string/jumbo v5, "this request is currently queued"

    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v2, v3, v6}, Landroid/hardware/usb/UsbRequest;->native_queue(Ljava/nio/ByteBuffer;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_2
    monitor-exit v5

    if-nez v1, :cond_0

    iput-boolean v4, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    iput-object v10, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    iput-object v10, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    return v1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const-string/jumbo v6, "number of remaining bytes"

    const/4 v7, 0x0

    const/16 v8, 0x4000

    invoke-static {v2, v7, v8, v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v0

    :cond_4
    const-string/jumbo v2, "buffer can not be read-only when receiving data"

    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    :cond_5
    iget-object p1, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Landroid/hardware/usb/UsbRequest;->native_queue(Ljava/nio/ByteBuffer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2
.end method

.method public queue(Ljava/nio/ByteBuffer;I)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iput p2, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/usb/UsbRequest;->native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/usb/UsbRequest;->mLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, v2, p2, v0}, Landroid/hardware/usb/UsbRequest;->native_queue_array([BIZ)Z

    move-result v1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "buffer is not direct and has no array"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setClientData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    return-void
.end method
