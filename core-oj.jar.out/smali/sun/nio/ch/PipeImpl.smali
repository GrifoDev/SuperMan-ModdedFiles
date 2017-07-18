.class Lsun/nio/ch/PipeImpl;
.super Ljava/nio/channels/Pipe;
.source "PipeImpl.java"


# instance fields
.field private final sink:Ljava/nio/channels/Pipe$SinkChannel;

.field private final source:Ljava/nio/channels/Pipe$SourceChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 8

    invoke-direct {p0}, Ljava/nio/channels/Pipe;-><init>()V

    const/4 v6, 0x1

    invoke-static {v6}, Lsun/nio/ch/IOUtil;->makePipe(Z)J

    move-result-wide v0

    const/16 v6, 0x20

    ushr-long v6, v0, v6

    long-to-int v2, v6

    long-to-int v5, v0

    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    invoke-static {v4, v2}, Lsun/nio/ch/IOUtil;->setfdVal(Ljava/io/FileDescriptor;I)V

    new-instance v6, Lsun/nio/ch/SourceChannelImpl;

    invoke-direct {v6, p1, v4}, Lsun/nio/ch/SourceChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    iput-object v6, p0, Lsun/nio/ch/PipeImpl;->source:Ljava/nio/channels/Pipe$SourceChannel;

    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    invoke-static {v3, v5}, Lsun/nio/ch/IOUtil;->setfdVal(Ljava/io/FileDescriptor;I)V

    new-instance v6, Lsun/nio/ch/SinkChannelImpl;

    invoke-direct {v6, p1, v3}, Lsun/nio/ch/SinkChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    iput-object v6, p0, Lsun/nio/ch/PipeImpl;->sink:Ljava/nio/channels/Pipe$SinkChannel;

    return-void
.end method


# virtual methods
.method public sink()Ljava/nio/channels/Pipe$SinkChannel;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/PipeImpl;->sink:Ljava/nio/channels/Pipe$SinkChannel;

    return-object v0
.end method

.method public source()Ljava/nio/channels/Pipe$SourceChannel;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/PipeImpl;->source:Ljava/nio/channels/Pipe$SourceChannel;

    return-object v0
.end method
