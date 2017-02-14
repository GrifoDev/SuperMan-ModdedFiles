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

    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->keys:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-static {v0}, Lsun/nio/ch/Util;->ungrowableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    goto :goto_0
.end method

.method private lockAndDoSelect(J)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

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

    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v0

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

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

    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->wakeup()Ljava/nio/channels/Selector;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

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

    return-void

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v0

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

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

    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    return-object v0

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

    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->cancelledKeys()Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/nio/ch/SelectionKeyImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/SelectorImpl;->implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v0

    throw v5

    :catch_0
    move-exception v3

    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v5, "Error deregistering key"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    monitor-exit v0

    return-void
.end method

.method putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V
    .locals 0

    return-void
.end method

.method protected final register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 3

    instance-of v1, p1, Lsun/nio/ch/SelChImpl;

    if-nez v1, :cond_0

    new-instance v1, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v1

    :cond_0
    new-instance v0, Lsun/nio/ch/SelectionKeyImpl;

    check-cast p1, Lsun/nio/ch/SelChImpl;

    invoke-direct {v0, p1, p0}, Lsun/nio/ch/SelectionKeyImpl;-><init>(Lsun/nio/ch/SelChImpl;Lsun/nio/ch/SelectorImpl;)V

    invoke-virtual {v0, p3}, Lsun/nio/ch/SelectionKeyImpl;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lsun/nio/ch/SelectorImpl;->publicKeys:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, v0}, Lsun/nio/ch/SelectorImpl;->implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {v0, p2}, Lsun/nio/ch/SelectionKeyImpl;->interestOps(I)Ljava/nio/channels/SelectionKey;

    return-object v0

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

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lsun/nio/ch/SelectorImpl;->select(J)I

    move-result v0

    return v0
.end method

.method public select(J)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    const-wide/16 p1, -0x1

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

    invoke-virtual {p0}, Lsun/nio/ch/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1.4"

    invoke-static {v0}, Lsun/nio/ch/Util;->atBugLevel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SelectorImpl;->publicSelectedKeys:Ljava/util/Set;

    return-object v0

    :cond_1
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0
.end method

.method public abstract wakeup()Ljava/nio/channels/Selector;
.end method
