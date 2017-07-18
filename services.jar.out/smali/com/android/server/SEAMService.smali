.class public Lcom/android/server/SEAMService;
.super Lcom/samsung/android/knox/seams/ISEAMS$Stub;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SEAMService$BrHandler;,
        Lcom/android/server/SEAMService$SpdHandler;
    }
.end annotation


# static fields
.field private static final AASA_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/aasa/"

.field private static final BBCAgent:Ljava/lang/String; = "com.samsung.android.bbc.bbcagent"

.field public static final BBC_CONTAINER:I = 0x3

.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CONTEXT_FILE:Ljava/lang/String; = "file_contexts"

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final DRS_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.drs.date"

.field private static final ERROR:I = -0x1

.field private static final FBE_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.type"

.field private static final HEX:[C

.field private static final KNOX_CON_END_NUM:I = 0xc2

.field private static final KNOX_CON_START_NUM:I = 0x64

.field private static final MACPERMISSIONS_FILE:Ljava/lang/String; = "mac_permissions.xml"

.field private static MAC_POLICY_FILE:Ljava/io/File; = null

.field private static MAX_BYTE_ARRAY_SIZE:I = 0x0

.field private static final MDM_POLICY_UPDATE:Ljava/lang/String; = "persist.sys.mdm.auto"

.field private static final MDM_SEANDROID_DUMPSTATE_PROPERTY:Ljava/lang/String; = "persist.security.mdm.SElogs"

.field public static final MYCONTAINER:I = 0x2

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field private static final NeedBadge:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERSONA_LOWER_BOUNDARY:I = 0x64

.field private static final PERSONA_UPPER_BOUNDARY:I = 0xc7

.field private static final POLICY_FILE:Ljava/lang/String; = "sepolicy"

.field private static final PROPERTY_FILE:Ljava/lang/String; = "property_contexts"

.field private static final SEAMS_OLD_PERMS:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_SEAMS"

.field private static final SEAMS_PERMS:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SEAMS"

.field private static final SEAMS_Version:Ljava/lang/String; = "2.1"

.field private static final SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/"

.field private static final SECONTEXT_FILE:Ljava/lang/String; = "seapp_contexts"

.field private static final SECURED_APPTYPE:I = 0x1

.field public static SELF_PID:I = 0x0

.field private static final SPD_COMPLETE_INTENT:Ljava/lang/String; = "com.samsung.spdsuccess"

.field private static final SPD_KNOX_PERMISSION:Ljava/lang/String; = "com.sec.android.permission.KNOX"

.field private static final SPD_SBARELOAD_PERMISSION:Ljava/lang/String; = "com.samsung.spd.SBA_RELOAD"

.field private static final SPD_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/spota/"

.field private static final SPOTA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.spota"

.field private static final TAG:Ljava/lang/String; = "SEAMService"

.field private static final TRUSTED_APPTYPE:I = 0x2

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field private static bootCompleted:Z = false

.field private static final containerStrings:[Ljava/lang/String;

.field private static instance:[Lcom/android/server/SEAMSContainer; = null

.field private static mBootReceiver:Landroid/content/BroadcastReceiver; = null

.field private static mSKLog:Lcom/android/server/SKLogger; = null

.field private static mSPDCompleteReceiver:Landroid/content/BroadcastReceiver; = null

.field private static final mSetPolicy:Ljava/lang/Object;

.field private static policyDataBytes:[B = null

.field private static policyDataBytesPosition:I = 0x0

.field private static policyFileSize:I = 0x0

.field private static policyHash:Ljava/lang/String; = null

.field private static final supportedContainers:I = 0x5


# instance fields
.field private GOOD_SECURED_APPTYPE:I

.field private GOOD_TRUSTED_APPTYPE:I

.field PERMS:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field private mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/android/server/SEAMService$BrHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field final mLock:Ljava/lang/Object;

.field private mPMS:Lcom/android/server/pm/PackageManagerService;

.field mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field private final sHandler:Lcom/android/server/SEAMService$SpdHandler;

.field private final sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/server/SEAMService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/server/SKLogger;
    .locals 1

    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/SEAMService;->bootCompleted:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    sput v3, Lcom/android/server/SEAMService;->SELF_PID:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/SEAMSContainer;

    sput-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "good"

    aput-object v1, v0, v3

    const-string/jumbo v1, "fixmo"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "container"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "mycontainer"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/SEAMService;->containerStrings:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/SEAMService;->HEX:[C

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/SEAMService;->NeedBadge:Ljava/util/HashMap;

    sput-object v4, Lcom/android/server/SEAMService;->policyDataBytes:[B

    sput v5, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    sput-object v4, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    sput v5, Lcom/android/server/SEAMService;->policyFileSize:I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/security/mac_permissions.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SEAMService;->MAC_POLICY_FILE:Ljava/io/File;

    const/high16 v0, 0x3200000

    sput v0, Lcom/android/server/SEAMService;->MAX_BYTE_ARRAY_SIZE:I

    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    sput-object v4, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sput-object v4, Lcom/android/server/SEAMService;->mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    sput-boolean v3, Lcom/android/server/SEAMService;->bootCompleted:Z

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;-><init>()V

    iput-object v8, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    new-array v7, v11, [Ljava/lang/Object;

    iput-object v7, p0, Lcom/android/server/SEAMService;->mLock:Ljava/lang/Object;

    iput-object v8, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    iput v10, p0, Lcom/android/server/SEAMService;->GOOD_SECURED_APPTYPE:I

    iput v9, p0, Lcom/android/server/SEAMService;->GOOD_TRUSTED_APPTYPE:I

    iput-object p1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v8, "SEAMService"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v7, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Lcom/android/server/SEAMService$BrHandler;

    iget-object v8, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/SEAMService$BrHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/SEAMService;->mHandler:Lcom/android/server/SEAMService$BrHandler;

    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v8, "SPD"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/SEAMService;->sHandlerThread:Landroid/os/HandlerThread;

    iget-object v7, p0, Lcom/android/server/SEAMService;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Lcom/android/server/SEAMService$SpdHandler;

    iget-object v8, p0, Lcom/android/server/SEAMService;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/SEAMService$SpdHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/SEAMService;->sHandler:Lcom/android/server/SEAMService$SpdHandler;

    invoke-direct {p0}, Lcom/android/server/SEAMService;->registerBootReceiver()V

    const-string/jumbo v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageManagerService;

    iput-object v7, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/SEAMService;->registerSPDCompleteReceiver()V

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v7, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v5

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    sput v7, Lcom/android/server/SEAMService;->SELF_PID:I

    new-instance v7, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v7, Ljava/util/ArrayList;

    new-array v8, v9, [Ljava/lang/String;

    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_SEAMS"

    aput-object v9, v8, v11

    const-string/jumbo v9, "com.sec.enterprise.knox.permission.KNOX_SEAMS"

    aput-object v9, v8, v10

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/SEAMService;->checkFingerprintAndRelabelIfNeeded()I

    move-result v3

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/data/security/spota/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "/data/security/aasa/"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_1
    if-ne v3, v10, :cond_3

    const-string/jumbo v7, "ro.crypto.state"

    const-string/jumbo v8, "none"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "unencrypted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "vold.decrypt"

    const-string/jumbo v8, "none"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "trigger_restart_framework"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "vold.decrypt"

    const-string/jumbo v8, "none"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "trigger_reset_main"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "ro.crypto.type"

    const-string/jumbo v8, "none"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const-string/jumbo v7, "ro.build.date"

    const-string/jumbo v8, "NONE"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v7, "NONE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v7, "persist.sys.drs.date"

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Issue with SPD directory"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkFingerprintAndRelabelIfNeeded()I
    .locals 13

    const-string/jumbo v9, "ro.build.date"

    const-string/jumbo v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "persist.sys.drs.date"

    const-string/jumbo v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/server/SEAMService;->getPkgNamesFromContainer(IZ)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "pkglist is empty or PMS or Persona is null"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v4

    :cond_2
    iget-object v9, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getBbcEnabled()I

    move-result v1

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :try_start_0
    iget-object v9, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const/16 v10, 0x80

    invoke-virtual {v9, v7, v10, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v9, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-virtual {v9, v7, v1, v10}, Lcom/android/server/pm/PackageManagerService;->relabelAppData(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pkgName Relabel error occured :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkSEAMSPermission(IILjava/util/List;Z)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, p2, p1}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x3e8

    if-ne p1, v9, :cond_1

    sget v9, Lcom/android/server/SEAMService;->SELF_PID:I

    if-ne p2, v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    return v9

    :cond_1
    const/16 v9, 0x3e8

    if-ne p1, v9, :cond_2

    const-string/jumbo v9, "com.samsung.android.bbc.bbcagent"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v9, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-interface {v2, v6, v5, v8}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    if-eqz p4, :cond_4

    if-eqz v8, :cond_4

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "checkSEAMSPermission, ownerOnly condition not met for global scope api"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/4 v7, 0x1

    :cond_5
    if-nez v7, :cond_6

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "checkSEAMSPermission, perm denied"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return v7

    :catch_0
    move-exception v1

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "expection in check SEAMS permissions"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v4, 0x1

    if-eqz p3, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SEAMService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    return v4

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SEAMService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    return v4

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkSEAMSPermissionByContext, Exception, return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "checkSEAMSPermissionByContext, false is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :catch_1
    move-exception v1

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkSEAMSPermissionByContext, SecurityException, return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private copyFiles(Ljava/lang/String;[B)Z
    .locals 11

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string/jumbo v6, "/data/security/"

    invoke-direct {v4, v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing OutputStream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "copyFile failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing OutputStream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_2
    :try_start_5
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "File Not Found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing OutputStream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_1
    :goto_4
    throw v6

    :catch_5
    move-exception v1

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error closing OutputStream"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v2, v3

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_7
    move-exception v1

    move-object v2, v3

    goto/16 :goto_1
.end method

.method private encodeBase16([B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-ltz v2, :cond_0

    sget-object v3, Lcom/android/server/SEAMService;->HEX:[C

    aget-byte v4, p1, v1

    mul-int/lit8 v5, v2, 0x4

    shr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V
    .locals 7

    :goto_0
    :try_start_0
    const-string/jumbo v3, ": "

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/4 v3, 0x1

    aget-object v1, v2, v3

    const-string/jumbo v3, "cwd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    invoke-virtual {p4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string/jumbo v4, "avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "In getAVCDetails [Exception]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/SEAMService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/SEAMService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v1, "SEAMService"

    const-string/jumbo v2, "getInstance, null is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :pswitch_0
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/MyContainer;

    invoke-direct {v1, p1}, Lcom/android/server/MyContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    aget-object v0, v0, p0

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/server/SEAMService;->instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/BBCContainer;

    invoke-direct {v1, p1}, Lcom/android/server/BBCContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMdmProperties(I)I
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "persist.sys.mdm.auto"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    and-int v1, v0, p1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMService"

    const-string/jumbo v3, "getMdmProperties, FALSE is returned."

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .locals 1

    invoke-static {p1}, Lcom/android/server/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    return-object v0
.end method

.method private getSeinfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v1, "getSeinfo"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v4, "SEAMS"

    const-string/jumbo v5, "getSeinfo"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "getSeinfo: callingPkg don\'t has the permission."

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_0
    if-nez p1, :cond_1

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "getSeinfo: packageName is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_1
    iget-object v4, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "getSeinfo: mPMS  is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->getSeinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static hashset_to_int_array(Ljava/util/HashSet;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, " hashset_to_int_array returning null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_1
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [I

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static isBootComplete()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/SEAMService;->bootCompleted:Z

    return v0
.end method

.method private isPersona(I)Z
    .locals 3

    const/16 v0, 0x64

    if-gt v0, p1, :cond_0

    const/16 v0, 0xc7

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v1, "SEAMService"

    const-string/jumbo v2, "isPersona, false is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private processAVCLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .locals 6

    const-string/jumbo v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SEAMService;->getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method private processAllowedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private static processDeniedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .locals 1

    const-string/jumbo v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private registerBootReceiver()V
    .locals 6

    :try_start_0
    sget-object v2, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/SEAMService$1;

    invoke-direct {v2, p0}, Lcom/android/server/SEAMService$1;-><init>(Lcom/android/server/SEAMService;)V

    sput-object v2, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/SEAMService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/SEAMService;->mHandler:Lcom/android/server/SEAMService$BrHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot register mBootReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerSPDCompleteReceiver()V
    .locals 6

    :try_start_0
    sget-object v2, Lcom/android/server/SEAMService;->mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.spdsuccess"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/SEAMService$2;

    invoke-direct {v2, p0}, Lcom/android/server/SEAMService$2;-><init>(Lcom/android/server/SEAMService;)V

    sput-object v2, Lcom/android/server/SEAMService;->mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/SEAMService;->mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "com.sec.android.permission.KNOX"

    iget-object v5, p0, Lcom/android/server/SEAMService;->sHandler:Lcom/android/server/SEAMService$SpdHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot register mSPDCompleteReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removePolicyFiles()Z
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "/data/security/"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v4, v0, v6

    new-instance v2, Ljava/io/File;

    const-string/jumbo v8, "/data/security/"

    invoke-direct {v2, v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception during removePolicyFiles"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_1

    :cond_1
    return v5

    :cond_2
    :try_start_1
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "/data/security/ is not a directory."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_3
    const-string/jumbo v6, "selinux.reload_policy"

    const-string/jumbo v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x1

    goto :goto_2
.end method

.method private resetPolicyAssets()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    sput v0, Lcom/android/server/SEAMService;->policyFileSize:I

    sput-object v1, Lcom/android/server/SEAMService;->policyDataBytes:[B

    sput-object v1, Lcom/android/server/SEAMService;->policyHash:Ljava/lang/String;

    sput v0, Lcom/android/server/SEAMService;->policyDataBytesPosition:I

    return-void
.end method

.method private setMdmPropertiesLocked(II)V
    .locals 5

    const/4 v3, 0x0

    const-string/jumbo v2, "persist.sys.mdm.auto"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v1, p1, -0x1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    or-int/2addr v0, v1

    :cond_0
    :goto_0
    sget-object v3, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "persist.sys.mdm.auto"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    if-nez p2, :cond_0

    not-int v2, v1

    and-int/2addr v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setPolicyUpdateProperty(Z)I
    .locals 6

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v3, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    const/4 v1, 0x0

    :goto_0
    return v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in method: setPolicyUpdateProperty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_3
    sget-object v3, Lcom/android/server/SEAMService;->mSetPolicy:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const-string/jumbo v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v3

    const/4 v1, 0x0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method


# virtual methods
.method public activateDomain(Z)I
    .locals 10

    const/4 v9, -0x2

    const-string/jumbo v3, "activateDomain"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "activateDomain: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_0
    :try_start_0
    const-string/jumbo v6, "SEAMS"

    const-string/jumbo v7, "activateDomain"

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "Unauthorized call to activateDomain. "

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_1
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5, p1}, Lcom/android/server/SEAMSContainer;->activateDomain(IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    return v6

    :catch_0
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in method:activateDomain, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v6, -0x1

    return v6
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 17

    const-string/jumbo v9, "addAppToContainer"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    const/4 v11, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "addAppToContainer: License validation failed"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x2

    return v13

    :cond_0
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v14, 0x2

    invoke-static {v14, v13}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    return v11

    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v14, 0x3

    invoke-static {v14, v13}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    return v11

    :cond_2
    const-string/jumbo v13, "SEAMS"

    const-string/jumbo v14, "addAppToContainer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v14}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unauthorized call to addAppToContainer for package name ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "). "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x2

    return v13

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v4, v13}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    return v11

    :catch_0
    move-exception v5

    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception in methodaddAppToContainer, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "addAppToContainer POLICY_FAILED is returned "

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x1

    return v13
.end method

.method public addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    .locals 18

    const-string/jumbo v10, "changeAppDomain"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string/jumbo v14, "SEAMS"

    const-string/jumbo v15, "changeAppDomain"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v14, v15}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v14, -0x1

    if-ne v4, v14, :cond_0

    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v15, "SEAMService"

    const-string/jumbo v16, "getSeinfo: callingPkg don\'t has the permission."

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, -0x1

    return v14

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v15, "SEAMService"

    const-string/jumbo v16, "changeAppDomain POLICY_FAILED is returned "

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, -0x1

    return v14

    :pswitch_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SEAMService;->getSeinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez p4, :cond_2

    if-eqz p3, :cond_2

    const-string/jumbo v14, "untrusted"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_2
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    const-string/jumbo v14, "trustonicpartner"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v15, 0x2

    invoke-static {v15, v14}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    return v12

    :cond_4
    const/4 v14, -0x1

    return v14

    :cond_5
    const/4 v14, -0x1

    return v14

    :catch_0
    move-exception v6

    sget-object v14, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v15, "SEAMService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Exception in methodchangeAppDomain, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public clearSBABlacklist(II)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->clearSBABlacklist(II)I

    move-result v0

    return v0
.end method

.method public clearWhitelist(II)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->clearWhitelist(II)I

    move-result v0

    return v0
.end method

.method public createSEContainer()I
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v6, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "createSEContainer: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x2

    return v6

    :cond_1
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-static {v7, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3, v5, v4}, Lcom/android/server/SEAMSContainer;->createSEContainer(II)I

    move-result v6

    return v6

    :cond_2
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v7, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in createSEContainer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "createSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    return v6
.end method

.method public deActivateDomain()I
    .locals 10

    const/4 v9, -0x2

    const-string/jumbo v3, "deActivateDomain"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "deActivateDomain: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_0
    :try_start_0
    const-string/jumbo v6, "SEAMS"

    const-string/jumbo v7, "deActivateDomain"

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return v9

    :cond_1
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Lcom/android/server/SEAMSContainer;->deActivateDomain(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    return v6

    :catch_0
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in method:deActivateDomain, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "deActivateDomain, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    return v6
.end method

.method public getAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 14

    const/4 v1, 0x0

    const/4 v7, 0x0

    const-string/jumbo v6, "getAMSLog"

    iget-object v10, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {p0, p1, v10, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "getAMSLog: License validation failed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    return-object v10

    :cond_0
    const-string/jumbo v7, "all"

    :try_start_0
    const-string/jumbo v0, "/data/misc/audit/ams.log"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v9, Ljava/util/Scanner;

    invoke-direct {v9, v3}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    const-string/jumbo v10, "line.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-virtual {v9}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "Allowed"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0, v7, v4, v8, v5}, Lcom/android/server/SEAMService;->processAllowedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception in method:getAMSLog, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-object v1

    :cond_2
    :try_start_1
    const-string/jumbo v10, "Denied"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v7, v4, v8, v5, v9}, Lcom/android/server/SEAMService;->processDeniedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 8

    const-string/jumbo v2, "getAMSLogLevel"

    iget-object v4, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "getAMSLogLevel: License validation failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x2

    return v4

    :cond_0
    const/4 v0, -0x1

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "persist.security.ams.verbose"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    return v0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAMSLogLevel: Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getAMSMode(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string/jumbo v2, "getAMSMode"

    iget-object v4, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v4, v6}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "getAMSMode: License validation failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x2

    return v4

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "persist.security.ams.enforcing"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1

    return v6

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception in method:getAMSMode, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    sget-object v4, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMService"

    const-string/jumbo v6, "getAMSMode: FALSE is returned"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v8
.end method

.method public getAVCLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 14

    const/4 v1, 0x0

    const-string/jumbo v10, "getAVCLog"

    iget-object v0, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {p0, p1, v0, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "getAVCLog: License validation failed"

    invoke-virtual {v0, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v1, "all"

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v6, "/data/misc/audit/audit.log"

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v0, v12

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v9}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "avc"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SEAMService;->processAVCLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception in method:getAVCLog, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-object v7

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getActivationStatus()I
    .locals 10

    const/4 v9, -0x2

    const-string/jumbo v3, "getActivationStatus"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getActivationStatus: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_0
    :try_start_0
    const-string/jumbo v6, "SEAMS"

    const-string/jumbo v7, "getActivationStatus"

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "Unauthorized call to getActivationStatus. "

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_1
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/SEAMSContainer;->getActivationStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    return v6

    :catch_0
    move-exception v1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " Exception in method:getActivationStatus, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getActivationStatus, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    return v6
.end method

.method public getAllSEContainerCategory()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v6, "getAllSEContainerCategory"

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x2

    :try_start_0
    new-array v10, v11, [Ljava/lang/String;

    const-string/jumbo v11, "containerID"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "mode"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    iget-object v11, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "SeamsClipboardTable"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v10, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_0
    iget-object v11, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-nez v11, :cond_1

    const-string/jumbo v11, "package"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageManagerService;

    iput-object v11, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    :cond_1
    iget-object v11, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDsForSystem()Ljava/util/List;

    move-result-object v9

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_2
    :goto_0
    return-object v9

    :cond_3
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string/jumbo v11, "containerID"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    sget-object v11, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getAllSEContainerCategory() failed with exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v11, "containerID"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "mode"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "SeamsClipboardTable"

    invoke-virtual {v11, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v11, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "SeamsClipboardTable"

    invoke-virtual {v11, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    goto :goto_2
.end method

.method public getBBCFlag()Z
    .locals 1

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v0

    return v0
.end method

.method public getDataType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v6, "getDataType"

    iget-object v7, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDataType: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-gez p3, :cond_1

    :try_start_0
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDataTypeuserId is less than 0."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v7, 0x80

    invoke-interface {v3, p2, v7, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDataTypeappInfo is null."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_2
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Landroid/os/SELinux;->getFileType(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catch_0
    move-exception v2

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDomain(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v6, "getDomain"

    iget-object v7, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {p0, p1, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDomain: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-gez p3, :cond_1

    :try_start_0
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDomain, userId is less than 0."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v7, 0x80

    invoke-interface {v3, p2, v7, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getDomain, appInfo is null"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_2
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Landroid/os/SELinux;->getDomain(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catch_0
    move-exception v2

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    const-string/jumbo v4, "getPackageNamesFromSEContainer"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v6}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v7, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {p0, v6, v5, v7, v8}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getPackageNamesFromSEContainer, License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_1
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v8, 0x3

    invoke-static {v8, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/SEAMSContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_2
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v8, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception in method:getPackageNamesFromSEContainer, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getPackageNamesFromSEContainer, null is returned"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public getPackagesFromSBABlacklist(II)[Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->getPackagesFromSBABlacklist(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromSBAList(I)[Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ResourceManager;->getPackagesFromSBAList(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->getPackagesFromWhitelist(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPkgNamesFromContainer(IZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x0

    const-string/jumbo v0, "getPkgNamesFromContainer"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v1, 0x0

    const-string/jumbo v4, "SEAMS"

    const-string/jumbo v5, "getPkgNamesFromContainer"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    return-object v6

    :cond_0
    if-eqz p2, :cond_2

    if-ne p1, v7, :cond_1

    invoke-static {v7}, Lcom/android/server/pm/SELinuxMMAC;->getAllPackageNamesFromSEContainer(I)Ljava/util/List;

    move-result-object v4

    return-object v4

    :cond_1
    return-object v6

    :cond_2
    return-object v6
.end method

.method public getSEAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 13

    const-string/jumbo v4, "getSEAMSLog"

    const/4 v8, 0x0

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "getSEAMSLog_begin"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {p0, p1, v9, v10}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "getSEAMSLog: License validation failed"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    return-object v9

    :cond_0
    :try_start_0
    const-string/jumbo v7, "/data/misc/audit/sk.log"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    const-string/jumbo v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception in method:getSEAMSLog, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    sget-object v9, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v10, "SEAMService"

    const-string/jumbo v11, "Returning SEAMS Log."

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getSEContainerClipboardMode(I)I
    .locals 14

    const-string/jumbo v6, "getSEContainerClipboardMode"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v10, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {p0, v9, v7, v10, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "getSEContainerClipboardMode: License validation failed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x2

    return v10

    :cond_0
    sget v10, Lcom/android/server/SEAMService;->SELF_PID:I

    if-eq v7, v10, :cond_3

    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v11, 0x2

    invoke-static {v11, v10}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/SEAMSContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v10, v5, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v10, v11, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "containerID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is not owned by caller:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x1

    return v10

    :cond_1
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "mdmID is null"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x1

    return v10

    :cond_2
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "unable to get instance"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x1

    return v10

    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v10, p0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "SeamsClipboardTable"

    const-string/jumbo v12, "mode"

    invoke-virtual {v10, v11, v12, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v10, "mode"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    return v10

    :cond_4
    const/4 v10, -0x1

    return v10
.end method

.method public getSEContainerIDs()[I
    .locals 13

    const/4 v12, 0x0

    const-string/jumbo v5, "getSEContainerIDs"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v8, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {p0, v7, v6, v8, v9}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "getSEContainerIDs, License validation failed"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v9, 0x3

    invoke-static {v9, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/SEAMSContainer;->getSEContainerIDs()Ljava/util/HashSet;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lcom/android/server/SEAMService;->hashset_to_int_array(Ljava/util/HashSet;)[I

    move-result-object v8

    return-object v8

    :cond_3
    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-static {v9, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in getSEContainerIDs:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "getSEContainerIDs, null is returned"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 13

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v12, 0x0

    const-string/jumbo v5, "getSEContainerIDsFromPackageName"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v8, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v6, v8, v9}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "License validation failed"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_1
    if-eq p2, v9, :cond_2

    if-ne p2, v10, :cond_3

    :cond_2
    :try_start_0
    const-string/jumbo v8, "SEAMS"

    const-string/jumbo v9, "getSEContainerIDsFromPackageName"

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4, p1, p2}, Lcom/android/server/SEAMSContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v8

    return-object v8

    :cond_3
    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v9, 0x3

    invoke-static {v9, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_5

    invoke-virtual {v4, p1, p2}, Lcom/android/server/SEAMSContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v8

    return-object v8

    :cond_4
    iget-object v8, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-static {v9, v8}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in method:getSEContainerIDsFromPackageName, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    sget-object v8, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMService"

    const-string/jumbo v10, "getSEContainerIDsFromPackageName, null is returned"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12
.end method

.method public getSELinuxMode(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 6

    const-string/jumbo v1, "getSELinuxMode"

    :try_start_0
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in method:getSELinuxMode, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "getSELinuxMode, FALSE is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method public getSepolicyVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v1, "getSepolicyVersion"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in method:getSepolicyVersion, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3
.end method

.method public getSignatureFromCertificate([B)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v1, "getSignatureFromCertificate"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget-object v6, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v2, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getSignatureFromCertificate: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v6, "-----BEGIN CERTIFICATE-----"

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "-----END CERTIFICATE-----"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/SEAMService;->encodeBase16([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v0

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in byte array operations when getting signature."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "getSignatureFromCertificate: null is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v6}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    const-string/jumbo v9, "getSignatureFromMac: packageName is null"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v8, 0x3

    invoke-static {v8, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_2
    iget-object v7, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v8, v7}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v7, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getInstance fail. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    const-string/jumbo v5, "getSignatureFromPackage"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v12, v13}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v12

    if-nez v12, :cond_0

    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage: License validation failed"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    return-object v12

    :cond_0
    if-nez p1, :cond_1

    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    return-object v12

    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/4 v6, 0x0

    if-eqz v8, :cond_9

    const/16 v12, 0x40

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v8, v0, v12, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v12, v10

    if-ge v4, v12, :cond_9

    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getBbcEnabled()I

    move-result v2

    const/16 v12, 0x40

    move-object/from16 v0, p1

    invoke-interface {v8, v0, v12, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    const/4 v4, 0x0

    :goto_1
    array-length v12, v10

    if-ge v4, v12, :cond_9

    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, pi is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    return-object v12

    :cond_7
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, mPersona is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    return-object v12

    :cond_8
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, bbcFlag is false"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x0

    return-object v12

    :catch_0
    move-exception v3

    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Exception in method:getSignatureFromPackage, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    sget-object v12, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, null is returned"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    return-object v12
.end method

.method public hasKnoxContainers()I
    .locals 10

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v6, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v6, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v6, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v6, v6, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/16 v7, 0x64

    if-lt v6, v7, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v6, v6, Lcom/samsung/android/knox/SemPersonaInfo;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0xc2

    if-gt v6, v7, :cond_1

    const/4 v5, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasKnoxContainers - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5
.end method

.method public hasSEContainers()I
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasSEContainers()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v3, "persist.security.good.enable"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasSEContainers - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    sget-boolean v2, Lcom/android/server/SEAMService;->bootCompleted:Z

    if-nez v2, :cond_0

    sget v2, Lcom/android/server/SEAMService;->SELF_PID:I

    if-ne v2, p1, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/android/server/SEAMService;->SELF_PID:I

    if-ne v2, p1, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isBBCAgent()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->isBBCAgent()Z

    move-result v0

    return v0
.end method

.method public isSBAApp(Ljava/lang/String;I)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->isSBAApp(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 7

    const/4 v5, 0x1

    const-string/jumbo v1, "isSEAndroidLogDumpStateInclude"

    iget-object v3, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "isSEAndroidLogDumpStateInclude: License validation failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x2

    return v3

    :cond_0
    :try_start_0
    const-string/jumbo v3, "persist.security.mdm.SElogs"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    return v5

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in method:isSEAndroidLogDumpStateInclude, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "isSEAndroidLogDumpStateInclude, FALSE is returned"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3
.end method

.method public isSEPolicyAutoUpdateEnabled(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 14

    const/4 v13, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string/jumbo v4, "isSEPolicyAutoUpdateEnabled"

    iget-object v10, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v10, v13}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "isSEPolicyAutoUpdateEnabled: License validation failed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x2

    return v10

    :cond_0
    iget-object v10, p0, Lcom/android/server/SEAMService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v10}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVer()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v0

    sget-object v10, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v0, v10}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v10

    if-gez v10, :cond_4

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    const-string/jumbo v11, "android"

    const-string/jumbo v12, "com.sec.android.app.msa"

    invoke-interface {v10, v11, v12}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/SEAMService;->getSELinuxMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    if-ne v10, v13, :cond_3

    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "security_update_db"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return v7

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_1

    :try_start_1
    iget-object v10, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "cr_msa_auto_update"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "Exception in method:isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, -0x1

    goto :goto_1

    :catch_1
    move-exception v6

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "remote exception in method:isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, -0x1

    goto :goto_1

    :cond_4
    :try_start_2
    const-string/jumbo v10, "spd_control_policy"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/knox/restriction/ISPDControlPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/ISPDControlPolicy;

    move-result-object v9

    invoke-interface {v9}, Lcom/samsung/android/knox/restriction/ISPDControlPolicy;->getAutoSecurityPolicyUpdateMode()I

    move-result v8

    rem-int/lit8 v7, v8, 0x2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v6

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "Exception in method:isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, -0x1

    goto :goto_2
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->isWhitelistApp(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public loadContainerSetting(Ljava/lang/String;)I
    .locals 6

    const-string/jumbo v0, "loadContainerSetting"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "loadContainerSetting: License validation failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x2

    return v3

    :cond_0
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "loadContainerSetting: POLICY_FAILED is returned"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3
.end method

.method public relabelAppDir(Ljava/lang/String;)I
    .locals 14

    const-string/jumbo v6, "relabelAppDir"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    iget-object v10, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {p0, v8, v7, v10, v11}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "relabelAppDir: License validation failed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x2

    return v10

    :cond_0
    if-nez p1, :cond_1

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "packageName is null"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    return v10

    :cond_1
    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v9, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v10, p0, Lcom/android/server/SEAMService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getBbcEnabled()I

    move-result v9

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/16 v10, 0x80

    invoke-interface {v5, p1, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string/jumbo v10, "package"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageManagerService;

    iput-object v10, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_4

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AppInfo of package:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", is NULL, return false"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    return v10

    :cond_4
    const-string/jumbo v10, "/data/system"

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "The package has /data/system/ datadir, dataDir:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " and cannot be relabeled"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    return v10

    :cond_5
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v8, v10, :cond_6

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_6
    if-eqz v1, :cond_7

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "BBC case, relabelAppDir with packageName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", bbcseinfo:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", userID:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-virtual {v10, p1, v9, v11}, Lcom/android/server/pm/PackageManagerService;->relabelAppData(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "BBC case, mPMS.relabelAppData returned false"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    return v10

    :cond_7
    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "non-BBC (Good/generic) case, relabelAppDir with packageName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", seinfo:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", uid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, p1, v12, v11}, Lcom/android/server/pm/PackageManagerService;->relabelAppData(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "non-BBC case, mPMS.relabelAppData returned false"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    return v10

    :catch_0
    move-exception v3

    sget-object v10, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v11, "SEAMService"

    const-string/jumbo v12, "relabelAppDir cannot get app list"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    return v10

    :cond_8
    const/4 v10, 0x1

    return v10
.end method

.method public relabelData(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 4

    const/4 v2, 0x1

    const-string/jumbo v0, "relabelData"

    iget-object v1, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMService"

    const-string/jumbo v3, "relabelData: License validation failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x2

    return v1

    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->relabelData()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMService"

    const-string/jumbo v3, "mPMS.relabelData returned false"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    return v2
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 17

    const-string/jumbo v9, "removeAppFromContainer"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "removeAppFromContainer: License validation failed"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x2

    return v13

    :cond_0
    const/4 v8, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v14, 0x2

    invoke-static {v14, v13}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    return v11

    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v14, 0x3

    invoke-static {v14, v13}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    return v11

    :cond_2
    const-string/jumbo v13, "SEAMS"

    const-string/jumbo v14, "removeAppFromContainer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v14}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unauthorized call to removeAppFromContainer for package name ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ")."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x2

    return v13

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v4, v13}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    return v11

    :catch_0
    move-exception v5

    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception in method:removeAppFromContainer, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "removeAppFromContainer: POLICY_FAILED is returned"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x1

    return v13
.end method

.method public removeAppFromSBABlacklist(ILjava/lang/String;I)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromSBABlacklist(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SEAMService;->getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeSEContainer(I)I
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/server/SEAMService;->getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v6, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "activateDomain: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x2

    return v6

    :cond_1
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-static {v7, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3, v5, v4, p1}, Lcom/android/server/SEAMSContainer;->removeSEContainer(III)I

    move-result v6

    return v6

    :cond_2
    iget-object v6, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v7, v6}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in removeSEContainer:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    sget-object v6, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "SEAMService"

    const-string/jumbo v8, "removeSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    return v6
.end method

.method public setAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;I)I
    .locals 7

    const/4 v4, 0x0

    const/4 v6, -0x1

    const-string/jumbo v1, "setAMSLogLevel"

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "setAMSLogLevel: License validation failed"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x2

    return v2

    :cond_0
    if-ltz p2, :cond_1

    const/4 v2, 0x2

    if-le p2, v2, :cond_2

    :cond_1
    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "Flag with a wrong value"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_2
    const-string/jumbo v2, "persist.security.ams.verbose"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAMSLogLevel failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method public setBBCFlag(Z)I
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "setBBCFlag"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string/jumbo v3, "SEAMS"

    const-string/jumbo v4, "setBBCFlag"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    const/4 v3, -0x1

    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->setBBCFlag(Z)I

    return v5
.end method

.method public setSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 6

    const-string/jumbo v1, "setSEAndroidLogDumpStateInclude"

    iget-object v2, p0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/SEAMService;->checkSEAMSPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "setSEAndroidLogDumpStateInclude: License validation failed"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x2

    return v2

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    const-string/jumbo v2, "persist.security.mdm.SElogs"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const-string/jumbo v2, "persist.security.mdm.SElogs"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in method:setSEAndroidLogDumpStateInclude, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMService"

    const-string/jumbo v4, "setSEAndroidLogDumpStateInclude: POLICY_FAILED is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2
.end method

.method public setSEContainerClipboardMode(II)I
    .locals 17

    const-string/jumbo v9, "setSEContainerClipboardMode"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    const/4 v11, 0x0

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "setSEContainerClipboardMode: License validation failed"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x2

    return v13

    :cond_0
    if-ltz p2, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p2

    if-le v0, v13, :cond_2

    :cond_1
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x1

    return v13

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v14, 0x2

    invoke-static {v14, v13}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/SEAMSContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v8

    iget-object v13, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v14, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p1

    invoke-static {v13, v14, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_4

    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "containerID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " is not owned by caller:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x1

    return v13

    :cond_3
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "unable to get instance"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x1

    return v13

    :cond_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v13, "mode"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "SeamsClipboardTable"

    const-string/jumbo v15, "mode"

    invoke-virtual {v13, v14, v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v13

    if-eqz v13, :cond_6

    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CHecking if entry already exists:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "SeamsClipboardTable"

    invoke-virtual {v13, v14, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v11

    :cond_5
    :goto_0
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setSecontainerClipboardMode: ret = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_7

    const/4 v13, 0x0

    :goto_1
    return v13

    :cond_6
    sget-object v13, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v14, "SEAMService"

    const-string/jumbo v15, "CvOld null or size 0"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "SeamsClipboardTable"

    invoke-virtual {v13, v14, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SEAMService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "SeamsClipboardTable"

    invoke-virtual {v13, v14, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    goto :goto_0

    :cond_7
    const/4 v13, -0x1

    goto :goto_1
.end method

.method public updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .locals 17

    const-string/jumbo v11, "updateAppToContainer"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    const/4 v15, 0x0

    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SEAMService;->PERMS:Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v14, v3, v4}, Lcom/android/server/SEAMService;->checkSEAMSPermission(IILjava/util/List;Z)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "updateAppToContainer: License validation failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x2

    return v3

    :cond_0
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I

    move-result v15

    return v15

    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I

    move-result v15

    return v15

    :cond_2
    const-string/jumbo v3, "SEAMS"

    const-string/jumbo v4, "updateAppToContainer"

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1, v3, v4}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_3

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unauthorized call to updateAppToContainer for package name ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "). "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x2

    return v3

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {v9, v3}, Lcom/android/server/SEAMService;->getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    return v15

    :catch_0
    move-exception v10

    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "Exception in methodupdateAppToContainer"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    sget-object v3, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMService"

    const-string/jumbo v5, "updateAppToContainer POLICY_FAILED is returned "

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3
.end method
