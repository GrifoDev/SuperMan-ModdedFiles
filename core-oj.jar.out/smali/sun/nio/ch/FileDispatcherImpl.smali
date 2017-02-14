.class Lsun/nio/ch/FileDispatcherImpl;
.super Lsun/nio/ch/FileDispatcher;
.source "FileDispatcherImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/nio/ch/FileDispatcher;-><init>()V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lsun/nio/ch/FileDispatcher;-><init>()V

    return-void
.end method

.method static native close0(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native closeIntFD(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native force0(Ljava/io/FileDescriptor;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native lock0(Ljava/io/FileDescriptor;ZJJZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native preClose0(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static preCloseImpl(Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->isSocket$()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p0}, Lsun/nio/ch/FileDispatcherImpl;->preClose0(Ljava/io/FileDescriptor;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static native pread0(Ljava/io/FileDescriptor;JIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native pwrite0(Ljava/io/FileDescriptor;JIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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

.method static native release0(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native size0(Ljava/io/FileDescriptor;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native truncate0(Ljava/io/FileDescriptor;J)I
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->close0(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method duplicateForMapping(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .locals 1

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    return-object v0
.end method

.method force(Ljava/io/FileDescriptor;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    invoke-static {p1, p2}, Lsun/nio/ch/FileDispatcherImpl;->force0(Ljava/io/FileDescriptor;Z)I

    move-result v0

    return v0
.end method

.method lock(Ljava/io/FileDescriptor;ZJJZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    invoke-static/range {p1 .. p7}, Lsun/nio/ch/FileDispatcherImpl;->lock0(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v0

    return v0
.end method

.method preClose(Ljava/io/FileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->preCloseImpl(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method pread(Ljava/io/FileDescriptor;JIJ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    invoke-static/range {p1 .. p6}, Lsun/nio/ch/FileDispatcherImpl;->pread0(Ljava/io/FileDescriptor;JIJ)I

    move-result v0

    return v0
.end method

.method pwrite(Ljava/io/FileDescriptor;JIJ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    invoke-static/range {p1 .. p6}, Lsun/nio/ch/FileDispatcherImpl;->pwrite0(Ljava/io/FileDescriptor;JIJ)I

    move-result v0

    return v0
.end method

.method read(Ljava/io/FileDescriptor;JI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->read0(Ljava/io/FileDescriptor;JI)I

    move-result v0

    return v0
.end method

.method readv(Ljava/io/FileDescriptor;JI)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->readv0(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method release(Ljava/io/FileDescriptor;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    invoke-static {p1, p2, p3, p4, p5}, Lsun/nio/ch/FileDispatcherImpl;->release0(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method size(Ljava/io/FileDescriptor;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    invoke-static {p1}, Lsun/nio/ch/FileDispatcherImpl;->size0(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method truncate(Ljava/io/FileDescriptor;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    invoke-static {p1, p2, p3}, Lsun/nio/ch/FileDispatcherImpl;->truncate0(Ljava/io/FileDescriptor;J)I

    move-result v0

    return v0
.end method

.method write(Ljava/io/FileDescriptor;JI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->write0(Ljava/io/FileDescriptor;JI)I

    move-result v0

    return v0
.end method

.method writev(Ljava/io/FileDescriptor;JI)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/FileDispatcherImpl;->writev0(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    return-wide v0
.end method
