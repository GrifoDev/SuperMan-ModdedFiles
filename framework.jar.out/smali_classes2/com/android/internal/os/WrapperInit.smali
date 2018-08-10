.class public Lcom/android/internal/os/WrapperInit;
.super Ljava/lang/Object;
.source "WrapperInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "/system/bin/app_process64"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " /system/bin --application"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo v2, " \'--nice-name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v2, " com.android.internal.os.WrapperInit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1, p5}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/WrapperInit;->preserveCapabilities()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, "/system/bin/app_process32"

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12

    const/4 v7, 0x0

    :try_start_0
    aget-object v7, p0, v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v7, 0x1

    aget-object v7, p0, v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lcom/android/internal/os/Zygote$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v3, :cond_0

    :try_start_1
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/os/Zygote$MethodAndArgsCaller; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    :try_start_2
    new-instance v7, Landroid/util/BootTimingsTraceLog;

    const-string/jumbo v8, "WrapperInitTiming"

    const-wide/16 v10, 0x4000

    invoke-direct {v7, v8, v10, v11}, Landroid/util/BootTimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v7}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/BootTimingsTraceLog;)V

    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    new-array v5, v7, [Ljava/lang/String;

    array-length v7, v5

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {p0, v8, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v5}, Lcom/android/internal/os/WrapperInit;->wrapperInit(I[Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v7, "AndroidRuntime"

    const-string/jumbo v8, "Could not write pid of wrapped process to Zygote pipe."

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/os/Zygote$MethodAndArgsCaller; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/android/internal/os/Zygote$MethodAndArgsCaller;->run()V

    goto :goto_1
.end method

.method private static preserveCapabilities()V
    .locals 16

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v14, Landroid/system/StructCapUserHeader;

    sget v1, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    invoke-direct {v14, v1, v5}, Landroid/system/StructCapUserHeader;-><init>(II)V

    :try_start_0
    invoke-static {v14}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    aget-object v1, v10, v5

    iget v1, v1, Landroid/system/StructCapUserData;->permitted:I

    aget-object v2, v10, v5

    iget v2, v2, Landroid/system/StructCapUserData;->inheritable:I

    if-ne v1, v2, :cond_0

    aget-object v1, v10, v6

    iget v1, v1, Landroid/system/StructCapUserData;->permitted:I

    aget-object v2, v10, v6

    iget v2, v2, Landroid/system/StructCapUserData;->inheritable:I

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Landroid/system/StructCapUserData;

    aget-object v2, v10, v5

    iget v2, v2, Landroid/system/StructCapUserData;->effective:I

    aget-object v3, v10, v5

    iget v3, v3, Landroid/system/StructCapUserData;->permitted:I

    aget-object v4, v10, v5

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v1, v2, v3, v4}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v1, v10, v5

    new-instance v1, Landroid/system/StructCapUserData;

    aget-object v2, v10, v6

    iget v2, v2, Landroid/system/StructCapUserData;->effective:I

    aget-object v3, v10, v6

    iget v3, v3, Landroid/system/StructCapUserData;->permitted:I

    aget-object v4, v10, v6

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v1, v2, v3, v4}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v1, v10, v6

    :try_start_1
    invoke-static {v14, v10}, Landroid/system/Os;->capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    const/4 v15, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v15, v1, :cond_3

    invoke-static {v15}, Landroid/system/OsConstants;->CAP_TO_INDEX(I)I

    move-result v11

    invoke-static {v15}, Landroid/system/OsConstants;->CAP_TO_MASK(I)I

    move-result v0

    aget-object v1, v10, v11

    iget v1, v1, Landroid/system/StructCapUserData;->inheritable:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    :try_start_2
    sget v1, Landroid/system/OsConstants;->PR_CAP_AMBIENT:I

    sget v2, Landroid/system/OsConstants;->PR_CAP_AMBIENT_RAISE:I

    int-to-long v2, v2

    int-to-long v4, v15

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :catch_0
    move-exception v12

    const-string/jumbo v1, "AndroidRuntime"

    const-string/jumbo v2, "RuntimeInit: Failed capget"

    invoke-static {v1, v2, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v12

    const-string/jumbo v1, "AndroidRuntime"

    const-string/jumbo v2, "RuntimeInit: Failed capset"

    invoke-static {v1, v2, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception v13

    const-string/jumbo v1, "AndroidRuntime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RuntimeInit: Failed to raise ambient capability "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static wrapperInit(I[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/Zygote$MethodAndArgsCaller;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-le v2, v5, :cond_0

    aget-object v2, p1, v4

    const-string/jumbo v3, "-cp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2, p0}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ldalvik/system/PathClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    new-array v1, v2, [Ljava/lang/String;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    invoke-static {p1, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method
