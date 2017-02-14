.class public abstract Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;
.implements Ljava/nio/channels/InterruptibleChannel;


# instance fields
.field private final closeLock:Ljava/lang/Object;

.field private volatile interrupted:Ljava/lang/Thread;

.field private interruptor:Lsun/nio/ch/Interruptible;

.field private volatile open:Z


# direct methods
.method static synthetic -get0(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    return v0
.end method

.method static synthetic -set0(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic -set1(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    return p1
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closeLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    return-void
.end method

.method static blockedOn(Lsun/nio/ch/Interruptible;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->blockedOn(Lsun/nio/ch/Interruptible;)V

    return-void
.end method


# virtual methods
.method protected final begin()V
    .locals 2

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    if-nez v1, :cond_0

    new-instance v1, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;

    invoke-direct {v1, p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;-><init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V

    iput-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    :cond_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    invoke-static {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->blockedOn(Lsun/nio/ch/Interruptible;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptor:Lsun/nio/ch/Interruptible;

    invoke-interface {v1, v0}, Lsun/nio/ch/Interruptible;->interrupt(Ljava/lang/Thread;)V

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->implCloseChannel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final end(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/AsynchronousCloseException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->blockedOn(Lsun/nio/ch/Interruptible;)V

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-instance v1, Ljava/nio/channels/ClosedByInterruptException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedByInterruptException;-><init>()V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
.end method

.method protected abstract implCloseChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->open:Z

    return v0
.end method
