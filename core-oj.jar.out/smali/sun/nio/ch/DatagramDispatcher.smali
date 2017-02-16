.class Lsun/nio/ch/DatagramDispatcher;
.super Lsun/nio/ch/NativeDispatcher;
.source "DatagramDispatcher.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lsun/nio/ch/NativeDispatcher;-><init>()V

    return-void
.end method

.method static native read0(Ljava/io/FileDescriptor;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native readv0(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native write0(Ljava/io/FileDescriptor;JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native writev0(Ljava/io/FileDescriptor;JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method close(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->close0(Ljava/io/FileDescriptor;)V

    .line 60
    return-void
.end method

.method preClose(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->preCloseImpl(Ljava/io/FileDescriptor;)V

    .line 64
    return-void
.end method

.method read(Ljava/io/FileDescriptor;JI)I
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 42
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/DatagramDispatcher;->read0(Ljava/io/FileDescriptor;JI)I

    move-result v0

    return v0
.end method

.method readv(Ljava/io/FileDescriptor;JI)J
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 47
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/DatagramDispatcher;->readv0(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method write(Ljava/io/FileDescriptor;JI)I
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 52
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/DatagramDispatcher;->write0(Ljava/io/FileDescriptor;JI)I

    move-result v0

    return v0
.end method

.method writev(Ljava/io/FileDescriptor;JI)J
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "address"    # J
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 57
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/DatagramDispatcher;->writev0(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method
