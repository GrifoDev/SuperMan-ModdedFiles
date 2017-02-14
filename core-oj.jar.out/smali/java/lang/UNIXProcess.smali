.class final Ljava/lang/UNIXProcess;
.super Ljava/lang/Process;
.source "UNIXProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/UNIXProcess$1;,
        Ljava/lang/UNIXProcess$ProcessPipeInputStream;,
        Ljava/lang/UNIXProcess$ProcessPipeOutputStream;,
        Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;
    }
.end annotation


# static fields
.field private static final processReaperExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private exitcode:I

.field private hasExited:Z

.field private final pid:I

.field private stderr:Ljava/io/InputStream;

.field private stdin:Ljava/io/OutputStream;

.field private stdout:Ljava/io/InputStream;


# direct methods
.method static synthetic -get0(Ljava/lang/UNIXProcess;)I
    .locals 1

    iget v0, p0, Ljava/lang/UNIXProcess;->pid:I

    return v0
.end method

.method static synthetic -wrap0(Ljava/lang/UNIXProcess;I)I
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/UNIXProcess;->waitForProcessExit(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/UNIXProcess$1;

    invoke-direct {v0}, Ljava/lang/UNIXProcess$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    sput-object v0, Ljava/lang/UNIXProcess;->processReaperExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/lang/UNIXProcess;->initIDs()V

    return-void
.end method

.method constructor <init>([B[BI[BI[B[IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    invoke-direct/range {p0 .. p8}, Ljava/lang/UNIXProcess;->forkAndExec([B[BI[BI[B[IZ)I

    move-result v1

    iput v1, p0, Ljava/lang/UNIXProcess;->pid:I

    :try_start_0
    new-instance v1, Ljava/lang/UNIXProcess$2;

    invoke-direct {v1, p0, p7}, Ljava/lang/UNIXProcess$2;-><init>(Ljava/lang/UNIXProcess;[I)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private static native destroyProcess(I)V
.end method

.method private native forkAndExec([B[BI[BI[B[IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native initIDs()V
.end method

.method static newFileDescriptor(I)Ljava/io/FileDescriptor;
    .locals 1

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    return-object v0
.end method

.method private native waitForProcessExit(I)I
.end method


# virtual methods
.method public destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    if-nez v1, :cond_0

    iget v1, p0, Ljava/lang/UNIXProcess;->pid:I

    invoke-static {v1}, Ljava/lang/UNIXProcess;->destroyProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :try_start_1
    iget-object v1, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    iget-object v1, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    iget-object v1, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized exitValue()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "process hasn\'t exited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Ljava/lang/UNIXProcess;->exitcode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    return-object v0
.end method

.method initStreams([I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    aget v0, p1, v1

    if-ne v0, v2, :cond_0

    sget-object v0, Ljava/lang/ProcessBuilder$NullOutputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullOutputStream;

    :goto_0
    iput-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    aget v0, p1, v3

    if-ne v0, v2, :cond_1

    sget-object v0, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    :goto_1
    iput-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    aget v0, p1, v4

    if-ne v0, v2, :cond_2

    sget-object v0, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    :goto_2
    iput-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    sget-object v0, Ljava/lang/UNIXProcess;->processReaperExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Ljava/lang/UNIXProcess$3;

    invoke-direct {v1, p0}, Ljava/lang/UNIXProcess$3;-><init>(Ljava/lang/UNIXProcess;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;

    aget v1, p1, v1

    invoke-direct {v0, v1}, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    aget v1, p1, v3

    invoke-direct {v0, v1}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;-><init>(I)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    aget v1, p1, v4

    invoke-direct {v0, v1}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;-><init>(I)V

    goto :goto_2
.end method

.method processExited(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Ljava/lang/UNIXProcess;->exitcode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    invoke-virtual {p0}, Ljava/lang/UNIXProcess;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    check-cast v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    invoke-virtual {v0}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->processExited()V

    :cond_0
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    check-cast v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    invoke-virtual {v0}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->processExited()V

    :cond_1
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    check-cast v0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;

    invoke-virtual {v0}, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;->processExited()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Process[pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljava/lang/UNIXProcess;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, " ,hasExited=true, exitcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/lang/UNIXProcess;->exitcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ", hasExited=false]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public declared-synchronized waitFor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/UNIXProcess;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Ljava/lang/UNIXProcess;->exitcode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method
