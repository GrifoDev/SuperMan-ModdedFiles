.class Lsun/nio/ch/SinkChannelImpl;
.super Ljava/nio/channels/Pipe$SinkChannel;
.source "SinkChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_INUSE:I = 0x0

.field private static final ST_KILLED:I = 0x1

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field fd:Ljava/io/FileDescriptor;

.field fdVal:I

.field private final lock:Ljava/lang/Object;

.field private volatile state:I

.field private final stateLock:Ljava/lang/Object;

.field private volatile thread:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/nio/ch/SinkChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    .line 211
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    sput-object v0, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 34
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Ljava/nio/channels/Pipe$SinkChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->lock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->stateLock:Ljava/lang/Object;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    .line 80
    iput-object p2, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 81
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->fdVal:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    .line 78
    return-void
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFDVal()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lsun/nio/ch/SinkChannelImpl;->fdVal:I

    return v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v3, p0, Lsun/nio/ch/SinkChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 87
    :try_start_0
    iget v2, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    .line 88
    sget-object v2, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v4, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v4}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 89
    :cond_0
    iget-wide v0, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 90
    .local v0, "th":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 91
    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 92
    :cond_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    invoke-virtual {p0}, Lsun/nio/ch/SinkChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 85
    return-void

    .line 86
    .end local v0    # "th":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 111
    return-void
.end method

.method public kill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 98
    iget-object v2, p0, Lsun/nio/ch/SinkChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 99
    :try_start_0
    iget v3, p0, Lsun/nio/ch/SinkChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v1, :cond_0

    monitor-exit v2

    .line 100
    return-void

    .line 101
    :cond_0
    :try_start_1
    iget v3, p0, Lsun/nio/ch/SinkChannelImpl;->state:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 103
    return-void

    .line 105
    :cond_1
    :try_start_2
    sget-boolean v3, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move v0, v1

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    :try_start_3
    sget-object v0, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v1, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lsun/nio/ch/SinkChannelImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 97
    return-void
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 148
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 149
    const/4 p1, 0x4

    .line 150
    :cond_0
    iget-object v0, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v0, p2, p1}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 147
    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SinkChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 140
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SinkChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 6
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 118
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v2

    .line 119
    .local v2, "oldOps":I
    move v1, p2

    .line 121
    .local v1, "newOps":I
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_0

    .line 122
    new-instance v3, Ljava/lang/Error;

    const-string/jumbo v4, "POLLNVAL detected"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_0
    and-int/lit8 v5, p1, 0x18

    if-eqz v5, :cond_2

    .line 126
    move v1, v0

    .line 127
    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 128
    not-int v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    .line 131
    :cond_2
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_3

    .line 132
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_3

    .line 133
    or-int/lit8 v1, p2, 0x4

    .line 135
    :cond_3
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 136
    not-int v5, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_4

    :goto_1
    return v3

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 159
    invoke-direct {p0}, Lsun/nio/ch/SinkChannelImpl;->ensureOpen()V

    .line 160
    iget-object v4, p0, Lsun/nio/ch/SinkChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "n":I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    .line 164
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_1

    .line 172
    const-wide/16 v6, 0x0

    :try_start_1
    iput-wide v6, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 174
    sget-boolean v1, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_0
    monitor-exit v4

    .line 165
    return v3

    .line 166
    :cond_1
    :try_start_2
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 168
    :cond_2
    iget-object v1, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    sget-object v5, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 169
    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 170
    :cond_3
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    .line 172
    const-wide/16 v6, 0x0

    :try_start_3
    iput-wide v6, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 173
    if-gtz v0, :cond_4

    if-ne v0, v8, :cond_5

    :cond_4
    :goto_0
    invoke-virtual {p0, v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 174
    sget-boolean v2, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    move v2, v3

    .line 173
    goto :goto_0

    :cond_6
    monitor-exit v4

    .line 170
    return v1

    .line 171
    :catchall_1
    move-exception v1

    .line 172
    const-wide/16 v6, 0x0

    :try_start_4
    iput-wide v6, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 173
    if-gtz v0, :cond_7

    if-ne v0, v8, :cond_8

    :cond_7
    :goto_1
    invoke-virtual {p0, v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 174
    sget-boolean v2, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_9

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_8
    move v2, v3

    .line 173
    goto :goto_1

    .line 171
    :cond_9
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public write([Ljava/nio/ByteBuffer;)J
    .locals 14
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-wide/16 v10, 0x0

    .line 180
    if-nez p1, :cond_0

    .line 181
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 182
    :cond_0
    invoke-direct {p0}, Lsun/nio/ch/SinkChannelImpl;->ensureOpen()V

    .line 183
    iget-object v5, p0, Lsun/nio/ch/SinkChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 184
    const-wide/16 v0, 0x0

    .line 186
    .local v0, "n":J
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    .line 187
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    .line 195
    const-wide/16 v2, 0x0

    :try_start_1
    iput-wide v2, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 196
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 197
    sget-boolean v2, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    :cond_1
    monitor-exit v5

    .line 188
    return-wide v10

    .line 189
    :cond_2
    :try_start_2
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 191
    :cond_3
    iget-object v2, p0, Lsun/nio/ch/SinkChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v6, Lsun/nio/ch/SinkChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, v6}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 192
    const-wide/16 v6, -0x3

    cmp-long v2, v0, v6

    if-nez v2, :cond_4

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 193
    :cond_4
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v6

    .line 195
    const-wide/16 v8, 0x0

    :try_start_3
    iput-wide v8, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 196
    cmp-long v2, v0, v10

    if-gtz v2, :cond_5

    cmp-long v2, v0, v12

    if-nez v2, :cond_6

    :cond_5
    :goto_0
    invoke-virtual {p0, v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 197
    sget-boolean v2, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_7

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    move v3, v4

    .line 196
    goto :goto_0

    :cond_7
    monitor-exit v5

    .line 193
    return-wide v6

    .line 194
    :catchall_1
    move-exception v2

    .line 195
    const-wide/16 v6, 0x0

    :try_start_4
    iput-wide v6, p0, Lsun/nio/ch/SinkChannelImpl;->thread:J

    .line 196
    cmp-long v6, v0, v10

    if-gtz v6, :cond_8

    cmp-long v6, v0, v12

    if-nez v6, :cond_9

    :cond_8
    :goto_1
    invoke-virtual {p0, v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 197
    sget-boolean v3, Lsun/nio/ch/SinkChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_a

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_9
    move v3, v4

    .line 196
    goto :goto_1

    .line 194
    :cond_a
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 205
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_0

    .line 207
    invoke-static {p1, p2, p3}, Lsun/nio/ch/Util;->subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/nio/ch/SinkChannelImpl;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method
