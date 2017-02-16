.class abstract Lsun/nio/ch/SelectorImpl;
.super Ljava/nio/channels/spi/AbstractSelector;
.source "SelectorImpl.java"


# instance fields
.field protected keys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private publicKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private publicSelectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    .line 58
    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    .line 60
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    .line 54
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    .line 63
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-static {v0}, Lsun/nio/ch/Util;->ungrowableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    goto :goto_0
.end method

.method private lockAndDoSelect(J)I
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/SelectorImpl;->doSelect(J)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2

    .line 86
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v0

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 85
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method


# virtual methods
.method protected abstract doSelect(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public implCloseSelector()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->wakeup()Ljava/nio/channels/Selector;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 113
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->implClose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    .line 109
    return-void

    .line 113
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v0

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 111
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
.end method

.method public keys()Ljava/util/Set;
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

    .prologue
    .line 68
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    return-object v0

    .line 69
    :cond_1
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0
.end method

.method processDeregisterQueue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->cancelledKeys()Ljava/util/Set;

    move-result-object v0

    .line 144
    .local v0, "cks":Ljava/util/Set;
    monitor-enter v0

    .line 145
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 147
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/nio/ch/SelectionKeyImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .local v4, "ski":Lsun/nio/ch/SelectionKeyImpl;
    :try_start_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/SelectorImpl;->implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 144
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v4    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :catchall_0
    move-exception v5

    monitor-exit v0

    throw v5

    .line 151
    .restart local v1    # "i":Ljava/util/Iterator;
    .restart local v4    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :catch_0
    move-exception v3

    .line 152
    .local v3, "se":Ljava/net/SocketException;
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    .line 153
    const-string/jumbo v5, "Error deregistering key"

    .line 152
    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 155
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "se":Ljava/net/SocketException;
    :catchall_1
    move-exception v5

    .line 157
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 156
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "i":Ljava/util/Iterator;
    .end local v4    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :cond_0
    monitor-exit v0

    .line 141
    return-void
.end method

.method putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V
    .locals 0
    .param p1, "sk"    # Lsun/nio/ch/SelectionKeyImpl;
    .param p2, "ops"    # I

    .prologue
    .line 122
    return-void
.end method

.method protected final register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 3
    .param p1, "ch"    # Ljava/nio/channels/spi/AbstractSelectableChannel;
    .param p2, "ops"    # I
    .param p3, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 128
    instance-of v1, p1, Lsun/nio/ch/SelChImpl;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v1

    .line 130
    :cond_0
    new-instance v0, Lsun/nio/ch/SelectionKeyImpl;

    check-cast p1, Lsun/nio/ch/SelChImpl;

    .end local p1    # "ch":Ljava/nio/channels/spi/AbstractSelectableChannel;
    invoke-direct {v0, p1, p0}, Lsun/nio/ch/SelectionKeyImpl;-><init>(Lsun/nio/ch/SelChImpl;Lsun/nio/ch/SelectorImpl;)V

    .line 131
    .local v0, "k":Lsun/nio/ch/SelectionKeyImpl;
    invoke-virtual {v0, p3}, Lsun/nio/ch/SelectionKeyImpl;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    monitor-enter v1

    .line 133
    :try_start_0
    invoke-virtual {p0, v0}, Lsun/nio/ch/SelectorImpl;->implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 135
    invoke-virtual {v0, p2}, Lsun/nio/ch/SelectionKeyImpl;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 136
    return-object v0

    .line 132
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public select()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lsun/nio/ch/SelectorImpl;->select(J)I

    move-result v0

    return v0
.end method

.method public select(J)I
    .locals 5
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    const-wide/16 p1, -0x1

    .end local p1    # "timeout":J
    :cond_1
    invoke-direct {p0, p1, p2}, Lsun/nio/ch/SelectorImpl;->lockAndDoSelect(J)I

    move-result v0

    return v0
.end method

.method public selectNow()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lsun/nio/ch/SelectorImpl;->lockAndDoSelect(J)I

    move-result v0

    return v0
.end method

.method public selectedKeys()Ljava/util/Set;
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

    .prologue
    .line 74
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0
.end method

.method public abstract wakeup()Ljava/nio/channels/Selector;
.end method
