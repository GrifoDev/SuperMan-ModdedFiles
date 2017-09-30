.class public Landroid/os/Process;
.super Ljava/lang/Object;


# static fields
.field public static final ANDROID_SHARED_MEDIA:Ljava/lang/String; = "com.android.process.media"

.field public static final BLUETOOTH_GID:I = 0x7d0

.field public static final FIRST_APPLICATION_UID:I = 0x2710

.field public static final GOOGLE_SHARED_APP_CONTENT:Ljava/lang/String; = "com.google.process.content"

.field public static final LAST_APPLICATION_UID:I = 0x1869f

.field public static final LOG_UID:I = 0x3ef

.field public static final MEDIA_RW_GID:I = 0x3ff

.field public static final MEDIA_UID:I = 0x3f5

.field public static final NFC_UID:I = 0x403

.field public static final PHONE_UID:I = 0x3e9

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field public static final SDCARD_RW_GID:I = 0x3f7

.field public static final SHELL_UID:I = 0x7d0

.field public static final SIGNAL_KILL:I = 0x9

.field public static final SIGNAL_QUIT:I = 0x3

.field public static final SIGNAL_USR1:I = 0xa

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final THREAD_GROUP_BG_NONINTERACTIVE:I = 0x1

.field public static final THREAD_GROUP_DEFAULT:I = 0x0

.field public static final THREAD_GROUP_FG_BOOST:I = 0x2

.field public static final THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final WIFI_UID:I = 0x3f2

.field static a:Landroid/net/LocalSocket;

.field static b:Ljava/io/DataInputStream;

.field static c:Ljava/io/BufferedWriter;

.field static d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;II[III[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 7

    const/4 v0, 0x0

    const-class v2, Landroid/os/Process;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "--runtime-init"

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--setuid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--setgid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p5, 0x10

    if-eqz v1, :cond_0

    const-string v1, "--enable-jni-logging"

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_1

    const-string v1, "--enable-safemode"

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_2

    const-string v1, "--enable-debugger"

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_3

    const-string v1, "--enable-checkjni"

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_4

    const-string v1, "--enable-assert"

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--target-sdk-version="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_7

    array-length v1, p4

    if-lez v1, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--setgroups="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_6

    if-eqz v1, :cond_5

    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    aget v6, p4, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--nice-name="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p7, :cond_9

    array-length v1, p7

    :goto_1
    if-ge v0, v1, :cond_9

    aget-object v4, p7, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    invoke-static {v3}, Landroid/os/Process;->a(Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .locals 4

    invoke-static {}, Landroid/os/Process;->a()V

    :try_start_0
    sget-object v0, Landroid/os/Process;->c:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Process;->c:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    const-string v1, "embedded newlines not allowed"

    invoke-direct {v0, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Landroid/os/Process;->a:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Process;->a:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    const/4 v1, 0x0

    sput-object v1, Landroid/os/Process;->a:Landroid/net/LocalSocket;

    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v1, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_2
    sget-object v3, Landroid/os/Process;->c:Ljava/io/BufferedWriter;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Process;->c:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/os/Process;->c:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    new-instance v0, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v0}, Landroid/os/Process$ProcessStartResult;-><init>()V

    sget-object v1, Landroid/os/Process;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget v1, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    if-gez v1, :cond_3

    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    const-string v1, "fork() failed"

    invoke-direct {v0, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v1, Landroid/os/Process;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "Process"

    const-string v3, "I/O exception on routine close"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static a()V
    .locals 6

    const/4 v1, 0x0

    sget-boolean v0, Landroid/os/Process;->d:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    sget-object v2, Landroid/os/Process;->a:Landroid/net/LocalSocket;

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    :try_start_0
    const-string v2, "Zygote"

    const-string v3, "Zygote not up yet, sleeping..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_1
    :try_start_1
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    sput-object v2, Landroid/os/Process;->a:Landroid/net/LocalSocket;

    sget-object v2, Landroid/os/Process;->a:Landroid/net/LocalSocket;

    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v4, "zygote"

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    new-instance v2, Ljava/io/DataInputStream;

    sget-object v3, Landroid/os/Process;->a:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v2, Landroid/os/Process;->b:Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Landroid/os/Process;->a:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    sput-object v2, Landroid/os/Process;->c:Ljava/io/BufferedWriter;

    const-string v2, "Zygote"

    const-string v3, "Process: zygote socket opened"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-boolean v2, Landroid/os/Process;->d:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    sget-object v0, Landroid/os/Process;->a:Landroid/net/LocalSocket;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Process;->d:Z

    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    const-string v1, "connect failed"

    invoke-direct {v0, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0xa

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v2, Landroid/os/Process;->a:Landroid/net/LocalSocket;

    if-eqz v2, :cond_3

    :try_start_2
    sget-object v2, Landroid/os/Process;->a:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    const/4 v2, 0x0

    sput-object v2, Landroid/os/Process;->a:Landroid/net/LocalSocket;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "Process"

    const-string v4, "I/O exception on close after exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    return-void

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public static getElapsedCpuTime()J
    .locals 3

    const-string v0, "android.os.Process#getElapsedCpuTime()J"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeL(Ljava/lang/String;ZLjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeMemory()J
    .locals 3

    const-string v0, "android.os.Process#getFreeMemory()J"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeL(Ljava/lang/String;ZLjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGidForName(Ljava/lang/String;)I
    .locals 3

    const-string v0, "android.os.Process#getGidForName(Ljava/lang/String;)I"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeI(Ljava/lang/String;ZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getParentPid(I)I
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "PPid:"

    aput-object v1, v0, v4

    new-array v1, v2, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v0, v1, v4

    long-to-int v0, v0

    return v0
.end method

.method public static getPids(Ljava/lang/String;[I)[I
    .locals 3

    const-string v0, "android.os.Process#getPids(Ljava/lang/String;[I)[I"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeA(Ljava/lang/String;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static getPss(I)J
    .locals 3

    const-string v0, "android.os.Process#getPss(I)J"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeL(Ljava/lang/String;ZLjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getThreadPriority(I)I
    .locals 3

    const-string v0, "android.os.Process#getThreadPriority(I)I"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeI(Ljava/lang/String;ZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getUidForName(Ljava/lang/String;)I
    .locals 3

    const-string v0, "android.os.Process#getUidForName(Ljava/lang/String;)I"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeI(Ljava/lang/String;ZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getUidForPid(I)I
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "Uid:"

    aput-object v1, v0, v4

    new-array v1, v2, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v0, v1, v4

    long-to-int v0, v0

    return v0
.end method

.method public static killProcess(I)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    return-void
.end method

.method public static killProcessQuiet(I)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    return-void
.end method

.method public static myPid()I
    .locals 3

    const-string v0, "android.os.Process#myPid()I"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeI(Ljava/lang/String;ZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static myTid()I
    .locals 3

    const-string v0, "android.os.Process#myTid()I"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeI(Ljava/lang/String;ZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static myUid()I
    .locals 3

    const-string v0, "android.os.Process#myUid()I"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeI(Ljava/lang/String;ZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "android.os.Process#parseProcLine([BII[I[Ljava/lang/String;[J[F)Z"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeI(Ljava/lang/String;ZLjava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "android.os.Process#readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeI(Ljava/lang/String;ZLjava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 3

    const-string v0, "android.os.Process#readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeV(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public static sendSignal(II)V
    .locals 3

    const-string v0, "android.os.Process#sendSignal(II)V"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeV(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public static sendSignalQuiet(II)V
    .locals 3

    const-string v0, "android.os.Process#sendSignalQuiet(II)V"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeV(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public static setArgV0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "android.os.Process#setArgV0(Ljava/lang/String;)V"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeV(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public static setCanSelfBackground(Z)V
    .locals 3

    const-string v0, "android.os.Process#setCanSelfBackground(Z)V"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeV(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public static setGid(I)I
    .locals 3

    const-string v0, "android.os.Process#setGid(I)I"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeI(Ljava/lang/String;ZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static setOomAdj(II)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "android.os.Process#setOomAdj(II)Z"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeI(Ljava/lang/String;ZLjava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setProcessGroup(II)V
    .locals 3

    const-string v0, "android.os.Process#setProcessGroup(II)V"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeV(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public static setThreadGroup(II)V
    .locals 3

    const-string v0, "android.os.Process#setThreadGroup(II)V"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeV(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public static setThreadPriority(I)V
    .locals 3

    const-string v0, "android.os.Process#setThreadPriority(I)V"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeV(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public static setThreadPriority(II)V
    .locals 3

    const-string v0, "android.os.Process#setThreadPriority(II)V"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeV(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public static setUid(I)I
    .locals 3

    const-string v0, "android.os.Process#setUid(I)I"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/layoutlib/create/OverrideMethod;->invokeI(Ljava/lang/String;ZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;II[III[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 3

    :try_start_0
    invoke-static/range {p0 .. p7}, Landroid/os/Process;->a(Ljava/lang/String;Ljava/lang/String;II[III[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Process"

    const-string v2, "Starting VM process through Zygote failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Starting VM process through Zygote failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static supportsProcesses()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
