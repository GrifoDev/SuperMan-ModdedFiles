.class Lsun/nio/ch/PipeImpl;
.super Ljava/nio/channels/Pipe;
.source "PipeImpl.java"


# instance fields
.field private final sink:Ljava/nio/channels/Pipe$SinkChannel;

.field private final source:Ljava/nio/channels/Pipe$SourceChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 8
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/nio/channels/Pipe;-><init>()V

    .line 42
    const/4 v6, 0x1

    invoke-static {v6}, Lsun/nio/ch/IOUtil;->makePipe(Z)J

    move-result-wide v0

    .line 43
    .local v0, "pipeFds":J
    const/16 v6, 0x20

    ushr-long v6, v0, v6

    long-to-int v2, v6

    .line 44
    .local v2, "readFd":I
    long-to-int v5, v0

    .line 45
    .local v5, "writeFd":I
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    .line 46
    .local v4, "sourcefd":Ljava/io/FileDescriptor;
    invoke-static {v4, v2}, Lsun/nio/ch/IOUtil;->setfdVal(Ljava/io/FileDescriptor;I)V

    .line 47
    new-instance v6, Lsun/nio/ch/SourceChannelImpl;

    invoke-direct {v6, p1, v4}, Lsun/nio/ch/SourceChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    iput-object v6, p0, Lsun/nio/ch/PipeImpl;->source:Ljava/nio/channels/Pipe$SourceChannel;

    .line 48
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 49
    .local v3, "sinkfd":Ljava/io/FileDescriptor;
    invoke-static {v3, v5}, Lsun/nio/ch/IOUtil;->setfdVal(Ljava/io/FileDescriptor;I)V

    .line 50
    new-instance v6, Lsun/nio/ch/SinkChannelImpl;

    invoke-direct {v6, p1, v3}, Lsun/nio/ch/SinkChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    iput-object v6, p0, Lsun/nio/ch/PipeImpl;->sink:Ljava/nio/channels/Pipe$SinkChannel;

    .line 41
    return-void
.end method


# virtual methods
.method public sink()Ljava/nio/channels/Pipe$SinkChannel;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lsun/nio/ch/PipeImpl;->sink:Ljava/nio/channels/Pipe$SinkChannel;

    return-object v0
.end method

.method public source()Ljava/nio/channels/Pipe$SourceChannel;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lsun/nio/ch/PipeImpl;->source:Ljava/nio/channels/Pipe$SourceChannel;

    return-object v0
.end method
