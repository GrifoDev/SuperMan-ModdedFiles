.class abstract Lsun/nio/ch/AbstractPollSelectorImpl;
.super Lsun/nio/ch/SelectorImpl;
.source "AbstractPollSelectorImpl.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected final INIT_CAP:I

.field protected channelArray:[Lsun/nio/ch/SelectionKeyImpl;

.field protected channelOffset:I

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field pollWrapper:Lsun/nio/ch/PollArrayWrapper;

.field protected totalChannels:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/ch/AbstractPollSelectorImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/AbstractPollSelectorImpl;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lsun/nio/ch/SelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    const/16 v0, 0xa

    iput v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->INIT_CAP:I

    iput v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    iput-boolean v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    iput p2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    iput p3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    return-void
.end method


# virtual methods
.method protected abstract doSelect(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected implClose()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    iget-object v6, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v6

    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    iget v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    :goto_0
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v2, v3, v0

    sget-boolean v3, Lsun/nio/ch/AbstractPollSelectorImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    move-result v3

    if-eq v3, v7, :cond_1

    move v3, v4

    :goto_1
    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :try_start_2
    invoke-virtual {v2, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    invoke-virtual {p0, v2}, Lsun/nio/ch/AbstractPollSelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    check-cast v1, Lsun/nio/ch/SelChImpl;

    invoke-interface {v1}, Lsun/nio/ch/SelChImpl;->kill()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lsun/nio/ch/AbstractPollSelectorImpl;->implCloseInterrupt()V

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3}, Lsun/nio/ch/PollArrayWrapper;->free()V

    const/4 v3, 0x0

    iput-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    const/4 v3, 0x0

    iput-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    const/4 v3, 0x0

    iput-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    const/4 v3, 0x0

    iput v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-void
.end method

.method protected abstract implCloseInterrupt()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    move-result v1

    sget-boolean v4, Lsun/nio/ch/AbstractPollSelectorImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-ltz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_1
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v3, v4

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aput-object v0, v3, v1

    invoke-virtual {v0, v1}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-static {v3, v4, v5, v1}, Lsun/nio/ch/PollArrayWrapper;->replaceEntry(Lsun/nio/ch/PollArrayWrapper;ILsun/nio/ch/PollArrayWrapper;I)V

    :goto_0
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v4, v3, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->keys:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lsun/nio/ch/AbstractPollSelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    goto :goto_0

    :cond_4
    check-cast v2, Lsun/nio/ch/SelChImpl;

    invoke-interface {v2}, Lsun/nio/ch/SelChImpl;->kill()V

    goto :goto_1
.end method

.method protected implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
    .locals 6

    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    array-length v3, v3

    iget v5, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v3, v3, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    mul-int/lit8 v1, v3, 0x2

    new-array v2, v1, [Lsun/nio/ch/SelectionKeyImpl;

    iget v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    :goto_0
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->grow(I)V

    :cond_2
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget v5, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    aput-object p1, v3, v5

    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    invoke-virtual {p1, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget-object v5, p1, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-virtual {v3, v5}, Lsun/nio/ch/PollArrayWrapper;->addEntry(Lsun/nio/ch/SelChImpl;)V

    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->keys:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void
.end method

.method putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V
    .locals 3

    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2, p2}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method protected updateSelectedKeys()I
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    :goto_0
    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v4, v0}, Lsun/nio/ch/PollArrayWrapper;->getReventOps(I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v3, v4, v0

    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v4, v0, v6}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-interface {v4, v2, v3}, Lsun/nio/ch/SelChImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-interface {v4, v2, v3}, Lsun/nio/ch/SelChImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v4

    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v0}, Lsun/nio/ch/PollArrayWrapper;->interrupt()V

    return-object p0
.end method
