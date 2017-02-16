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

    .prologue
    const-class v0, Lsun/nio/ch/AbstractPollSelectorImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/AbstractPollSelectorImpl;->-assertionsDisabled:Z

    .line 39
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;II)V
    .locals 2
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "channels"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lsun/nio/ch/SelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->INIT_CAP:I

    .line 53
    iput v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .line 59
    iput-boolean v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    .line 66
    iput p2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    .line 67
    iput p3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .line 64
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

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 86
    iget-object v6, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 87
    :try_start_0
    iget-boolean v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v6

    .line 88
    return-void

    .line 89
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    .line 91
    iget v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ge v0, v3, :cond_5

    .line 92
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v2, v3, v0

    .line 93
    .local v2, "ski":Lsun/nio/ch/SelectionKeyImpl;
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

    .line 86
    .end local v0    # "i":I
    .end local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .restart local v0    # "i":I
    .restart local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :cond_1
    move v3, v5

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/4 v3, -0x1

    :try_start_2
    invoke-virtual {v2, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    .line 95
    invoke-virtual {p0, v2}, Lsun/nio/ch/AbstractPollSelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    .line 96
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    .line 97
    .local v1, "selch":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    .end local v1    # "selch":Ljava/nio/channels/SelectableChannel;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .restart local v1    # "selch":Ljava/nio/channels/SelectableChannel;
    :cond_4
    check-cast v1, Lsun/nio/ch/SelChImpl;

    .end local v1    # "selch":Ljava/nio/channels/SelectableChannel;
    invoke-interface {v1}, Lsun/nio/ch/SelChImpl;->kill()V

    goto :goto_2

    .line 100
    .end local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :cond_5
    invoke-virtual {p0}, Lsun/nio/ch/AbstractPollSelectorImpl;->implCloseInterrupt()V

    .line 101
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3}, Lsun/nio/ch/PollArrayWrapper;->free()V

    .line 102
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    .line 103
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    .line 104
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    .line 105
    const/4 v3, 0x0

    iput v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    .line 85
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
    .param p1, "ski"    # Lsun/nio/ch/SelectionKeyImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    move-result v1

    .line 171
    .local v1, "i":I
    sget-boolean v4, Lsun/nio/ch/AbstractPollSelectorImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-ltz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 172
    :cond_1
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_3

    .line 174
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v3, v4

    .line 175
    .local v0, "endChannel":Lsun/nio/ch/SelectionKeyImpl;
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aput-object v0, v3, v1

    .line 176
    invoke-virtual {v0, v1}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    .line 177
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    .line 178
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v4, v4, -0x1

    .line 179
    iget-object v5, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    .line 178
    invoke-static {v3, v4, v5, v1}, Lsun/nio/ch/PollArrayWrapper;->replaceEntry(Lsun/nio/ch/PollArrayWrapper;ILsun/nio/ch/PollArrayWrapper;I)V

    .line 184
    .end local v0    # "endChannel":Lsun/nio/ch/SelectionKeyImpl;
    :goto_0
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 185
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    .line 186
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v4, v3, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    .line 187
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    .line 189
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->keys:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 190
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p0, p1}, Lsun/nio/ch/AbstractPollSelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    .line 192
    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    .line 193
    .local v2, "selch":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 165
    .end local v2    # "selch":Ljava/nio/channels/SelectableChannel;
    :cond_2
    :goto_1
    return-void

    .line 181
    :cond_3
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    goto :goto_0

    .line 194
    .restart local v2    # "selch":Ljava/nio/channels/SelectableChannel;
    :cond_4
    check-cast v2, Lsun/nio/ch/SelChImpl;

    .end local v2    # "selch":Ljava/nio/channels/SelectableChannel;
    invoke-interface {v2}, Lsun/nio/ch/SelChImpl;->kill()V

    goto :goto_1
.end method

.method protected implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
    .locals 6
    .param p1, "ski"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 141
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 142
    :try_start_0
    iget-boolean v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    if-eqz v3, :cond_0

    .line 143
    new-instance v3, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 146
    :cond_0
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    array-length v3, v3

    iget v5, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ne v3, v5, :cond_2

    .line 148
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v3, v3, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    mul-int/lit8 v1, v3, 0x2

    .line 149
    .local v1, "newSize":I
    new-array v2, v1, [Lsun/nio/ch/SelectionKeyImpl;

    .line 151
    .local v2, "temp":[Lsun/nio/ch/SelectionKeyImpl;
    iget v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ge v0, v3, :cond_1

    .line 152
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    iput-object v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    .line 155
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->grow(I)V

    .line 157
    .end local v0    # "i":I
    .end local v1    # "newSize":I
    .end local v2    # "temp":[Lsun/nio/ch/SelectionKeyImpl;
    :cond_2
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget v5, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    aput-object p1, v3, v5

    .line 158
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    invoke-virtual {p1, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    .line 159
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget-object v5, p1, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-virtual {v3, v5}, Lsun/nio/ch/PollArrayWrapper;->addEntry(Lsun/nio/ch/SelChImpl;)V

    .line 160
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    .line 161
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->keys:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 140
    return-void
.end method

.method putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V
    .locals 3
    .param p1, "sk"    # Lsun/nio/ch/SelectionKeyImpl;
    .param p2, "ops"    # I

    .prologue
    .line 71
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2, p2}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 70
    return-void
.end method

.method protected updateSelectedKeys()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "numKeysUpdated":I
    iget v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ge v0, v4, :cond_2

    .line 120
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v4, v0}, Lsun/nio/ch/PollArrayWrapper;->getReventOps(I)I

    move-result v2

    .line 121
    .local v2, "rOps":I
    if-eqz v2, :cond_0

    .line 122
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v3, v4, v0

    .line 123
    .local v3, "sk":Lsun/nio/ch/SelectionKeyImpl;
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v4, v0, v6}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    .line 124
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    iget-object v4, v3, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-interface {v4, v2, v3}, Lsun/nio/ch/SelChImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 119
    .end local v3    # "sk":Lsun/nio/ch/SelectionKeyImpl;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .restart local v3    # "sk":Lsun/nio/ch/SelectionKeyImpl;
    :cond_1
    iget-object v4, v3, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-interface {v4, v2, v3}, Lsun/nio/ch/SelChImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    .line 130
    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v4

    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 131
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    .end local v2    # "rOps":I
    .end local v3    # "sk":Lsun/nio/ch/SelectionKeyImpl;
    :cond_2
    return v1
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v0}, Lsun/nio/ch/PollArrayWrapper;->interrupt()V

    .line 80
    return-object p0
.end method
