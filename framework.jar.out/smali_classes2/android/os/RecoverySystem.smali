.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field public static final BLOCK_MAP_FILE:Ljava/io/File;

.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final LAST_CACHE_SUDDEN_RESET_LOG_PATH:Ljava/lang/String; = "/data/log/recovery_last_sudden_reset.log"

.field private static final LAST_INSTALL_FILE:Ljava/io/File;

.field private static final LAST_KMSG_RECOVERY_LOG_NAME:Ljava/lang/String; = "last_kmsg"

.field private static final LAST_LOG_MAX_CNT:I = 0xa

.field private static final LAST_PREFIX:Ljava/lang/String; = "last_"

.field private static final LAST_RECOVERY_LOG_NAME:Ljava/lang/String; = "last_log"

.field private static final LOG_FILE:Ljava/io/File;

.field private static final LOG_FILE_MAX_LENGTH:I = 0x10000

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static final RECOVERY_DIR:Ljava/io/File;

.field private static final SUDDEN_RESET_LOG_MAX_CNT:I = 0x400

.field private static final SUDDEN_RESET_LOG_NAME:Ljava/lang/String; = "recovery_sudden_reset.log."

.field private static final SUDDEN_RESET_LOG_PREFIX:Ljava/lang/String; = "recovery_sudden_reset"

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"

.field private static final TMP_RECOVERY_LOG_PATH:Ljava/lang/String; = "/efs/recovery/tmp_recovery.log"

.field public static final UNCRYPT_PACKAGE_FILE:Ljava/io/File;

.field public static final UNCRYPT_STATUS_FILE:Ljava/io/File;

.field private static mShutdownIsInProgress:Ljava/lang/Boolean;

.field private static final mShutdownIsInProgressLock:Ljava/lang/Object;

.field private static final sRequestLock:Ljava/lang/Object;


# instance fields
.field private final mService:Landroid/os/IRecoverySystem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "last_install"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/RecoverySystem;->mShutdownIsInProgressLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "block.map"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_status"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    return-void
.end method

.method public constructor <init>(Landroid/os/IRecoverySystem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    return-void
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v13, Landroid/os/RecoverySystem;->mShutdownIsInProgressLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    sget-object v12, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-eqz v12, :cond_0

    monitor-exit v13

    return-void

    :cond_0
    const/4 v12, 0x1

    :try_start_1
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    sput-object v12, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v13

    const/4 v12, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    :goto_0
    if-ge v12, v13, :cond_1

    aget-object v1, p1, v12

    const-string/jumbo v14, "RecoverySystem"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "!@RecoverySystem bootCommand: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_1
    sget-object v15, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "!@RecoverySystem"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    array-length v13, v11

    :goto_1
    if-ge v12, v13, :cond_2

    aget-object v10, v11, v12

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v12, "RecoverySystem"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    sget-object v12, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    sget-object v12, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    const/4 v8, 0x3

    :goto_2
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v12, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    const-string/jumbo v13, "rwd"

    invoke-direct {v2, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v12, 0x0

    :try_start_3
    move-object/from16 v0, p1

    array-length v13, v0

    :goto_3
    if-ge v12, v13, :cond_4

    aget-object v1, p1, v12

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v14, "\n"

    invoke-virtual {v2, v14}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    const-string/jumbo v12, "RecoverySystem"

    const-string/jumbo v13, "!@RecoverySystem before fsync syscall!!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/FileDescriptor;->sync()V

    const-string/jumbo v12, "RecoverySystem"

    const-string/jumbo v13, "!@RecoverySystem after fsync syscall!!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    add-int/lit8 v8, v8, -0x1

    sget-object v12, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "RecoverySystem"

    const-string/jumbo v13, "COMMAND_FILE is already exist!!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v12, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_7

    const-string/jumbo v12, "RecoverySystem"

    const-string/jumbo v13, "!@ command file absent, throw exception"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Reboot failed (unable to create command file)"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v12

    monitor-exit v15

    throw v12

    :catchall_2
    move-exception v12

    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw v12

    :cond_6
    const-string/jumbo v12, "RecoverySystem"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Retry_count : %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_5

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v12, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const-string/jumbo v12, "persist.sys.reboot.reason"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "nvrecovery"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string/jumbo v12, "RecoverySystem"

    const-string/jumbo v13, "FactoryTest ->nvrecovery "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "nvrecovery"

    invoke-virtual {v4, v12}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :goto_4
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Reboot failed (no permissions?)"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_8
    const-string/jumbo v12, "download"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string/jumbo v12, "RecoverySystem"

    const-string/jumbo v13, "FactoryTest ->download "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "download"

    invoke-virtual {v4, v12}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const-string/jumbo v12, "RecoverySystem"

    const-string/jumbo v13, "calling pm.systemReboot"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "RecoverySystem"

    const-string/jumbo v13, "!@[reset tracking] RecoverySystem bootCommand write to recovery_cause"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v13, 0x0

    const/4 v6, 0x0

    :try_start_6
    new-instance v7, Ljava/io/FileWriter;

    const-string/jumbo v12, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v7, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    const-string/jumbo v12, "RecoverySystem RecoverySystem bootCommand()"

    invoke-virtual {v7, v12}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v7, :cond_a

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_a
    :goto_5
    if-eqz v13, :cond_b

    :try_start_9
    throw v13
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_0
    move-exception v3

    move-object v6, v7

    :goto_6
    :try_start_a
    const-string/jumbo v12, "RecoverySystem"

    const-string/jumbo v13, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    const-string/jumbo v12, "recovery"

    invoke-virtual {v4, v12}, Landroid/os/PowerManager;->systemReboot(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v13

    goto :goto_5

    :cond_b
    move-object v6, v7

    goto :goto_7

    :catch_2
    move-exception v12

    :goto_8
    :try_start_b
    throw v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v13

    move-object/from16 v17, v13

    move-object v13, v12

    move-object/from16 v12, v17

    :goto_9
    if-eqz v6, :cond_c

    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_c
    :goto_a
    if-eqz v13, :cond_e

    :try_start_d
    throw v13

    :catch_3
    move-exception v3

    goto :goto_6

    :catch_4
    move-exception v14

    if-nez v13, :cond_d

    move-object v13, v14

    goto :goto_a

    :cond_d
    if-eq v13, v14, :cond_c

    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_e
    throw v12
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_4
    move-exception v12

    goto :goto_9

    :catchall_5
    move-exception v12

    move-object v6, v7

    goto :goto_9

    :catch_5
    move-exception v12

    move-object v6, v7

    goto :goto_8
.end method

.method public static cancelScheduledUpdate(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    invoke-direct {v0}, Landroid/os/RecoverySystem;->clearBcb()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "cancel scheduled update failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private clearBcb()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1}, Landroid/os/IRecoverySystem;->clearBcb()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    const/16 v8, 0x1a0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    const-string/jumbo v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "copyFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error close FileChannel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v6

    :try_start_2
    const-string/jumbo v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error chmod recovery logs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v7

    const-string/jumbo v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error close FileChannel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v7

    :try_start_4
    const-string/jumbo v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error copy recovery logs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v7

    const-string/jumbo v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error close FileChannel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_1
    throw v2

    :catch_5
    move-exception v7

    const-string/jumbo v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error close FileChannel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :cond_0

    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    :cond_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    :try_start_0
    const-string/jumbo v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    throw v6

    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    return-object v4
.end method

.method public static handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .locals 24

    sget-object v22, Landroid/os/RecoverySystem;->mShutdownIsInProgressLock:Ljava/lang/Object;

    monitor-enter v22

    :try_start_0
    sget-object v21, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_0

    const-string/jumbo v21, "RecoverySystem"

    const-string/jumbo v23, "!@RecoverySystem handleAftermath disabled, as shutdown in progress"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v21, 0x0

    monitor-exit v22

    return-object v21

    :cond_0
    monitor-exit v22

    const-string/jumbo v21, "RecoverySystem"

    const-string/jumbo v22, "!@RecoverySystem handleAftermath"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :try_start_1
    sget-object v21, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    const-string/jumbo v22, "...\n"

    const/high16 v23, -0x10000

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_1

    invoke-static/range {p0 .. p0}, Landroid/os/RecoverySystem;->parseLastInstallLog(Landroid/content/Context;)V

    :cond_1
    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "last_recovery"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/recovery.log"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "last_kernel"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/recovery_kernel.log"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "last_last_kernel"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/recovery_last_kernel.log"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "last_recovery_contents"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/recovery_contents.list"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "last_history"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/recovery_history.log"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "last_emmc_checksum"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/emmc_checksum.log"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "last_avc_msg_recovery"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/avc_msg_recovery.log"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "last_tzdbg_log_recovery"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/tzdbg_log_recovery.log"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "last_qsee_log_recovery"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/qsee_log_recovery.log"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "last_meminfo"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/meminfo"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "block.map"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/block.map"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "uncrypt.log"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/uncrypt.log"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v23, "last_meminfo"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/meminfo"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    sget-object v21, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_2

    sget-object v21, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    const/4 v5, 0x0

    :try_start_2
    sget-object v21, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_2

    const-string/jumbo v21, "/data"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    sget-object v21, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    move-result v21

    if-eqz v21, :cond_3

    const-string/jumbo v21, "RecoverySystem"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Deleted: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    new-instance v21, Ljava/io/File;

    const-string/jumbo v22, "/efs/recovery/tmp_recovery.log"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/log/recovery_last_sudden_reset.log"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v22}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    const-string/jumbo v21, "RecoverySystem"

    const-string/jumbo v22, "copy sudden_reset_log to /data/log/"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_3
    const/16 v21, 0x400

    move/from16 v0, v21

    if-ge v6, v0, :cond_4

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "recovery_sudden_reset.log."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v17, Ljava/io/File;

    sget-object v21, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_4

    new-instance v15, Ljava/io/File;

    const-string/jumbo v21, "/data/log/"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catchall_0
    move-exception v21

    monitor-exit v22

    throw v21

    :catch_0
    move-exception v4

    const-string/jumbo v21, "RecoverySystem"

    const-string/jumbo v22, "Error reading recovery log"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v21, "RecoverySystem"

    const-string/jumbo v22, "No recovery log file"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v4

    const-string/jumbo v21, "RecoverySystem"

    const-string/jumbo v22, "Error reading uncrypt file"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v21, "RecoverySystem"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Can\'t delete: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v21, "RecoverySystem"

    const-string/jumbo v22, "copy last_log to /data/log/"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_4
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v6, v0, :cond_7

    if-nez v6, :cond_6

    const-string/jumbo v19, "last_log"

    :goto_5
    new-instance v8, Ljava/io/File;

    sget-object v21, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_5

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "recovery_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/io/File;

    const-string/jumbo v21, "/data/log/"

    move-object/from16 v0, v21

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v13}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "last_log."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_5

    :cond_7
    const-string/jumbo v21, "RecoverySystem"

    const-string/jumbo v22, "copy last_kmsg to /data/log/"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_6
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v6, v0, :cond_a

    if-nez v6, :cond_9

    const-string/jumbo v18, "last_kmsg"

    :goto_7
    new-instance v7, Ljava/io/File;

    sget-object v21, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_8

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "recovery_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/io/File;

    const-string/jumbo v21, "/data/log/"

    move-object/from16 v0, v21

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v11}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "last_kmsg."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_7

    :cond_a
    sget-object v21, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    :goto_8
    if-eqz v10, :cond_f

    array-length v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_f

    aget-object v21, v10, v6

    const-string/jumbo v22, "last_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    :cond_b
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_c
    if-eqz v16, :cond_d

    aget-object v21, v10, v6

    sget-object v22, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    :cond_d
    if-eqz v16, :cond_e

    aget-object v21, v10, v6

    sget-object v22, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    :cond_e
    new-instance v21, Ljava/io/File;

    sget-object v22, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v23, v10, v6

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    goto :goto_9

    :cond_f
    return-object v9
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;Z)V

    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v23, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v23

    :try_start_0
    sget-object v20, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    sget-object v20, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v20, "RecoverySystem"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "!!! REBOOTING TO INSTALL "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " !!!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v20, "_s.zip"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    const-string/jumbo v20, "/data/"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "--update_org_package="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v20, "/data/"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    if-eqz p2, :cond_0

    sget-object v20, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_3

    const-string/jumbo v20, "RecoverySystem"

    const-string/jumbo v21, "Package claimed to have been processed but failed to find the block map file."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Ljava/io/IOException;

    const-string/jumbo v21, "Failed to find block map file"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v20

    monitor-exit v23

    throw v20

    :cond_0
    :try_start_1
    new-instance v18, Ljava/io/FileWriter;

    sget-object v20, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileWriter;->close()V

    sget-object v20, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v20

    if-eqz v20, :cond_1

    sget-object v20, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_2

    :cond_1
    const-string/jumbo v20, "RecoverySystem"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Error setting permission for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v20, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    :cond_3
    const-string/jumbo v7, "@/cache/recovery/block.map"

    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "--update_package="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "--carry_out=open_fota\n"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "--locale="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v16, "--security\n"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "--carry_out=open_fota\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v17, :cond_5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "--security\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-eqz v6, :cond_6

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    const/4 v15, 0x3

    :goto_0
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v20, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    const-string/jumbo v21, "rwd"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v20, "RecoverySystem"

    const-string/jumbo v21, "!@RecoverySystem before fsync syscall!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileDescriptor;->sync()V

    const-string/jumbo v20, "RecoverySystem"

    const-string/jumbo v21, "!@RecoverySystem after fsync syscall!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    add-int/lit8 v15, v15, -0x1

    sget-object v20, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_8

    const-string/jumbo v20, "RecoverySystem"

    const-string/jumbo v21, "COMMAND_FILE is already exist!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v20, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_9

    const-string/jumbo v20, "RecoverySystem"

    const-string/jumbo v21, "!@ command file absent, throw exception"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Ljava/io/IOException;

    const-string/jumbo v21, "Reboot failed (unable to create command file)"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    :catchall_1
    move-exception v20

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileWriter;->close()V

    throw v20

    :catchall_2
    move-exception v20

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    throw v20

    :cond_8
    const-string/jumbo v20, "RecoverySystem"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Retry_count : %d"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_7

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v20, "RecoverySystem"

    const-string/jumbo v21, "!@[reset tracking] installPackage write to recovery_cause"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v21, 0x0

    const/4 v13, 0x0

    :try_start_6
    new-instance v14, Ljava/io/FileWriter;

    const-string/jumbo v20, "/sys/class/sec/sec_debug/recovery_cause"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "RecoverySystem installPackage: "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v14, :cond_a

    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_a
    :goto_1
    if-eqz v21, :cond_c

    :try_start_9
    throw v21
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_0
    move-exception v5

    move-object v13, v14

    :goto_2
    :try_start_a
    const-string/jumbo v20, "RecoverySystem"

    const-string/jumbo v21, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const-string/jumbo v20, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    const-string/jumbo v12, "recovery-update"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string/jumbo v21, "android.software.leanback"

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    const-string/jumbo v20, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getState()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ",quiescent"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_b
    invoke-virtual {v11, v12}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    new-instance v20, Ljava/io/IOException;

    const-string/jumbo v21, "Reboot failed (no permissions?)"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_1
    move-exception v21

    goto :goto_1

    :cond_c
    move-object v13, v14

    goto :goto_3

    :catch_2
    move-exception v20

    :goto_4
    :try_start_b
    throw v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v21

    move-object/from16 v24, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v24

    :goto_5
    if-eqz v13, :cond_d

    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_d
    :goto_6
    if-eqz v21, :cond_f

    :try_start_d
    throw v21

    :catch_3
    move-exception v5

    goto :goto_2

    :catch_4
    move-exception v22

    if-nez v21, :cond_e

    move-object/from16 v21, v22

    goto :goto_6

    :cond_e
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_f
    throw v20
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_4
    move-exception v20

    goto :goto_5

    :catchall_5
    move-exception v20

    move-object v13, v14

    goto :goto_5

    :catch_5
    move-exception v20

    move-object v13, v14

    goto :goto_4
.end method

.method private static parseLastInstallLog(Landroid/content/Context;)V
    .locals 29

    const/16 v25, 0x0

    const/4 v10, 0x0

    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/FileReader;

    sget-object v26, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v12, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v18, -0x1

    const/16 v21, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c

    const/16 v24, 0x3a

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_0

    add-int/lit8 v24, v13, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    add-int/lit8 v24, v13, 0x1

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    :try_start_2
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v16

    const/high16 v4, 0x100000

    :try_start_3
    const-string/jumbo v24, "bytes"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    const-wide/32 v26, 0x100000

    div-long v26, v16, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toIntExact(J)I
    :try_end_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v15

    :goto_1
    :try_start_4
    const-string/jumbo v24, "time"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    move/from16 v22, v15

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v24, "RecoverySystem"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Failed to parse numbers in "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v24

    move-object v10, v11

    :goto_2
    :try_start_5
    throw v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v25

    move-object/from16 v28, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v28

    :goto_3
    if-eqz v10, :cond_1

    :try_start_6
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_1
    :goto_4
    if-eqz v25, :cond_18

    :try_start_7
    throw v25
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v7

    :goto_5
    const-string/jumbo v24, "RecoverySystem"

    const-string/jumbo v25, "Failed to read lines in last_install"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void

    :cond_2
    :try_start_8
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toIntExact(J)I
    :try_end_8
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v15

    goto :goto_1

    :catch_3
    move-exception v8

    :try_start_9
    const-string/jumbo v24, "RecoverySystem"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Number overflows in "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_1
    move-exception v24

    move-object v10, v11

    goto :goto_3

    :cond_3
    const-string/jumbo v24, "uncrypt_time"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    move/from16 v23, v15

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v24, "source_build"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    move/from16 v18, v15

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v24, "bytes_written"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v6, v0, :cond_6

    move v6, v15

    goto/16 :goto_0

    :cond_6
    add-int/2addr v6, v15

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v24, "bytes_stashed"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v5, v0, :cond_8

    move v5, v15

    goto/16 :goto_0

    :cond_8
    add-int/2addr v5, v15

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v24, "temperature_start"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    move/from16 v21, v15

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v24, "temperature_end"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    move/from16 v19, v15

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v24, "temperature_max"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    move/from16 v20, v15

    goto/16 :goto_0

    :cond_c
    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    const-string/jumbo v24, "ota_time_total"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_d
    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    const-string/jumbo v24, "ota_uncrypt_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_e
    const/16 v24, -0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    const-string/jumbo v24, "ota_source_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_f
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v6, v0, :cond_10

    const-string/jumbo v24, "ota_written_in_MiBs"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_10
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v5, v0, :cond_11

    const-string/jumbo v24, "ota_stashed_in_MiBs"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_11
    const/16 v24, -0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    const-string/jumbo v24, "ota_temperature_start"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_12
    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_13

    const-string/jumbo v24, "ota_temperature_end"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_13
    const/16 v24, -0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_14

    const-string/jumbo v24, "ota_temperature_max"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_14
    if-eqz v11, :cond_15

    :try_start_a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_15
    :goto_7
    if-eqz v25, :cond_16

    :try_start_b
    throw v25
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v7

    move-object v10, v11

    goto/16 :goto_5

    :catch_5
    move-exception v25

    goto :goto_7

    :cond_16
    move-object v10, v11

    goto/16 :goto_6

    :catch_6
    move-exception v26

    if-nez v25, :cond_17

    move-object/from16 v25, v26

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_1

    :try_start_c
    invoke-virtual/range {v25 .. v26}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_18
    throw v24
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    :catchall_2
    move-exception v24

    goto/16 :goto_3

    :catch_7
    move-exception v24

    goto/16 :goto_2
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "/data/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, "recovery"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RecoverySystem;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    move-object v1, p3

    :goto_0
    new-instance v2, Landroid/os/RecoverySystem$2;

    invoke-direct {v2, v1, p2}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V

    :cond_1
    invoke-direct {v3, v0, v2}, Landroid/os/RecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "process package failed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v4, "compatibility.zip"

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    throw v5

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v4

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    throw v5

    :catch_1
    move-exception v5

    goto :goto_1

    :cond_4
    return v4

    :catch_2
    move-exception v4

    :goto_2
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_3
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_4
    if-eqz v5, :cond_7

    throw v5

    :catch_3
    move-exception v6

    if-nez v5, :cond_6

    move-object v5, v6

    goto :goto_4

    :cond_6
    if-eq v5, v6, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    throw v4

    :catchall_1
    move-exception v4

    goto :goto_3

    :catchall_2
    move-exception v4

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v4

    move-object v2, v3

    goto :goto_2
.end method

.method public static rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "--prompt_and_wipe_data"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, p1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static rebootWipeAb(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--wipe_package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "--wipe_ab"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "--wipe_cache"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p3, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v1, "RecoverySystem"

    const-string/jumbo v3, "rebootWipeUserData++"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v17

    if-nez p3, :cond_1

    if-eqz v17, :cond_1

    const-string/jumbo v1, "no_factory_reset"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/sec/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string/jumbo v5, "RecoverySystem"

    const-string/jumbo v6, "Wiping data (factory reset) is not allowed for this user."

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Wiping data is not allowed for this user."

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v11, Landroid/os/ConditionVariable;

    invoke-direct {v11}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v13, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RecoverySystem"

    invoke-direct {v13, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rebootWipeUserData: run handler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v13, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "failed to get handler thread"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    const-string/jumbo v1, "RecoverySystem"

    const-string/jumbo v3, "rebootWipeUserData: sendOrderedBroadcastAsUser"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x11000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v4, "android.permission.MASTER_CLEAR"

    new-instance v5, Landroid/os/RecoverySystem$3;

    invoke-direct {v5, v11}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    new-instance v6, Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v1, "RecoverySystem"

    const-string/jumbo v3, "rebootWipeUserData: wait intent to complete"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/os/ConditionVariable;->block()V

    const-string/jumbo v1, "RecoverySystem"

    const-string/jumbo v3, "rebootWipeUserData: continue.."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v13, 0x0

    const/16 v18, 0x0

    if-eqz p1, :cond_3

    const-string/jumbo v18, "--shutdown_after"

    :cond_3
    const/16 v16, 0x0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--locale="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v12, ""

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\n--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_5
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string/jumbo v7, "RecoverySystem"

    const-string/jumbo v8, "Starting user data Wipe "

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--wipe_data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "!@[RecoverySystem] COMMAND String with Extra Command -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v18, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v16, v1, v3

    const/4 v3, 0x3

    aput-object v15, v1, v3

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v14

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string/jumbo v7, "RecoverySystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to wipe user data (factory reset). "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    throw v14
.end method

.method private static recursiveDelete(Ljava/io/File;)V
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    new-instance v0, Ljava/io/File;

    aget-object v3, v1, v2

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Deleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x3f

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scheduleUpdateOnBoot(Landroid/content/Context;Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "_s.zip"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v8, "/data/"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v2, "@/cache/recovery/block.map"

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "--update_package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "--carry_out=open_fota\n"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "--locale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "--security\n"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "--security\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string/jumbo v8, "recovery"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RecoverySystem;

    invoke-direct {v5, v1}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "schedule update on boot failed"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    return-void
.end method

.method private setupBcb(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, p1}, Landroid/os/IRecoverySystem;->setupBcb(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, p1, p2}, Landroid/os/IRecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v3

    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    :cond_0
    const-wide/16 v28, 0x6

    sub-long v28, v3, v28

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x6

    new-array v0, v2, [B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v2, 0x2

    aget-byte v2, v16, v2

    const/4 v9, -0x1

    if-ne v2, v9, :cond_1

    const/4 v2, 0x3

    aget-byte v2, v16, v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_2

    :cond_1
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "no signature in file (no footer)"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    throw v2

    :cond_2
    const/4 v2, 0x4

    :try_start_1
    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v9, 0x5

    aget-byte v9, v16, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int v5, v2, v9

    const/4 v2, 0x0

    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v9, 0x1

    aget-byte v9, v16, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int v21, v2, v9

    add-int/lit8 v2, v5, 0x16

    new-array v15, v2, [B

    add-int/lit8 v2, v5, 0x16

    int-to-long v0, v2

    move-wide/from16 v28, v0

    sub-long v28, v3, v28

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v8, v15}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v2, 0x0

    aget-byte v2, v15, v2

    const/16 v9, 0x50

    if-ne v2, v9, :cond_3

    const/4 v2, 0x1

    aget-byte v2, v15, v2

    const/16 v9, 0x4b

    if-eq v2, v9, :cond_4

    :cond_3
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "no signature in file (bad footer)"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v2, 0x2

    aget-byte v2, v15, v2

    const/4 v9, 0x5

    if-ne v2, v9, :cond_3

    const/4 v2, 0x3

    aget-byte v2, v15, v2

    const/4 v9, 0x6

    if-ne v2, v9, :cond_3

    const/16 v17, 0x4

    :goto_0
    array-length v2, v15

    add-int/lit8 v2, v2, -0x3

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    aget-byte v2, v15, v17

    const/16 v9, 0x50

    if-ne v2, v9, :cond_5

    add-int/lit8 v2, v17, 0x1

    aget-byte v2, v15, v2

    const/16 v9, 0x4b

    if-ne v2, v9, :cond_5

    add-int/lit8 v2, v17, 0x2

    aget-byte v2, v15, v2

    const/4 v9, 0x5

    if-ne v2, v9, :cond_5

    add-int/lit8 v2, v17, 0x3

    aget-byte v2, v15, v2

    const/4 v9, 0x6

    if-ne v2, v9, :cond_5

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "EOCD marker found after start of EOCD"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_6
    new-instance v10, Lsun/security/pkcs/PKCS7;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v9, v5, 0x16

    sub-int v9, v9, v21

    move/from16 v0, v21

    invoke-direct {v2, v15, v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v10, v2}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v10}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v14

    if-eqz v14, :cond_7

    array-length v2, v14

    if-nez v2, :cond_8

    :cond_7
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "signature contains no certificates"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    const/4 v2, 0x0

    aget-object v13, v14, v2

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v20

    invoke-virtual {v10}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    move-result-object v23

    if-eqz v23, :cond_9

    move-object/from16 v0, v23

    array-length v2, v0

    if-nez v2, :cond_a

    :cond_9
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "signature contains no signedData"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    const/4 v2, 0x0

    aget-object v22, v23, v2

    const/16 v25, 0x0

    if-nez p2, :cond_b

    sget-object p2, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    :cond_b
    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v25, 0x1

    :cond_d
    if-nez v25, :cond_e

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "signature doesn\'t match any trusted key"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v19, p1

    new-instance v2, Landroid/os/RecoverySystem$1;

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Landroid/os/RecoverySystem$1;-><init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v2}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v26

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v18

    if-eqz p1, :cond_f

    const/16 v2, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    :cond_f
    if-eqz v18, :cond_10

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "verification was interrupted"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    if-nez v26, :cond_11

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "signature digest verification failed"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_11
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-static/range {p0 .. p0}, Landroid/os/RecoverySystem;->readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "package compatibility verification failed"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    return-void
.end method

.method public static verifyPackageCompatibility(Ljava/io/File;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_1
    return v2

    :catch_1
    move-exception v2

    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    if-eqz v3, :cond_4

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_3

    :cond_3
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v0, v1

    goto :goto_1
.end method

.method private static verifyPackageCompatibility(Ljava/io/InputStream;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v2, v8

    if-gtz v6, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-gez v6, :cond_1

    :cond_0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid entry size ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") in the compatibility file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    long-to-int v6, v2

    new-array v0, v6, [B

    invoke-static {v5, v0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    new-instance v6, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "no entries found in the compatibility file"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-static {v6}, Landroid/os/VintfObject;->verify([Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    return v6

    :cond_4
    move v6, v7

    goto :goto_1
.end method
