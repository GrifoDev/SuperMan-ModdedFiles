.class public final Landroid/hardware/SensorDirectChannel;
.super Ljava/lang/Object;
.source "SensorDirectChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# static fields
.field public static final RATE_FAST:I = 0x2

.field public static final RATE_NORMAL:I = 0x1

.field public static final RATE_STOP:I = 0x0

.field public static final RATE_VERY_FAST:I = 0x3

.field public static final TYPE_HARDWARE_BUFFER:I = 0x2

.field public static final TYPE_MEMORY_FILE:I = 0x1


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mManager:Landroid/hardware/SensorManager;

.field private final mNativeHandle:I

.field private final mSize:J

.field private final mType:I


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;IIJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    iput p2, p0, Landroid/hardware/SensorDirectChannel;->mNativeHandle:I

    iput p3, p0, Landroid/hardware/SensorDirectChannel;->mType:I

    iput-wide p4, p0, Landroid/hardware/SensorDirectChannel;->mSize:J

    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "SensorDirectChannel"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method static encodeData(Landroid/os/MemoryFile;)[J
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [J

    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    aput-wide v4, v2, v3

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    aput-wide v4, v2, v3

    int-to-long v4, v1

    const/4 v3, 0x2

    aput-wide v4, v2, v3

    return-object v2

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V

    :cond_0
    return-void
.end method

.method public configure(Landroid/hardware/Sensor;I)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/SensorManager;->configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/hardware/SensorDirectChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getNativeHandle()I
    .locals 1

    iget v0, p0, Landroid/hardware/SensorDirectChannel;->mNativeHandle:I

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    move-result v0

    return v0
.end method
