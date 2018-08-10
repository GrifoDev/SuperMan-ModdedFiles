.class public Lcom/android/server/EnterprisePartitionManager;
.super Ljava/lang/Object;
.source "EnterprisePartitionManager.java"

# interfaces
.implements Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EnterprisePartitionManager$EpmMigrationCmd;,
        Lcom/android/server/EnterprisePartitionManager$EpmResponseCode;,
        Lcom/android/server/EnterprisePartitionManager$Request;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CopyFlagExitOneError:I = 0x8

.field public static final CopyFlagForce:I = 0x1

.field public static final CopyFlagRecursive:I = 0x2

.field public static final CopyFlagRemoveSource:I = 0x4

.field public static final CopyFlagRenameWithNumber:I = 0x20

.field private static final DLP_NOTIFY_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final ENODEV:I = 0x13

.field public static final ENOENT:I = 0x2

.field private static final EPM_SOCKET_NAME:Ljava/lang/String; = "epm"

.field private static final EPM_SUB_CMD_CALCULATE_PKG_DIR:Ljava/lang/String; = "calculate_pkg_dir"

.field private static final EPM_SUB_CMD_CLEAR_PKG_DATA_DIR:Ljava/lang/String; = "clear_pkg_data_dir"

.field private static final EPM_SUB_CMD_CREATE_CHAMBER:Ljava/lang/String; = "create_chamber"

.field private static final EPM_SUB_CMD_CREATE_ENC_DIR:Ljava/lang/String; = "create_enc_dir"

.field private static final EPM_SUB_CMD_REMOVE_CHAMBER:Ljava/lang/String; = "remove_chamber"

.field private static final EPM_SUB_CMD_REMOVE_ENC_DIR:Ljava/lang/String; = "remove_enc_dir"

.field static final EPM_TAG:Ljava/lang/String; = "EnterprisePartitionManager"

.field public static PARTITON_TYPE_INTERNAL_SDCARD:I = 0x0

.field public static PARTITON_TYPE_INTERNAL_SDCARD_DEFAULT:I = 0x0

.field public static PARTITON_TYPE_INTERNAL_SDCARD_READ:I = 0x0

.field public static PARTITON_TYPE_INTERNAL_SDCARD_WRITE:I = 0x0

.field public static PARTITON_TYPE_NON_KNOX:I = 0x0

.field public static PARTITON_TYPE_PRIVATE_DATA:I = 0x0

.field public static PARTITON_TYPE_SECURE_FS_DATA:I = 0x0

.field public static PARTITON_TYPE_SECURE_FS_SDCARD:I = 0x0

.field public static final PartitionInserted:I = 0x276

.field public static final PartitionRemoved:I = 0x277

.field public static final TYPE_KNOX_CONTAINER_CE:I = 0x1

.field public static final TYPE_KNOX_CONTAINER_CE_NO_REMOUNT:I = 0x4

.field public static final TYPE_KNOX_CONTAINER_DE:I = 0x3

.field public static final TYPE_SECURE_FILE_SYSTEM:I = 0x2

.field public static final UnsolicitedDlpEvents:I = 0x262

.field public static final UnsolicitedShowToast:I = 0x259

.field private static final isKnoxBuildEnabled:Z

.field private static mInstallLock:Ljava/lang/Object;

.field private static final mKnoxInfo:Landroid/os/Bundle;

.field private static final mKnoxVersion:Ljava/lang/String;

.field private static mPackageTasker:Lcom/android/server/pm/Installer;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/server/EnterprisePartitionManager;


# instance fields
.field private mConnector:Lcom/sec/knox/container/util/DaemonConnector;

.field private mReady:Z

.field private mSessionIdDstPath:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/16 v0, 0x65

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_PRIVATE_DATA:I

    const/16 v0, 0x66

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD:I

    const/16 v0, 0x67

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_NON_KNOX:I

    const/16 v0, 0x68

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    const/16 v0, 0x69

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    const/16 v0, 0x6a

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD_DEFAULT:I

    const/16 v0, 0x6b

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD_READ:I

    const/16 v0, 0x6c

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD_WRITE:I

    sput-object v1, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->mKnoxInfo:Landroid/os/Bundle;

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "v00"

    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    sput-object v1, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/EnterprisePartitionManager;->mReady:Z

    iput-object v1, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    sget-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/EnterprisePartitionManager;->createConnector()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Knox is not supported on this device.."

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/EnterprisePartitionManager;->mConnector:Lcom/sec/knox/container/util/DaemonConnector;

    goto :goto_0
.end method

.method private addToAuditLog(IIIILjava/lang/String;)V
    .locals 12

    const-string/jumbo v9, "NATIVE_DLP"

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/dlp/XattrUtils;->getXattrUtilInstance()Lcom/samsung/android/knox/dlp/XattrUtils;

    move-result-object v1

    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    invoke-virtual {v8, p3}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", opCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", inode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", filePath"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DLP_EPMD : addToAuditLog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    const-string/jumbo v2, "NATIVE_DLP"

    move-object/from16 v3, p5

    move v4, p3

    move v6, p2

    move v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/knox/dlp/XattrUtils;->addToAuditLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SecurityException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "EnterprisePartitionManager"

    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v5
.end method

.method private command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/EnterprisePartitionManager;->mConnector:Lcom/sec/knox/container/util/DaemonConnector;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/EnterprisePartitionManager;->mConnector:Lcom/sec/knox/container/util/DaemonConnector;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/util/DaemonConnector;->execute(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/knox/container/util/DaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to send command"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/util/DaemonConnectorException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->logE(Ljava/lang/String;)V

    return-object v4
.end method

.method private createConnector()V
    .locals 7

    const-string/jumbo v0, "createConnector() for socket epm"

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector;

    const-string/jumbo v2, "epm"

    const-string/jumbo v4, "EnterprisePartitionManager"

    const/16 v3, 0x1f4

    const/16 v5, 0xa0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/knox/container/util/DaemonConnector;-><init>(Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->mConnector:Lcom/sec/knox/container/util/DaemonConnector;

    new-instance v6, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->mConnector:Lcom/sec/knox/container/util/DaemonConnector;

    const-string/jumbo v1, "EnterprisePartitionManager"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;
    .locals 1

    sput-object p0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/EnterprisePartitionManager;

    invoke-direct {v0}, Lcom/android/server/EnterprisePartitionManager;-><init>()V

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    :cond_0
    const-string/jumbo v0, "getInstance"

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    return-object v0
.end method

.method public static isEPMSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    return v0
.end method

.method private isFailed(Lcom/sec/knox/container/util/DaemonEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v0

    const/16 v1, 0x119

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isOnGoing(Lcom/sec/knox/container/util/DaemonEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "EnterprisePartitionManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "EnterprisePartitionManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private rescanSdcard(Landroid/content/Context;Ljava/io/File;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private scanDir(Ljava/lang/String;J)Lcom/sec/knox/container/util/DaemonEvent;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "scan_dir"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    return-object v1
.end method

.method public static setInstaller(Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz v0, :cond_0

    sput-object p0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    sput-object p1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    goto :goto_0
.end method


# virtual methods
.method public calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v6, "calculatePkgDir"

    invoke-static {v6}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    if-eqz p4, :cond_0

    array-length v6, p4

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    :cond_0
    return-object v9

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    array-length v6, p4

    new-array v4, v6, [J

    new-instance v1, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v6, "handle_enc_pkg"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-direct {v1, v6, v7}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v6, "calculate_pkg_dir"

    invoke-virtual {v1, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v1, p2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    array-length v6, p4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    const/4 v3, 0x0

    :goto_0
    array-length v6, p4

    if-ge v3, v6, :cond_2

    aget-object v6, p4, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/EnterprisePartitionManager;->isFailed(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lcom/sec/knox/container/util/DaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    :goto_1
    array-length v6, p4

    if-ge v3, v6, :cond_3

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public cancelCopyChunks(J)V
    .locals 5

    const-string/jumbo v2, "cancelCopyChunks"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v0, p1, p2}, Lcom/android/server/pm/Installer;->copyKnoxCancel(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public changePassword(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v2, "changePassword"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "change_password"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p3}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public changePermissionMigration(Ljava/lang/String;III)I
    .locals 4

    const-string/jumbo v2, "changePermissionMigration"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v2, :cond_0

    const/16 v2, -0x13

    return v2

    :cond_0
    const/4 v1, -0x1

    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/pm/Installer;->changeKnoxFilePermission(Ljava/lang/String;III)I
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit v3

    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public changePrivateModePassword(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "privatemode_change_password"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p3}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v6, "clearPkgDataDirs"

    invoke-static {v6}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    if-eqz p4, :cond_0

    array-length v6, p4

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    :cond_0
    return v8

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    array-length v6, p4

    new-array v4, v6, [J

    new-instance v1, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v6, "handle_enc_pkg"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-direct {v1, v6, v7}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v6, "clear_pkg_data_dir"

    invoke-virtual {v1, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v1, p2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    array-length v6, p4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    const/4 v3, 0x0

    :goto_0
    array-length v6, p4

    if-ge v3, v6, :cond_2

    aget-object v6, p4, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v6

    return v6
.end method

.method public copy(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6

    const-string/jumbo v0, "copy"

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public copy(Ljava/lang/String;ILjava/lang/String;II)I
    .locals 9

    const/4 v4, -0x2

    const/16 v2, -0x13

    const-string/jumbo v0, "copy"

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v7, -0x1

    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v4

    :cond_2
    invoke-static {p3, p4}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v4

    :cond_4
    if-lez p2, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    return v2

    :cond_5
    if-lez p4, :cond_6

    invoke-virtual {p0, p4}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    return v2

    :cond_6
    sget-object v8, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    const/4 v7, 0x0

    :goto_0
    monitor-exit v8

    return v7

    :cond_7
    const/4 v7, -0x1

    goto :goto_0

    :catch_0
    move-exception v6

    const/4 v7, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public copyChunks(Ljava/lang/String;ILjava/lang/String;IJIJZ)I
    .locals 18

    const-string/jumbo v2, "copyChunks"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v2, :cond_0

    const/16 v2, -0x13

    return v2

    :cond_0
    const/4 v15, -0x1

    const/16 v7, 0x20

    invoke-static/range {p1 .. p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, -0x2

    return v2

    :cond_2
    invoke-static/range {p3 .. p4}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, -0x2

    return v2

    :cond_4
    if-lez p2, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const/16 v2, -0x13

    return v2

    :cond_5
    if-lez p4, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    const/16 v2, -0x13

    return v2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz p10, :cond_8

    const/16 v7, 0x24

    :cond_8
    sget-object v17, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v17

    :try_start_0
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move/from16 v0, p7

    int-to-long v10, v0

    move/from16 v4, p2

    move/from16 v6, p4

    move-wide/from16 v8, p5

    move-wide/from16 v12, p8

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/pm/Installer;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    const/16 v2, 0xc9

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    const/4 v15, 0x0

    :goto_0
    monitor-exit v17

    return v15

    :cond_9
    const/16 v2, 0xc8

    move/from16 v0, v16

    if-ne v0, v2, :cond_a

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x0

    goto :goto_0

    :cond_a
    move/from16 v15, v16

    goto :goto_0

    :catch_0
    move-exception v14

    const/4 v15, -0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v17

    throw v2
.end method

.method public createChamber(II)Z
    .locals 4

    const-string/jumbo v2, "createChamber"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "secure_fs"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "create_chamber"

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public createEncPkgDir(ILjava/lang/String;)Z
    .locals 4

    const-string/jumbo v2, "createEncPkgDir"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "secure_fs"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "create_enc_dir"

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public createPartition(II)Z
    .locals 4

    const-string/jumbo v2, "createPartition"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "create_partition"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .locals 6

    const-string/jumbo v3, "deleteFile"

    invoke-static {v3}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string/jumbo v3, "EnterprisePartitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "path translation failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    :cond_2
    sget-object v4, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Installer;->deleteKnoxFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    :goto_0
    monitor-exit v4

    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 14

    const-string/jumbo v10, "getFileInfo"

    invoke-static {v10}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v10, :cond_0

    if-nez v5, :cond_1

    :cond_0
    const/4 v8, -0x2

    const-string/jumbo v10, "result"

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v9, 0x0

    sget-object v11, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget-object v10, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v10, v5}, Lcom/android/server/pm/Installer;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v9

    const/4 v10, 0x0

    aget-wide v12, v9, v10
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v8, v12

    :goto_0
    monitor-exit v11

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v9, :cond_2

    if-nez v8, :cond_2

    const/4 v10, 0x1

    aget-wide v6, v9, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    const/4 v10, 0x2

    aget-wide v2, v9, v10

    const/4 v10, 0x3

    aget-wide v10, v9, v10

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    const/4 v4, 0x1

    :cond_2
    const-string/jumbo v10, "result"

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "last_modified_date"

    invoke-virtual {v0, v10, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v10, "file_size"

    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v10, "is_dir"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :catch_0
    move-exception v1

    const/4 v8, -0x1

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const-string/jumbo v7, "getFiles"

    invoke-static {v7}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v3, 0x0

    sget-object v7, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v7, :cond_0

    return-object v6

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    return-object v6

    :cond_2
    sget-object v7, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v8, v2, v4, v5, v1}, Lcom/android/server/pm/Installer;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    :goto_0
    monitor-exit v7

    if-eqz v3, :cond_3

    check-cast v1, Ljava/util/ArrayList;

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_3
    move-object v1, v6

    goto :goto_1
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .locals 10

    const/4 v5, 0x0

    const-string/jumbo v4, "isFileExist"

    invoke-static {v4}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v2, 0x0

    sget-object v4, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v4, :cond_0

    return v5

    :cond_0
    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string/jumbo v4, "EnterprisePartitionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "path translation failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    :cond_2
    sget-object v5, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v1}, Lcom/android/server/pm/Installer;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v6, v3, v4
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    const/4 v2, 0x1

    :goto_0
    monitor-exit v5

    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isMounted(I)Z
    .locals 4

    const-string/jumbo v2, "isMounted"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "is_mounted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public isReady()Z
    .locals 1

    const-string/jumbo v0, "isReady"

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/EnterprisePartitionManager;->mReady:Z

    return v0
.end method

.method public migrateSdpDb(ILjava/lang/String;)Z
    .locals 4

    const-string/jumbo v2, "migration"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v1, 0x0

    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/pm/Installer;->migrateSdpDb(Ljava/lang/String;I)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit v3

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "InstallerException occurred while DB migration..."

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public migration(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/4 v5, 0x0

    const-string/jumbo v4, "migration"

    invoke-static {v4}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v0, p4

    new-instance v1, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v4, "migration"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v1, v4, v6}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v1, p2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v1, p3}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    if-lez v0, :cond_0

    array-length v6, p4

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, p4, v4

    invoke-virtual {v1, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method public mount(ILjava/lang/String;ZI)Z
    .locals 5

    const/4 v2, 0x0

    const-string/jumbo v3, "mount"

    invoke-static {v3}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v3, "mount"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mountPersonalPage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "mount_privatemode"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "0000"

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public mountPrivateMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "mount_privatemode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p3}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p4}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public move(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 6

    const-string/jumbo v0, "move"

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/16 v5, 0x24

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/EnterprisePartitionManager;->move(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public move(Ljava/lang/String;ILjava/lang/String;II)I
    .locals 9

    const/4 v4, -0x2

    const/16 v2, -0x13

    const-string/jumbo v0, "move"

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v7, -0x1

    or-int/lit8 p5, p5, 0x4

    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v4

    :cond_2
    invoke-static {p3, p4}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v4

    :cond_4
    if-lez p2, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    return v2

    :cond_5
    if-lez p4, :cond_6

    invoke-virtual {p0, p4}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    return v2

    :cond_6
    sget-object v8, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    const/4 v7, 0x0

    :goto_0
    monitor-exit v8

    return v7

    :cond_7
    const/4 v7, -0x1

    goto :goto_0

    :catch_0
    move-exception v6

    const/4 v7, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public onDaemonConnected()V
    .locals 1

    const-string/jumbo v0, "onDaemonConnected"

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v0, "onDaemonConnected() for socket epm"

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/EnterprisePartitionManager;->mReady:Z

    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 15

    const-string/jumbo v1, "onEvent"

    invoke-static {v1}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v12, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent >> code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " raw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p3

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v13, p3, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEvent cooked["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    return v1

    :sswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_2

    const-string/jumbo v1, "msg = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move-object/from16 v0, p3

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v13, p3, v1

    const-string/jumbo v3, " "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UnsolicitedShowToast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x5

    aget-object v1, p3, v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x6

    :goto_3
    move-object/from16 v0, p3

    array-length v1, v0

    if-ge v12, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p3, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x3

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x4

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/EnterprisePartitionManager;->addToAuditLog(IIIILjava/lang/String;)V

    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_4

    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_5

    :cond_4
    if-eqz v6, :cond_5

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DLP_EnterprisePartitionManager:UnsolicitedDlpEvents:Remove event found for path["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], userId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/dlp/XattrUtils;->getXattrUtilInstance()Lcom/samsung/android/knox/dlp/XattrUtils;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/samsung/android/knox/dlp/XattrUtils;->checkAndGetSdcardPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DLP_EnterprisePartitionManager:app path ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v10, v2}, Lcom/android/server/EnterprisePartitionManager;->rescanSdcard(Landroid/content/Context;Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DLP_EnterprisePartitionManager:Exception Occurred in UnsolicitedDlpEvents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EnterprisePartitionManager;->logE(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v1, "DLP_EnterprisePartitionManager:non remove event or invalid file path"

    invoke-static {v1}, Lcom/android/server/EnterprisePartitionManager;->logE(Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x259 -> :sswitch_0
        0x262 -> :sswitch_1
    .end sparse-switch
.end method

.method public preMount()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "premount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public removeChamber(II)Z
    .locals 4

    const-string/jumbo v2, "removeChamber"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "secure_fs"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "remove_chamber"

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public removeEncPkgDir(ILjava/lang/String;)Z
    .locals 4

    const-string/jumbo v2, "removeEncPkgDir"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "secure_fs"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "remove_enc_dir"

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public removePartition(II)Z
    .locals 4

    const-string/jumbo v2, "removePartition"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "remove_partition"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public resetPartition(I)Z
    .locals 4

    const-string/jumbo v2, "resetPartition"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "reset_partition"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public varargs sendDLPCommand(II[Ljava/lang/Object;)Z
    .locals 6

    const-string/jumbo v3, "sendDLPCommand"

    invoke-static {v3}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string/jumbo v3, "EnterprisePartitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDLPCommand called with cmdType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " number of arguments = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v3, "dlp_notify"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    aget-object v3, p3, v2

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v3

    return v3
.end method

.method public syncFS(II)Z
    .locals 4

    const-string/jumbo v2, "syncFS"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "sync_pkg_dir"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public unmount(II)Z
    .locals 4

    const-string/jumbo v2, "unmount"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "unmount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public unmountOldContainer(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unmountPersonalPage(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "unmount_privatemode"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public unmountPrivateMode(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "unmount_privatemode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method

.method public verifyPassword(ILjava/lang/String;)Z
    .locals 4

    const-string/jumbo v2, "verifyPassword"

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$Command;

    const-string/jumbo v2, "verify_password"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/sec/knox/container/util/DaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    invoke-direct {p0, v0}, Lcom/android/server/EnterprisePartitionManager;->command(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EnterprisePartitionManager;->isSuccess(Lcom/sec/knox/container/util/DaemonEvent;)Z

    move-result v2

    return v2
.end method
