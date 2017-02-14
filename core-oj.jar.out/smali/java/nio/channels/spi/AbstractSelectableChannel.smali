.class public abstract Ljava/nio/channels/spi/AbstractSelectableChannel;
.super Ljava/nio/channels/SelectableChannel;
.source "AbstractSelectableChannel.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field blocking:Z

.field private keyCount:I

.field private final keyLock:Ljava/lang/Object;

.field private keys:[Ljava/nio/channels/SelectionKey;

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;

.field private final regLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/nio/channels/spi/AbstractSelectableChannel;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/nio/channels/SelectableChannel;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z

    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method

.method private addKey(Ljava/nio/channels/SelectionKey;)V
    .locals 5

    sget-boolean v3, Ljava/nio/channels/spi/AbstractSelectableChannel;->-assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    if-eqz v3, :cond_3

    iget v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    iget-object v4, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    :cond_1
    :goto_1
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aput-object p1, v3, v0

    iget v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    if-nez v3, :cond_4

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/nio/channels/SelectionKey;

    iput-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v3, v3

    mul-int/lit8 v2, v3, 0x2

    new-array v1, v2, [Ljava/nio/channels/SelectionKey;

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v3, v3, v0

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iput-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    iget v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    goto :goto_1
.end method

.method private findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v2

    return-object v3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private haveValidKeys()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v2

    return v3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v2

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public final blockingLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, p1, :cond_1

    monitor-exit v1

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    :try_start_2
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->haveValidKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implConfigureBlocking(Z)V

    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object p0
.end method

.method protected final implCloseChannel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implCloseSelectableChannel()V

    iget-object v4, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected abstract implCloseSelectableChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implConfigureBlocking(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isBlocking()Z
    .locals 2

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isRegistered()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 1

    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method public final register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->validOps()I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    :cond_2
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, p3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-nez v0, :cond_5

    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    check-cast p1, Ljava/nio/channels/spi/AbstractSelector;

    invoke-virtual {p1, p0, p2, p3}, Ljava/nio/channels/spi/AbstractSelector;->register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->addKey(Ljava/nio/channels/SelectionKey;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    monitor-exit v2

    return-object v0
.end method

.method removeKey(Ljava/nio/channels/SelectionKey;)V
    .locals 4

    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/nio/channels/spi/AbstractSelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractSelectionKey;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
