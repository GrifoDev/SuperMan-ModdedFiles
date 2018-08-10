.class public Lcom/android/server/SdpLogService;
.super Landroid/os/ISdpLogService$Stub;
.source "SdpLogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpLogService$SdpLogHandler;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:J = 0x1L

.field private static final DELAY:I = 0xbb8

.field private static final FILE_EOL:B = 0xat

.field private static final FILE_OFFSET:J = 0x0L

.field private static final FILE_PATH:Ljava/lang/String; = "/data/log/sdp_log"

.field private static final MAX_FILE_LENGTH:J = 0x300000L

.field private static final MAX_HEADER_LENGTH:J = 0x11L

.field private static final MAX_Q_SIZE:I = 0x12c

.field private static final MSG_SAVE_TO_FILE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x0

.field private static final Q_LOCK:Ljava/lang/Object;

.field private static final SERVICE_NAME:Ljava/lang/String; = "SdpLogService"

.field private static final TAG:Ljava/lang/String; = "SdpLogService"

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyy-MM-dd HH:mm:ss.SSS"

.field private static final sLogQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private final mContext:Landroid/content/Context;

.field private mIsReady:Z

.field private mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/SdpLogService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SdpLogService;->markTheBeginning()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/SdpLogService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SdpLogService;->saveToFile()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SdpLogService;->Q_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/ISdpLogService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/SdpLogService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SdpLogService;->mIsReady:Z

    return-void
.end method

.method private checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SdpLogService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo v6, "SdpLogService"

    invoke-static {v1, v4, v5, v6, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Security Exception Occurred while pid["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "] with uid["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "] trying to access methodName ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "] in ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "SdpLogService"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "] service"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7
.end method

.method private convertTime(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SdpLogService.d"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SdpLogService.e"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private enqPayloadLocked(Ljava/lang/String;)V
    .locals 6

    sget-object v2, Lcom/android/server/SdpLogService;->Q_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SdpLogService;->overloadProtection()V

    sget-object v1, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/SdpLogService$SdpLogHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/SdpLogService$SdpLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    iget v3, v0, Landroid/os/Message;->what:I

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/SdpLogService$SdpLogHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/SdpLogService;->convertTime(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDeviceVersion()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x5f

    const-string/jumbo v1, "ro.build.PDA"

    const-string/jumbo v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private markTheBeginning()V
    .locals 4

    const-string/jumbo v0, "System Ready!"

    invoke-static {v0}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "%s,D,Mark the beginning of SDP log service! [Version : %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/SdpLogService;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/android/server/SdpLogService;->getDeviceVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SdpLogService;->enqPayloadLocked(Ljava/lang/String;)V

    return-void
.end method

.method private overloadProtection()V
    .locals 2

    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "Overload Observed..."

    invoke-static {v0}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_0
    return-void
.end method

.method private saveToFile()V
    .locals 28

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v4, 0x0

    const/16 v21, 0x1

    const/16 v18, 0x0

    if-eqz v21, :cond_2

    :try_start_0
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string/jumbo v22, "/data/log/sdp_log"

    const-string/jumbo v23, "rwd"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v13, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v22, 0x0

    :try_start_1
    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    const-wide/16 v22, 0x11

    cmp-long v22, v14, v22

    if-gtz v22, :cond_6

    const/16 v18, 0x1

    const-string/jumbo v22, "saveToFile() - File is too small"

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v18, :cond_10

    const-wide/16 v22, 0x11

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const-wide/16 v22, 0x1

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    const-wide/16 v22, 0x11

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v16

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    const-wide/16 v22, 0x11

    cmp-long v22, v16, v22

    if-ltz v22, :cond_1

    const-wide/32 v22, 0x300000

    cmp-long v22, v16, v22

    if-lez v22, :cond_9

    :cond_1
    const/16 v21, 0x0

    const-string/jumbo v22, "saveToFile() - Couldn\'t restore the file"

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v13

    :cond_2
    :goto_1
    if-eqz v21, :cond_b

    :try_start_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "saveToFile() - FP : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", Version : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v23, Lcom/android/server/SdpLogService;->Q_LOCK:Ljava/lang/Object;

    monitor-enter v23
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "saveToFile() - QS : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface/range {v24 .. v24}, Ljava/util/Queue;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    :cond_3
    :goto_2
    sget-object v22, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_a

    sget-object v22, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v6, v7

    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v24

    int-to-long v0, v6

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    const-wide/32 v26, 0x300000

    cmp-long v22, v24, v26

    if-lez v22, :cond_4

    const-wide/16 v24, 0x11

    move-wide/from16 v0, v24

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_4
    invoke-virtual {v12, v7}, Ljava/io/RandomAccessFile;->write([B)V

    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v22

    :try_start_4
    monitor-exit v23

    throw v22
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v9

    :goto_3
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string/jumbo v22, "saveToFile() - Couldn\'t open file"

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v21, 0x0

    if-eqz v12, :cond_5

    :try_start_6
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_5
    :goto_4
    if-eqz v21, :cond_f

    const-string/jumbo v22, "saveToFile() - Done Successfully!!!"

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_6
    const-wide/32 v22, 0x300000

    cmp-long v22, v14, v22

    if-lez v22, :cond_7

    const/16 v18, 0x1

    :try_start_7
    const-string/jumbo v22, "saveToFile() - File length had exceeded limitation"

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v9

    move-object v12, v13

    goto :goto_3

    :cond_7
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v16

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    const-wide/16 v22, 0x11

    cmp-long v22, v16, v22

    if-ltz v22, :cond_8

    const-wide/32 v22, 0x300000

    cmp-long v22, v16, v22

    if-lez v22, :cond_0

    :cond_8
    const/16 v18, 0x1

    const-string/jumbo v22, "saveToFile() - File header had been broken"

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_0

    :catch_2
    move-exception v10

    move-object v12, v13

    :goto_6
    :try_start_8
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v22, "saveToFile() - Couldn\'t modify file..."

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/16 v21, 0x0

    if-eqz v12, :cond_5

    :try_start_9
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    :catch_3
    move-exception v8

    goto :goto_4

    :cond_9
    move-object v12, v13

    goto/16 :goto_1

    :cond_a
    :try_start_a
    monitor-exit v23

    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v16

    const-wide/32 v22, 0x300000

    cmp-long v22, v16, v22

    if-lez v22, :cond_d

    const/16 v21, 0x0

    :cond_b
    :goto_7
    if-eqz v21, :cond_c

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "saveToFile() - FP : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", FL : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    if-eqz v18, :cond_c

    const-string/jumbo v22, "/data/log/sdp_log"

    const/16 v23, 0x1a0

    const/16 v24, 0x3e8

    const/16 v25, 0x3ef

    invoke-static/range {v22 .. v25}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "saveToFile() - Set permission : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_c
    if-eqz v12, :cond_5

    :try_start_b
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v8

    goto/16 :goto_4

    :cond_d
    const-wide/16 v22, 0x0

    :try_start_c
    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_7

    :catch_5
    move-exception v10

    goto/16 :goto_6

    :catch_6
    move-exception v11

    :goto_8
    :try_start_d
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v22, "saveToFile() - Unexpected error occurred..."

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/16 v21, 0x0

    if-eqz v12, :cond_5

    :try_start_e
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_4

    :catch_7
    move-exception v8

    goto/16 :goto_4

    :catch_8
    move-exception v8

    goto/16 :goto_4

    :catchall_1
    move-exception v22

    :goto_9
    if-eqz v12, :cond_e

    :try_start_f
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_e
    :goto_a
    throw v22

    :catch_9
    move-exception v8

    goto :goto_a

    :cond_f
    const-string/jumbo v22, "saveToFile() - Failed..."

    invoke-static/range {v22 .. v22}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    :catchall_2
    move-exception v22

    move-object v12, v13

    goto :goto_9

    :catch_a
    move-exception v11

    move-object v12, v13

    goto :goto_8

    :cond_10
    move-object v12, v13

    goto/16 :goto_1
.end method


# virtual methods
.method public enqPayload(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "enqPayload"

    invoke-direct {p0, v0}, Lcom/android/server/SdpLogService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/SdpLogService;->mIsReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SdpLogService;->enqPayloadLocked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 4

    const-string/jumbo v1, "systemReady"

    invoke-direct {p0, v1}, Lcom/android/server/SdpLogService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v1, "SdpLogService"

    const-string/jumbo v2, "SdpLogService ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "SdpLogService"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/SdpLogService;->handlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/server/SdpLogService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/SdpLogService$SdpLogHandler;

    iget-object v2, p0, Lcom/android/server/SdpLogService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/SdpLogService$SdpLogHandler;-><init>(Lcom/android/server/SdpLogService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const-string/jumbo v1, "SdpLogService"

    const-string/jumbo v2, "Spawned sdp log thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SdpLogService"

    const-string/jumbo v2, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SdpLogService$SdpLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpLogService$SdpLogHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/SdpLogService;->mIsReady:Z

    const-string/jumbo v1, "SdpLogService"

    const-string/jumbo v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
