.class public Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseISLPolicy$Stub;
.source "EnterpriseISLPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DIGEST_TYPE:Ljava/lang/String; = "SHA-256"

.field private static final ENTERPRISE_MDM_ID:Ljava/lang/String; = "mAdminID"

.field private static final IM_MIGRATION_STATUS:Ljava/lang/String; = "migrationRequiredPrefs"

.field private static final ISL_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.ISA_BIND_ACTION"

.field private static final ISL_VERSION:Ljava/lang/String; = "2.0"

.field private static final KNOX1_PREFIX:Ljava/lang/String; = "sec_container_1."

.field private static final MIGRATION_ACTION:Ljava/lang/String; = "com.sec.knox.migrationagent.START_IM_MIGRATION"

.field private static final MIGRATION_COMPLETE:Ljava/lang/String; = "com.sec.enterprise.knox.IM_MIGRATION_COMPLETE"

.field private static final MIGRATION_FLAG:Ljava/lang/String; = "migrationIMFlag"

.field private static final PARTITION_TO_SCAN:Ljava/lang/String; = "/system"

.field private static TAG:Ljava/lang/String; = null

.field public static final WATCH_EVENTS:I = 0xfc6

.field private static mAdminIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCallBackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mFilesCount:I

.field private static mISAInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static mISAList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMultiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

.field private static mProgress:I

.field private static mSubscriberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private static final syncObj:Ljava/lang/Object;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

.field private mSystemBinObserver:Landroid/os/FileObserver;

.field private mSystemFmwrkObserver:Landroid/os/FileObserver;

.field private mSystemXbinObserver:Landroid/os/FileObserver;

.field private migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

.field private mySharedPreference:Landroid/content/SharedPreferences;

.field private perAdminPackageListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get11()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return v0
.end method

.method static synthetic -get6()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get7()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get8()I
    .locals 1

    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return v0
.end method

.method static synthetic -get9()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkContainerOwner(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkIfUserIsContainer(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAllPackagesFromOwnerspace(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;ILjava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getPackageListfromDB(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->islMigration(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendBroadcastToMDM(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "EnterpriseISLPolicyService"

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->syncObj:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseISLPolicy$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->perAdminPackageListMap:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    const-string/jumbo v0, "tima"

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TIMA_SERVICE:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "EnterpriseISLPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "EnterpriseISLPolicy Constructor ===== registerEnterpriseISLpolicyReciever() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerEnterpriseISLpolicyReciever()V

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "EnterpriseISLPolicy Constructor ===== registerMigrationReceiver() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerMigrationReceiver()V

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "migrationRequiredPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    return-void
.end method

.method private checkContainerOwner(II)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkContainerOwner: Container: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " owned by Admin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private static checkIfUserIsContainer(I)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkIfUserIsContainer: containerId value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getPersonaManager()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ISemPersonaManager;->exists(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error at checkIfUserIsContainer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doMigration3rdPartyUpdate()Z
    .locals 11

    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, ">>>> doMigration3rdPartyUpdate"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "mMultiMap is empty"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "full package list in DB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mappingAdminPackageList()V

    iget-object v8, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->perAdminPackageListMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "No 3rd party in DB, do not need to migration"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x1

    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "check prefix & putBaseline"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "admin : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "interfaceISA is null, need to bind isa"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2

    :cond_4
    iget-object v8, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->perAdminPackageListMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v8, "sec_container_1."

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "migration - packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, v5}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->removePackageFromBaseline(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removePackage failed - packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_6
    if-nez v2, :cond_2

    goto :goto_0

    :cond_7
    const-string/jumbo v8, "sec_container_1."

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->putPackageToBaseline(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "putPackage failed - packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "migration exception : packagename : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private enforceEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string/jumbo v1, "android.permission.sec.MDM_ENTERPRISE_ISL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private final getAdminISAMAPFromDB()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ISL getAdminISAMAPFromDB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "adminUid"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "isaPackageName"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    const-string/jumbo v2, "EnterpriseIslFpTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->getAdminISAMapFromDB(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    .locals 5

    const/4 v2, -0x1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in getAdminId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getAllPackagesFromOwnerspace(I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Userlist size : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    if-lez v9, :cond_1

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkIfUserIsContainer(I)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_1
    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    if-eqz v9, :cond_2

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkContainerOwner(II)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    :goto_1
    return-object v0

    :cond_5
    move-object v0, v8

    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getISAInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getISAInterface - ISAInterface not registered for the Admin--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    return-object v0
.end method

.method private getPackageListfromDB(ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "ISL getPackageListfromDB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v3, "adminUid"

    aput-object v3, v0, v5

    const-string/jumbo v3, "isaPackageName"

    aput-object v3, v0, v6

    new-array v2, v7, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v3, "packageName"

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    const-string/jumbo v4, "EnterpriseIslFpTable"

    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->getPackageListfromDB(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static getPersonaManager()Lcom/samsung/android/knox/ISemPersonaManager;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v0
.end method

.method private getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getSubscriberInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSubscriberInstance - Subscriber not registered for the Admin--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    return-object v0
.end method

.method private islMigration(Z)V
    .locals 5

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, ">>> islMigration"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->doMigration3rdPartyUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "EnterpriseISLPolicyMigrationReceiver onReceive ---- Migration Success"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "migrationIMFlag"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    if-eqz p1, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.enterprise.knox.IM_MIGRATION_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "IM_MIGRATION_RESULT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "EnterpriseISLPolicyMigrationReceiver onReceive ---- Migration Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mappingAdminPackageList()V
    .locals 10

    const/4 v9, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select packageName from EnterpriseIslFpTable Where adminUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " NOT IN ( \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "prebaseLine"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' , \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "packageName"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The Admin id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " The package Name is ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->perAdminPackageListMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private removeKnox1Prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "2.0"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "sec_container_1."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove the knox 1.0 prefix - package name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sec_container_1."

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private removeKnox1PrefixList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->removeKnox1Prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, v1

    :cond_1
    return-object p1
.end method

.method private sendBroadcastToMDM(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v12, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v12, "android.intent.extra.user_handle"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v12, "android.intent.extra.UID"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "package:"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v7, v3

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v6, v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v12, -0x1

    if-le v3, v12, :cond_3

    invoke-direct {p0, v11, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkContainerOwner(II)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v2, 0x1

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " sendBroadcastToMDM-- containerId= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " UID= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " PackageName= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendintent(Landroid/content/Intent;Z)V

    :cond_2
    return-void

    :cond_3
    invoke-static {v11}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkIfUserIsContainer(I)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v11, :cond_0

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "sendBroadcastToMDM-- user is a normal guest user "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendintent(Landroid/content/Intent;Z)V

    goto :goto_0

    :cond_4
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v7, v3

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v6, v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v12, -0x1

    if-le v3, v12, :cond_6

    invoke-direct {p0, v11, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkContainerOwner(II)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v2, 0x1

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " sendBroadcastToMDM-- containerId= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " UID= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " PackageName= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-static {v11}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->checkIfUserIsContainer(I)Z

    move-result v12

    if-nez v12, :cond_5

    if-eqz v11, :cond_5

    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "sendBroadcastToMDM-- user is a normal guest user "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->sendintent(Landroid/content/Intent;Z)V

    goto :goto_2

    :cond_7
    sget-object v12, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "No Admin on Device !!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private sendintent(Landroid/content/Intent;Z)V
    .locals 4

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, ">>>> sendintent to Admins  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "isMdmUser"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method


# virtual methods
.method public clearBaseline(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in clearBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->clearBaseline()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x0

    return v3

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "clearBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public convertEventToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "Attribute modified"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "File modified"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "File or subdirectory moved from"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "File or subdirectory moved to"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "New file or subdirectory created"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "File deleted"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "Deleted Self"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "Moved Self"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x40 -> :sswitch_2
        0x80 -> :sswitch_3
        0x100 -> :sswitch_4
        0x200 -> :sswitch_5
        0x400 -> :sswitch_6
        0x800 -> :sswitch_7
    .end sparse-switch
.end method

.method public establishBaselineScan(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in establishBaselineScan"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->establishBaselineScan(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x0

    return v3

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "establishBaselineScan - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getISAList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "in getISAList"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v9

    iget v0, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.ISA_BIND_ACTION"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v4, v1, v11, v9}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getISAList - Package  Name -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getISAList - Service  Name -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "getISAList - No package found with ISL intent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAList:Ljava/util/List;

    return-object v9
.end method

.method public isISAReady(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in isISAReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    iget v0, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISA Service could not be found for Admin_uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterfaceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public performPreBaselineScan(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in performPreBaselineScan"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->performPreBaselineScan()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x0

    return v3

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "performPreBaselineScan - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public performScanNow(Lcom/samsung/android/knox/ContextInfo;ILjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in performScanNow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->removeKnox1PrefixList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {v2, p2, p3}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->performScanNow(ILjava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x0

    return v3

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "performScanNow - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public putPackageToBaseline(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 5

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in putPackageToBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->removeKnox1Prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->putPackageToBaseline(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x0

    return v3

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "putPackageToBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerEnterpriseISLpolicyReciever()V
    .locals 6

    const/4 v4, 0x0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEnterpriseISLpolicyReciever - Binding the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public registerMigrationReceiver()V
    .locals 6

    const/4 v4, 0x0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerMigrationReceiver - Registering the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.sec.knox.migrationagent.START_IM_MIGRATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public removePackageFromBaseline(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 5

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in removePackageFromBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->removeKnox1Prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->removePackageFromBaseline(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x0

    return v3

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestBindISA(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 27

    const/16 v20, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->receiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "EnterpriseISLPolicyReceiver already registered"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->migrationReceiver:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "EnterpriseISLPolicyMigrationReceiver already registered"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_3

    :cond_0
    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "requestBindISA - packageName is null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerEnterpriseISLpolicyReciever()V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->registerMigrationReceiver()V

    goto :goto_1

    :cond_3
    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "in requestBindISA - packageName is -- "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;

    move-result-object v16

    const-string/jumbo v24, "MigrationAgent"

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "requestBindISA from Migration Agent"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v5, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "adminID : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", packageName : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v24

    if-lez v24, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    :cond_5
    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_6

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    :cond_6
    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_8

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v5, v14, :cond_7

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    const/4 v13, 0x0

    :cond_8
    if-nez v13, :cond_b

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "in requestBindISA - checking if any of the entries do have ISA so prevent other MDM to bind to that ISA, failed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_9
    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "in requestBindISA - when the map is empty we must check the DB and get the admin for which last binding was there"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_a
    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "in requestBindISA - add the multiple MDM support backtracking"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_b
    new-instance v9, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v24, "com.samsung.android.ISA_BIND_ACTION"

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v22

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_f

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "requestBindISA - Package  Name -- "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "requestBindISA - Service  Name -- "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_c

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Comp Name -- "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Comp Class -- "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v23, Landroid/os/UserHandle;

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v4, v9, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v20, 0x1

    :cond_d
    :goto_2
    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mySharedPreference:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string/jumbo v25, "migrationIMFlag"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_e

    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v25, ">>> requestBind IM Migration Starts-- "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->islMigration(Z)V

    :cond_e
    return v20

    :cond_f
    sget-object v24, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "requestBindISA - No package found with ISL intent"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setISLCallBack(I)V
    .locals 5

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in setISLCallBack"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    invoke-interface {v2, v0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->setISLCallBack(Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;)V

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mCallBackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setISLCallBack - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIntegrityResultSubscriber(Lcom/samsung/android/knox/ContextInfo;Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;)V
    .locals 3

    if-nez p2, :cond_0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIntegrityResultSubscriber - subscriber is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in setIntegrityResultSubscriber"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    iget v0, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubscriberMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startRuntimeWatch(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const/16 v3, 0xfc6

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in startRuntimeWatch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    iget v0, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string/jumbo v2, "/system/bin/"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string/jumbo v2, "/system/xbin/"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string/jumbo v2, "/system/framework/"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    const/4 v1, 0x1

    return v1
.end method

.method public stopRuntimeWatch(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in stopRuntimeWatch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "List contains Admin Id ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    sget-object v4, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v6, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Stopping system bin watcher for the system"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Stopping system xbin watcher for the system"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Stopping system framework watcher for the system"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public updatePlatformBaseline(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in updatePlatformBaseline"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceOwnerOnlyAndEnterpriseISLPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->updatePlatformBaseline()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x0

    return v3

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updatePlatformBaseline - ISA interface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
