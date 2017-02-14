.class public abstract Ljava/nio/channels/spi/AbstractSelector;
.super Ljava/nio/channels/Selector;
.source "AbstractSelector.java"


# instance fields
.field private final cancelledKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private interruptor:Lsun/nio/ch/Interruptible;

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;

.field private selectorOpen:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/nio/channels/Selector;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->selectorOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeys:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->interruptor:Lsun/nio/ch/Interruptible;

    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelector;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method


# virtual methods
.method protected final begin()V
    .locals 2

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->interruptor:Lsun/nio/ch/Interruptible;

    if-nez v1, :cond_0

    new-instance v1, Ljava/nio/channels/spi/AbstractSelector$1;

    invoke-direct {v1, p0}, Ljava/nio/channels/spi/AbstractSelector$1;-><init>(Ljava/nio/channels/spi/AbstractSelector;)V

    iput-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->interruptor:Lsun/nio/ch/Interruptible;

    :cond_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->interruptor:Lsun/nio/ch/Interruptible;

    invoke-static {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->blockedOn(Lsun/nio/ch/Interruptible;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->interruptor:Lsun/nio/ch/Interruptible;

    invoke-interface {v1, v0}, Lsun/nio/ch/Interruptible;->interrupt(Ljava/lang/Thread;)V

    :cond_1
    return-void
.end method

.method cancel(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeys:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final cancelledKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeys:Ljava/util/Set;

    return-object v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->selectorOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelector;->implCloseSelector()V

    return-void
.end method

.method protected final deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractSelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->removeKey(Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

.method protected final end()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->blockedOn(Lsun/nio/ch/Interruptible;)V

    return-void
.end method

.method protected abstract implCloseSelector()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isOpen()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->selectorOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method protected abstract register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
.end method
