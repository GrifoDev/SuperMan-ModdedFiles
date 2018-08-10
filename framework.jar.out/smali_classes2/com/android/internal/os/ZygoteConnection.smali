.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_MILLIS:I = 0x3e8

.field private static final MAX_ZYGOTE_ARGC:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I


# instance fields
.field private final abiList:Ljava/lang/String;

.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    :cond_0
    return-void
.end method

.method private static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string/jumbo v2, "Peer is permitted to specify anexplicit invoke-with wrapper command only for debuggableapplications."

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    const/16 v3, 0x3e8

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-ge v1, v3, :cond_1

    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string/jumbo v2, "System UID may not launch process with UID < 1000"

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    :cond_3
    return-void
.end method

.method private handleAbiListQuery()Z
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Zygote"

    const-string/jumbo v3, "Error writing to command socket"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x1

    return v2
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/Zygote$MethodAndArgsCaller;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    sget v2, Landroid/system/OsConstants;->STDIN_FILENO:I

    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    sget v2, Landroid/system/OsConstants;->STDOUT_FILENO:I

    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    sget v2, Landroid/system/OsConstants;->STDERR_FILENO:I

    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v7, p2, v0

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    :cond_2
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Error reopening stdio"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_2
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    .locals 10

    const/4 v7, 0x0

    if-lez p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    :cond_0
    if-eqz p2, :cond_1

    array-length v8, p2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v1, p2, v6

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    if-eqz p3, :cond_3

    if-lez p1, :cond_3

    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-lez v2, :cond_3

    move v4, v2

    :goto_2
    if-lez v4, :cond_2

    if-eq v4, p1, :cond_2

    invoke-static {v4}, Landroid/os/Process;->getParentPid(I)I

    move-result v4

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v6, "Zygote"

    const-string/jumbo v8, "Error reading pid from wrapped process, child may have died"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    throw v6

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_2
    if-lez v4, :cond_4

    const-string/jumbo v6, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Wrapped process has pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    const/4 v5, 0x1

    :cond_3
    :goto_4
    :try_start_5
    iget-object v6, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v6, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v6, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    return v7

    :cond_4
    const-string/jumbo v6, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " innerPid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    move-exception v0

    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Error writing to command socket"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x1

    return v6
.end method

.method private handlePreload()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->isPreloadComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->preload()V

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "Error writing to command socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method private static logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string/jumbo v0, "Zygote"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private readArgumentList()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    return-object v6

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v5, 0x400

    if-le v0, v5, :cond_1

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "max arg count exceeded"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v1

    const-string/jumbo v5, "Zygote"

    const-string/jumbo v6, "invalid Zygote wire format: non-int at argc"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "invalid wire format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    aget-object v5, v3, v2

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "truncated request"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private setChildPgid(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v1}, Landroid/net/Credentials;->getPid()I

    move-result v1

    invoke-static {v1}, Landroid/system/Os;->getpgid(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method closeSocket()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getSocketOutputStream()Ljava/io/DataOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method protected handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Zyogte does not support package preloading"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isPreloadComplete()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete()Z

    move-result v0

    return v0
.end method

.method protected preload()V
    .locals 0

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->lazyPreload()V

    return-void
.end method

.method runOnce(Lcom/android/internal/os/ZygoteServer;)Z
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/Zygote$MethodAndArgsCaller;
        }
    .end annotation

    const/16 v29, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    if-nez v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    const/4 v6, 0x1

    return v6

    :catch_0
    move-exception v25

    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IOException on command socket "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    const/4 v6, 0x1

    return v6

    :cond_0
    const/16 v28, 0x0

    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    array-length v6, v0

    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    new-instance v28, Ljava/io/PrintStream;

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x2

    aget-object v7, v22, v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    :cond_1
    const/16 v31, -0x1

    const/16 v21, 0x0

    const/16 v33, 0x0

    :try_start_1
    new-instance v30, Lcom/android/internal/os/ZygoteConnection$Arguments;

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    move-object/from16 v0, v30

    iget-boolean v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    if-eqz v6, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handleAbiListQuery()Z

    move-result v6

    return v6

    :cond_2
    move-object/from16 v0, v30

    iget-boolean v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadDefault:Z

    if-eqz v6, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handlePreload()Z

    move-result v6

    return v6

    :cond_3
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    if-eqz v6, :cond_4

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageLibs:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageCacheKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/os/ZygoteConnection;->handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    return v6

    :cond_4
    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    :cond_5
    new-instance v6, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v30

    iget-wide v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", effective=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v30

    iget-wide v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_2 .. :try_end_2} :catch_6

    :catch_1
    move-exception v23

    move-object/from16 v29, v30

    :goto_0
    const-string/jumbo v6, "Exception creating pipe"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-static {v0, v6, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-nez v31, :cond_b

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    invoke-static/range {v33 .. v33}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x1

    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static/range {v33 .. v33}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return v6

    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, v30

    invoke-static {v0, v6}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, v30

    invoke-static {v0, v6}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    invoke-static/range {v30 .. v30}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    invoke-static/range {v30 .. v30}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    const/4 v10, 0x0

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v6, :cond_8

    sget v6, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v6}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v32

    const/4 v6, 0x1

    aget-object v21, v32, v6

    const/4 v6, 0x0

    aget-object v33, v32, v6

    sget v6, Landroid/system/OsConstants;->F_SETFD:I

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v6, v7}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v17, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v6

    const/4 v7, 0x0

    aput v6, v17, v7

    invoke-virtual/range {v33 .. v33}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v6

    const/4 v7, 0x1

    aput v6, v17, v7

    :cond_8
    const/4 v6, -0x1

    const/4 v7, -0x1

    filled-new-array {v6, v7}, [I

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v27

    if-eqz v27, :cond_9

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v6

    const/4 v7, 0x0

    aput v6, v16, v7

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->getServerSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v27

    if-eqz v27, :cond_a

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v6

    const/4 v7, 0x1

    aput v6, v16, v7

    :cond_a
    const/16 v27, 0x0

    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    move-object/from16 v0, v30

    iget v7, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    move-object/from16 v0, v30

    iget-object v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    move-object/from16 v0, v30

    iget v9, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    move-object/from16 v0, v30

    iget v11, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    move-object/from16 v0, v30

    iget-object v12, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    move-object/from16 v0, v30

    iget v13, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->category:I

    move-object/from16 v0, v30

    iget v14, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->accessInfo:I

    move-object/from16 v0, v30

    iget-object v15, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v6 .. v19}, Lcom/android/internal/os/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;IILjava/lang/String;[I[ILjava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_4 .. :try_end_4} :catch_6

    move-result v31

    move-object/from16 v29, v30

    goto/16 :goto_1

    :catch_2
    move-exception v24

    :goto_2
    const-string/jumbo v6, "Zygote security policy prevents request: "

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-static {v0, v6, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_3
    move-exception v26

    :goto_3
    const-string/jumbo v6, "Invalid zygote arguments"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v6, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_b
    :try_start_5
    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v22

    move-object/from16 v3, v33

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v6

    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static/range {v33 .. v33}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return v6

    :catchall_0
    move-exception v6

    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static/range {v33 .. v33}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v6

    :catch_4
    move-exception v23

    goto/16 :goto_0

    :catch_5
    move-exception v26

    move-object/from16 v29, v30

    goto :goto_3

    :catch_6
    move-exception v24

    move-object/from16 v29, v30

    goto :goto_2
.end method
