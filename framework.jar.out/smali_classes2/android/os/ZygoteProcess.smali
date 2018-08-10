.class public Landroid/os/ZygoteProcess;
.super Ljava/lang/Object;
.source "ZygoteProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ZygoteProcess$ZygoteState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZygoteProcess"

.field private static final SEINFO_TARGETSDKVERSION_STR:Ljava/lang/String; = ":targetSdkVersion="

.field static final ZYGOTE_RETRY_MILLIS:I = 0x1f4

.field private static agent32ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

.field private static agent64ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mSecondarySocket:Ljava/lang/String;

.field private final mSocket:Ljava/lang/String;

.field private primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

.field private secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;


# direct methods
.method static synthetic -wrap0(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/os/ZygoteProcess;->getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/os/ZygoteProcess;->mSocket:Ljava/lang/String;

    iput-object p2, p0, Landroid/os/ZygoteProcess;->mSecondarySocket:Ljava/lang/String;

    return-void
.end method

.method private static getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v2, "1"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    const-string/jumbo v2, "--query-abi-list"

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v0, v1, [B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method private static openZygoteASLRAgentSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v1, "arm64"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/ZygoteProcess;->agent64ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/ZygoteProcess;->agent64ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "init.svc.zygote_agent64"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "running"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string/jumbo v1, "zygote_agent64"

    invoke-static {v1}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/ZygoteProcess;->agent64ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v1, Landroid/os/ZygoteProcess;->agent64ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/ZygoteProcess;->agent64ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/ZygoteProcess;->agent64ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Enhanced Zygote ASLR"

    const-string/jumbo v2, "Error connecting to zygote socket: zygote_agent64"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v3, Landroid/os/ZygoteProcess;->agent64ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "Enhanced Zygote ASLR"

    const-string/jumbo v2, "zygote_agent64 is not running yet. Rollback using the original one"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    const-string/jumbo v1, "armeabi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroid/os/ZygoteProcess;->agent32ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/ZygoteProcess;->agent32ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string/jumbo v1, "init.svc.zygote_agent32"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "running"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_1
    const-string/jumbo v1, "zygote_agent32"

    invoke-static {v1}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    sput-object v1, Landroid/os/ZygoteProcess;->agent32ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_1
    sget-object v1, Landroid/os/ZygoteProcess;->agent32ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v1, :cond_6

    sget-object v1, Landroid/os/ZygoteProcess;->agent32ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v1, p0}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/os/ZygoteProcess;->agent32ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    return-object v1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "Enhanced Zygote ASLR"

    const-string/jumbo v2, "Error connecting to zygote socket: zygote_agent32"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v3, Landroid/os/ZygoteProcess;->agent32ZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "Enhanced Zygote ASLR"

    const-string/jumbo v2, "zygote_agent32 is not running yet. Rollback using the original one"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_7
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported zygote ABI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    iget-object v1, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "ZygoteProcess lock not held"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/ZygoteProcess;->mSocket:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    iput-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v1, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v2, "Error connecting to primary zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v1, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/os/ZygoteProcess;->mSecondarySocket:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    iput-object v1, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    iget-object v1, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v1, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    return-object v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v2, "Error connecting to secondary zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported zygote ABI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v10, "--runtime-args"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--setuid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--setgid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v10, p6, 0x10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "--enable-jni-logging"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v10, p6, 0x8

    if-eqz v10, :cond_1

    const-string/jumbo v10, "--enable-safemode"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v10, p6, 0x1

    if-eqz v10, :cond_2

    const-string/jumbo v10, "--enable-jdwp"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v10, p6, 0x2

    if-eqz v10, :cond_3

    const-string/jumbo v10, "--enable-checkjni"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v10, p6, 0x20

    if-eqz v10, :cond_4

    const-string/jumbo v10, "--generate-debug-info"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v10, p6, 0x40

    if-eqz v10, :cond_5

    const-string/jumbo v10, "--always-jit"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move/from16 v0, p6

    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_6

    const-string/jumbo v10, "--native-debuggable"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move/from16 v0, p6

    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    const-string/jumbo v10, "--java-debuggable"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit8 v10, p6, 0x4

    if-eqz v10, :cond_8

    const-string/jumbo v10, "--enable-assert"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v10, 0x1

    move/from16 v0, p7

    if-ne v0, v10, :cond_b

    const-string/jumbo v10, "--mount-external-default"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--target-sdk-version="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p5, :cond_e

    move-object/from16 v0, p5

    array-length v10, v0

    if-lez v10, :cond_e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "--setgroups="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    array-length v9, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_d

    if-eqz v6, :cond_a

    const/16 v10, 0x2c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    aget v10, p5, v6

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_b
    const/4 v10, 0x2

    move/from16 v0, p7

    if-ne v0, v10, :cond_c

    const-string/jumbo v10, "--mount-external-read"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_c
    const/4 v10, 0x3

    move/from16 v0, p7

    if-ne v0, v10, :cond_9

    const-string/jumbo v10, "--mount-external-write"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz p2, :cond_f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--nice-name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz p9, :cond_10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--seinfo="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--category="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--accessInfo="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p11

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p13, :cond_11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--instruction-set="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p13

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    if-eqz p14, :cond_12

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "--app-data-dir="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p14

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    if-eqz p15, :cond_13

    const-string/jumbo v10, "--invoke-with"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p16, :cond_14

    const/4 v10, 0x0

    move-object/from16 v0, p16

    array-length v11, v0

    :goto_2
    if-ge v10, v11, :cond_14

    aget-object v1, p16, v10

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_14
    sget-boolean v10, Lcom/android/internal/os/Zygote;->isEnhancedZygoteASLREnabled:Z

    if-eqz v10, :cond_1b

    const/4 v5, 0x1

    const/16 v10, 0x3e8

    move/from16 v0, p3

    if-eq v0, v10, :cond_15

    invoke-static/range {p3 .. p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v10

    if-eqz v10, :cond_17

    :cond_15
    const/4 v5, 0x0

    :cond_16
    :goto_3
    if-eqz v5, :cond_1b

    iget-object v11, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-static/range {p12 .. p12}, Landroid/os/ZygoteProcess;->openZygoteASLRAgentSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-static {v4, v2}, Landroid/os/ZygoteProcess;->zygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    monitor-exit v11

    return-object v10

    :cond_17
    sget-object v11, Lcom/android/internal/os/Zygote;->SEINFO_REQUIRE_ORIGINAL_FORK:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v12, v11

    :goto_4
    if-ge v10, v12, :cond_16

    aget-object v3, v11, v10

    const-string/jumbo v13, ":targetSdkVersion="

    move-object/from16 v0, p9

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_18

    const-string/jumbo v13, ":targetSdkVersion="

    move-object/from16 v0, p9

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    const/4 v5, 0x0

    goto :goto_3

    :cond_18
    move-object/from16 v8, p9

    goto :goto_5

    :cond_19
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_1a
    monitor-exit v11

    :cond_1b
    iget-object v11, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    move-object/from16 v0, p12

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v10

    invoke-static {v10, v2}, Landroid/os/ZygoteProcess;->zygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    monitor-exit v11

    return-object v10

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method private static zygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ZygoteProcess$ZygoteState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_0

    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v8, "embedded newlines not allowed"

    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v7, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    iget-object v3, p0, Landroid/os/ZygoteProcess$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    new-instance v4, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v4}, Landroid/os/Process$ProcessStartResult;-><init>()V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, v4, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    iget v7, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    if-gez v7, :cond_3

    new-instance v7, Landroid/os/ZygoteStartFailedEx;

    const-string/jumbo v8, "fork() failed"

    invoke-direct {v7, v8}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-object v4
.end method


# virtual methods
.method public establishZygoteConnectionForAbi(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    sget-boolean v1, Lcom/android/internal/os/Zygote;->isEnhancedZygoteASLREnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {p1}, Landroid/os/ZygoteProcess;->openZygoteASLRAgentSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_4
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to connect to zygote for abi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1

    throw v2
    :try_end_5
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public preloadDefault(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    const-string/jumbo v4, "--preload-default"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public preloadPackageForAbi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p4}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    const-string/jumbo v4, "4"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    const-string/jumbo v4, "--preload-package"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    iget-object v3, v0, Landroid/os/ZygoteProcess$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 3

    :try_start_0
    invoke-direct/range {p0 .. p16}, Landroid/os/ZygoteProcess;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ZygoteProcess"

    const-string/jumbo v2, "Starting VM process through Zygote failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Starting VM process through Zygote failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
