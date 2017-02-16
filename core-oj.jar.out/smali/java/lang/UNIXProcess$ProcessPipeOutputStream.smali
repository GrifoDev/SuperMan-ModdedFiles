.class Ljava/lang/UNIXProcess$ProcessPipeOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "UNIXProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/UNIXProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessPipeOutputStream"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "fd"    # I

    .prologue
    .line 314
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {p1}, Ljava/lang/UNIXProcess;->newFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    invoke-direct {p0, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 313
    return-void
.end method


# virtual methods
.method declared-synchronized processExited()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v1, p0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;->out:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .local v1, "out":Ljava/io/OutputStream;
    if-eqz v1, :cond_0

    .line 322
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :goto_0
    :try_start_2
    sget-object v2, Ljava/lang/ProcessBuilder$NullOutputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullOutputStream;

    iput-object v2, p0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;->out:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    .line 318
    return-void

    .line 323
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0

    .end local v0    # "ignored":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
