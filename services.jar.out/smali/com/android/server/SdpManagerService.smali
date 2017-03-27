.class public Lcom/android/server/SdpManagerService;
.super Landroid/os/ISdpManagerService$Stub;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$ActionReceiver;,
        Lcom/android/server/SdpManagerService$EngineMonitor;,
        Lcom/android/server/SdpManagerService$ListenerRoll;,
        Lcom/android/server/SdpManagerService$SdpEngineDatabase;,
        Lcom/android/server/SdpManagerService$SdpHandler;,
        Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;,
        Lcom/android/server/SdpManagerService$SecureFileSystemManager;,
        Lcom/android/server/SdpManagerService$StateListener;
    }
.end annotation


# static fields
.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final CMK_DEBUG:Z = false

.field private static final DATA_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final DATA_USERID:Ljava/lang/String; = "userId"

.field private static final DEFAULT_USER_ENGINE_ID:I = 0x0

.field private static final DEVICE_SUPPORT_KNOX:Z

.field private static final ENABLE_ENGINE_MONITOR:Z = false

.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field public static final KEK_LEN:I = 0x20

.field private static final KEYMGNT_DEBUG:Z = false

.field private static final KNOX_SENS_COLUMNS:Ljava/lang/String; = "/system/etc/knox_sensitive_columns.xml"

.field private static final MAX_FAILURE_COUNT:I = 0xa

.field private static final MSG_LOCK:I = 0x2

.field private static final MSG_REMOVE_PKG:I = 0x4

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final MSG_UNLOCK:I = 0x3

.field public static final SDK_CURRENT_VERSION:D = 1.2

.field public static final SDK_NOT_SUPPORTED:D = 0.0

.field public static final SDK_VERSION_1_0:D = 1.0

.field public static final SDK_VERSION_1_1:D = 1.1

.field public static final SDK_VERSION_1_2:D = 1.2

.field public static final SDPK_PWD_LEN:I = 0x20

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_LATEST_VERSION:I = 0x6

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final SDP_VERSION_1:I = 0x1

.field public static final SDP_VERSION_2:I = 0x2

.field public static final SDP_VERSION_3:I = 0x3

.field public static final SDP_VERSION_4:I = 0x4

.field public static final SDP_VERSION_5:I = 0x5

.field public static final SDP_VERSION_6:I = 0x6

.field public static final SDP_VERSION_DISABLED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SdpManagerService"

.field private static mFailureCount:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;


# instance fields
.field private bootComplete:Z

.field private handlerThread:Landroid/os/HandlerThread;

.field private final mBinderListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCMKMap:Ljava/util/Map;
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

.field private mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

.field private mEnginState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineMonitor:Lcom/android/server/SdpManagerService$EngineMonitor;

.field private mIsReady:Z

.field private mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/SdpManagerService$ListenerRoll;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPolicyManager:Lcom/android/server/SdpPolicyManager;

.field private mResetPwdKeyMap:Ljava/util/Map;
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

.field private mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

.field private final mSdpEngineDbLock:Ljava/lang/Object;

.field private mSdpEngineMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

.field private mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

.field private mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

.field mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private mUM:Landroid/os/UserManager;

.field private mWaitForPassword:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/SdpManagerService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    return-object v0
.end method

.method static synthetic -get10()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/SdpManagerService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpServiceKeeper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/SdpManagerService;)Lcom/android/server/pm/TimaHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/SdpManagerService;Lcom/sec/knox/container/util/EnterprisePartitionManager;)Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/SdpManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/SdpManagerService;->mIsReady:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/SdpManagerService;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpServiceKeeper;)Lcom/android/server/SdpServiceKeeper;
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/SdpManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/SdpManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/SdpManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isFirstBootUnlockRequired(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/SdpManagerService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->handlePkgRemoved(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUserAdded(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUserRemoved(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/SdpManagerService;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/SdpManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isKnoxEngine(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/SdpManagerService;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->createKeys(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/SdpManagerService;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/SdpManagerService;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILcom/samsung/android/knox/sdp/core/SdpCreationParam;[B)I
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILcom/samsung/android/knox/sdp/core/SdpCreationParam;[B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/SdpManagerService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootInternal(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/SdpManagerService;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/SdpManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleEmptyListenerRoll(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/ISdpManagerService$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mStateMap:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mPolicyManager:Lcom/android/server/SdpPolicyManager;

    iput-boolean v2, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iput-boolean v2, p0, Lcom/android/server/SdpManagerService;->bootComplete:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mEnginState:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mEngineMonitor:Lcom/android/server/SdpManagerService$EngineMonitor;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    iput-boolean v2, p0, Lcom/android/server/SdpManagerService;->mIsReady:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    sput-object p1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SdpManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/SdpManagerService$SdpHandler;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpHandler;-><init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    return-void
.end method

.method private addEngineInternalLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILcom/samsung/android/knox/sdp/core/SdpCreationParam;[B)I
    .locals 7

    const/4 v5, 0x0

    if-nez p4, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p5, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lcom/android/server/SdpManagerService;->addEngineNative(II[B)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error to handle addEngineNative ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xc

    return v0

    :cond_0
    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addEngineInternalLocked :: custom engine requires creation parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    return v0

    :cond_1
    invoke-virtual {p4}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "No cmk for adding engine. :: this must be migration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    move v2, p2

    move v3, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I

    move-result v6

    if-nez v6, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setState(I)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap3(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "engine added! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v6

    :cond_4
    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addEngineInternalLocked :: failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private assignEngineId(Ljava/lang/String;)I
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v0, 0x3e8

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "custom engine. assign custom engine id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "custom engine : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", id assigned. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    return v1
.end method

.method private bootInternal(I)I
    .locals 3

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bootInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootNative(I)I

    move-result v0

    return v0
.end method

.method private bootNative(I)I
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap1(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap3(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    :cond_1
    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not knox container! boot failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "Migration from SDP v1(TMR)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bootInternal :: migration attempt failed. unknown userid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xb

    return v2

    :cond_3
    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "bootInternal :: SDP user is there but no SdpEngineInfo. This must be SDP v1 -> v1.1 migration"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v2, p1

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez v8, :cond_4

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setFlag(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    monitor-exit v2

    invoke-direct {p0, v8}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILcom/samsung/android/knox/sdp/core/SdpCreationParam;[B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v9

    monitor-exit v10

    if-eqz v9, :cond_5

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create engine info/creation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :catchall_1
    move-exception v3

    monitor-exit v2

    throw v3

    :catchall_2
    move-exception v2

    monitor-exit v10

    throw v2

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/SdpManagerService;->nativeOnBoot(II)I

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bootNative :: failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xc

    return v2

    :cond_6
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_3
    invoke-direct {p0, v0, v3}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v2

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_8

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bootInternal :: upgrade detected. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] -> ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpManagerService;->onMigrationInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "bootInternal :: Failed..."

    invoke-static {v2, v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    monitor-exit v3

    :cond_8
    const/4 v2, 0x0

    return v2

    :catchall_3
    move-exception v3

    monitor-exit v2

    throw v3

    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private cacheMasterKey(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cacheMasterKey :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "SdpManagerService"

    sget-object v2, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

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

.method private clearCachedMasterKey(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearCachedMasterKey (CMK) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private clearFailureCount(I)V
    .locals 1

    sget-object v0, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private clearResetPasswordKey(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearResetPasswordKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private createKeys(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11

    if-nez p1, :cond_0

    const/4 v5, 0x0

    return-object v5

    :cond_0
    const-string/jumbo v5, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onUserAdded :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/data/system/users/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "baseDir exists but not a directory! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "couldn\'t create directory "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9, v4}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error in addEngine failed to store resetToken "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x0

    return-object v5

    :cond_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0, v4}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateCMK()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v8, "can\'t generate CMK"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_5
    if-nez p3, :cond_4

    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v8, "can\'t create keys for MDPFF SDP without RST_TOKEN"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_7
    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v8, "no password given. #2"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v1, p3, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_b

    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v8, "storeCMK(RST_TOKEN) failed"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_9
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v1, p2, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v8, "storeCMK(PW) failed"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_a
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {v5, v8, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateAndStoreCMK(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_b
    const/4 v3, 0x0

    if-nez p2, :cond_c

    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    const/4 v9, 0x2

    const/16 v10, 0x20

    invoke-virtual {v5, v8, p3, v9, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_d

    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v8, "internal error!, can\'t retrieve CMK"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_c
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    const/4 v9, 0x1

    const/16 v10, 0x20

    invoke-virtual {v5, v8, p2, v9, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_d
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    return-object v2
.end method

.method private deleteTokenInternal(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/TimaHelper;->checkEntry(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private dumpCache()V
    .locals 0

    return-void
.end method

.method private enrollInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v4

    if-eq v4, v6, :cond_0

    const/4 v4, -0x6

    return v4

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    return v4

    :cond_1
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1, v0, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    return v4

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, -0x2

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v5, 0x20

    invoke-virtual {v4, v1, v2, v6, v5}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1, v0, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    return v3

    :cond_4
    const-string/jumbo v4, "SdpManagerService"

    const-string/jumbo v5, "enrollInternal :: Master key is not found in the map"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v4, -0x63

    return v4
.end method

.method private getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 4

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez v0, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "engine map doesn\'t have engine info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v6

    if-nez v6, :cond_1

    return-object v7

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v7

    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_5

    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->getManagedProfileAlias(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_7

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    return-object v1

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    invoke-static {v5}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-object v7
.end method

.method private getFailureCount(I)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getManagedProfileAlias(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getPadded([BI)[B
    .locals 3

    const/4 v2, 0x0

    new-array v0, p2, [B

    invoke-static {v0, v2, p2, v2}, Ljava/util/Arrays;->fill([BIIB)V

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRstTokenFromTima(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v4, :cond_1

    :cond_0
    return-object v5

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    :goto_0
    return-object v1

    :cond_2
    const-string/jumbo v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRstTokenFromTima :: entry not found. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleEmptyListenerRoll(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$ListenerRoll;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/SdpManagerService$ListenerRoll;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    return-void
.end method

.method private handlePkgRemoved(ILjava/lang/String;)V
    .locals 11

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    invoke-static {v6, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap3(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v6}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap0(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v6, v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap1(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v6

    if-ne v6, p1, :cond_1

    const-string/jumbo v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "FOUND PACKAGE handlePkgRemoved :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/data/system/users/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v8, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10, v4}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v8, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->remove(I)V

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v6, v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap4(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v6}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap3(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    invoke-direct {p0, v4}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v5

    const-string/jumbo v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved engine removed! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string/jumbo v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved removing dir :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_0
    :try_start_3
    const-string/jumbo v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved removeEngine :: failed ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v8, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t find engine info ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_2
    monitor-exit v7

    return-void
.end method

.method private handleUserAdded(I)V
    .locals 13

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v2

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserAdded :: do not handle for bmode user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserAdded :: do not handle for knox user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is identified as managed profile..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    if-nez v2, :cond_3

    const/4 v8, 0x0

    :goto_0
    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: Base directory has been set up... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: Managed profile is not appicable to engine creation... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap4(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z

    move-result v8

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleUserAdded for SDP "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v6, 0x6

    move v2, p1

    move v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v0, v12, v10}, Lcom/android/server/SdpManagerService;->createKeys(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    if-nez v7, :cond_6

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded failed to create keys for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v12, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILcom/samsung/android/knox/sdp/core/SdpCreationParam;[B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    monitor-exit v12

    invoke-direct {p0, v7}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    if-eqz v9, :cond_7

    invoke-virtual {p0, v0}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded failed to create engine info/creation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception v2

    monitor-exit v12

    throw v2

    :cond_7
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap6(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z

    :cond_8
    return-void
.end method

.method private handleUserRemoved(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "handleUserRemoved SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v2

    if-nez v0, :cond_1

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "handleUserRemoved removeEngine :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_1
    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserRemoved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap4(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap3(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v1

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserRemoved engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserRemoved removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAccumulatedFailure(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getFailureCount(I)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->clearFailureCount(I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isBiometricLockEnabled(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isFingerprintLockscreen(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->isBiometricLockEnabled(II)Z

    move-result v0

    return v0
.end method

.method private isFirstBootUnlockRequired(I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isDeviceProvisionedInSettingsDb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private isIrisLockscreen(I)Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->isBiometricLockEnabled(II)Z

    move-result v0

    return v0
.end method

.method private isKnoxEngine(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-lt p1, v1, :cond_0

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isLicensed()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SdpServiceKeeper;->isLicensed(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method private isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isPrivileged(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isPwdChangeRequested()Z
    .locals 6

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string/jumbo v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPwdChangeRequested :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isSdpUserZeroSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureUnlockRequired(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SecureUnlock :: Not a default engine... Skip secure unlock... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v2

    const-string/jumbo v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SecureUnlock :: User : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v7, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Lcom/android/server/SdpManagerService;->isAccumulatedFailure(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v4, "Failure count has been fully accumulated...Secure unlock required!"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return v3

    :cond_1
    if-nez p2, :cond_2

    move v0, v3

    :goto_0
    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SecureUnlock :: Lowest security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const-string/jumbo v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SecureUnlock :: Quality for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4

    const-string/jumbo v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SecureUnlock :: Very low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isFingerprintLockscreen(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SecureUnlock :: Low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isIrisLockscreen(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SecureUnlock :: Low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    const-string/jumbo v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SecureUnlock :: Not applicable... Skip secure unlock... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private isSupportedDevice()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isSystemComponent(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private lockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 13

    const/16 v12, -0xe

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_0

    const/4 v7, -0x5

    return v7

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v6

    const-string/jumbo v9, "SdpManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "lockInternal "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v6}, Lcom/android/server/SdpManagerService;->lockNative(II)I

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "lockInternal :: native failed ret "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "lockInternal :: native failed :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0xc

    return v7

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->clearCachedMasterKey(I)V

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->clearResetPasswordKey(I)V

    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v10, 0x1

    :try_start_0
    invoke-direct {p0, p1, v10}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v2, 0x0

    const-string/jumbo v9, "lock_settings"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/LockSettingsService;

    if-eqz v5, :cond_2

    :try_start_1
    const-string/jumbo v9, "lockscreen.password_type"

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v9, v10, v11, v1}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    long-to-int v2, v10

    :cond_2
    :goto_0
    const v9, 0x61000

    if-eq v2, v9, :cond_3

    if-nez v2, :cond_4

    move v3, v7

    :goto_1
    if-eqz v3, :cond_6

    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v7}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v7}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v7, "SdpManagerService"

    const-string/jumbo v8, "couldn\'t remove ECMK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :catchall_0
    move-exception v7

    monitor-exit v9

    throw v7

    :cond_3
    move v3, v7

    goto :goto_1

    :cond_4
    move v3, v8

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v7}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "SdpManagerService"

    const-string/jumbo v8, "couldn\'t remove KEK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_6
    return v8

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private lockNative(II)I
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceLocked(II)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xc

    return v0

    :cond_0
    return v1
.end method

.method static native nativeMemGetSensitiveProcess()[I
.end method

.method static native nativeMemSetProcessSensitive(I)I
.end method

.method static native nativeOnBoot(II)I
.end method

.method static native nativeOnChangePassword(I[B[B)I
.end method

.method static native nativeOnDeviceLocked(II)I
.end method

.method static native nativeOnDeviceUnlocked(I[B)I
.end method

.method static native nativeOnMigration(IIII[B)I
.end method

.method static native nativeOnUserAdded(II[B)I
.end method

.method static native nativeOnUserRemoved(II)I
.end method

.method private notifyUnlockFailure(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getFailureCount(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/SdpManagerService;->setFailureCount(II)V

    return-void
.end method

.method private onCipherModeMigration(I)V
    .locals 5

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCipherModeMigration :: Inisde... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->getECMKLength(II)I

    move-result v0

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCipherModeMigration :: Detected cipher length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_0

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "onCipherModeMigration :: Unexpected condition..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "onCipherModeMigration :: Unexpected condition..."

    invoke-static {v2, v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v2, 0x30

    if-ge v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->isKnoxEngine(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "onCipherModeMigration :: Legacy header needed..."

    invoke-static {v2, v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v3, 0x10

    invoke-virtual {v2, p1, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->addLegacyHeader(II)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/SdpManagerService;->setSDPMigrating(IZ)V

    return-void

    :cond_1
    const/16 v2, 0x40

    if-lt v0, v2, :cond_3

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "onCipherModeMigration :: Cipher already has maximum length..."

    invoke-static {v2, v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCipherModeMigration :: << DUMP >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v3, 0x20

    invoke-virtual {v2, p1, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->addLegacyHeader(II)V

    return-void
.end method

.method private onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 8

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit v6

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    invoke-interface {v5}, Landroid/os/ISdpListener;->onEngineRemoved()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_1
    move-exception v4

    :try_start_4
    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_1
    monitor-exit v6

    return-void
.end method

.method private onMigrationInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    if-nez p1, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v6

    const/4 v0, 0x6

    if-ne v6, v0, :cond_1

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: already up to date. version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_1
    if-nez v6, :cond_2

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: SDP previously disabled. version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_2
    const/4 v0, 0x1

    if-ne v6, v0, :cond_3

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: MIGRATE from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    add-int/lit8 v6, v6, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: SKIPPED"

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-ne v6, v11, :cond_4

    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 2 -> 3 not implemented (this is targeted for TMR/KMR)"

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    add-int/lit8 v6, v6, 0x1

    :try_start_1
    invoke-virtual {p1, v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: SKIPPED"

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-ne v6, v12, :cond_6

    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 3 -> 4)"

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, -0x63

    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILcom/samsung/android/knox/sdp/core/SdpCreationParam;[B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v8

    monitor-exit v9

    if-eqz v8, :cond_5

    const/4 v0, -0x4

    if-ne v8, v0, :cond_b

    :cond_5
    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addEngine ret :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    add-int/lit8 v6, v6, 0x1

    :try_start_3
    invoke-virtual {p1, v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v1

    :cond_6
    const/4 v0, 0x4

    if-ne v6, v0, :cond_7

    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 4 -> 5)"

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onCipherModeMigration(I)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    add-int/lit8 v6, v6, 0x1

    :try_start_4
    invoke-virtual {p1, v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    monitor-exit v1

    :cond_7
    const/4 v0, 0x5

    if-ne v6, v0, :cond_a

    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 5 -> 6)"

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v7

    if-eq v7, v12, :cond_8

    if-ne v7, v11, :cond_9

    :cond_8
    and-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setFlag(I)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    monitor-exit v1

    :cond_a
    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: DONE"

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v9

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_b
    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: failed! can\'t create engine for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: failed! can\'t create engine for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onStateChange(II)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    monitor-enter v11

    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/SdpManagerService$ListenerRoll;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/server/SdpManagerService$ListenerRoll;->get()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_0
    if-ltz v3, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/SdpManagerService$StateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v9}, Lcom/android/server/SdpManagerService$StateListener;->get()Landroid/os/ISdpListener;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_0

    move/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/ISdpListener;->onStateChange(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_2
    if-nez v5, :cond_1

    :try_start_2
    invoke-virtual {v9}, Lcom/android/server/SdpManagerService$StateListener;->dispose()V

    :cond_1
    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :catch_1
    move-exception v1

    :try_start_3
    const-string/jumbo v10, "SdpManagerService"

    const-string/jumbo v12, "Listener might be dead..."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SdpManagerService;->handleEmptyListenerRoll(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    const/4 v8, 0x0

    :goto_3
    const-string/jumbo v10, "SdpManagerService"

    const-string/jumbo v12, "onStateChange :: Engine Id : %d, State : %d, Roll Size : %d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v11

    return-void

    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/SdpManagerService$ListenerRoll;

    invoke-virtual {v10}, Lcom/android/server/SdpManagerService$ListenerRoll;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    goto :goto_3
.end method

.method private onStateChange(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)V
    .locals 8

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit v6

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    invoke-interface {v5, p2}, Landroid/os/ISdpListener;->onStateChange(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_1
    move-exception v4

    :try_start_4
    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_1
    monitor-exit v6

    return-void
.end method

.method private recordException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v3, "Leave a trace of the exception...!"

    invoke-static {p1, v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    return-void
.end method

.method private recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->recordException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private registerListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Landroid/os/ISdpListener;)I
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const/4 v3, -0x5

    return v3

    :cond_0
    const-string/jumbo v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener from pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    new-instance v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, p2}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;-><init>(Lcom/android/server/SdpManagerService;Ljava/lang/String;Landroid/os/ISdpListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->setCaller(I)V

    invoke-interface {p2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    return v6

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v3, "SdpManagerService"

    const-string/jumbo v5, "Failed to link to listener death"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private removeEngineNative(II)I
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnUserRemoved(II)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEngineNative :: failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xc

    return v0

    :cond_0
    return v1
.end method

.method private resetPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v6, -0x2

    if-nez p1, :cond_0

    const/4 v3, -0x5

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v6

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    return v3

    :cond_3
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v4, 0x2

    const/16 v5, 0x20

    invoke-virtual {v3, v1, p2, v4, v5}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    :cond_4
    if-nez v0, :cond_5

    return v6

    :cond_5
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, p3, v4}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "SdpManagerService"

    const-string/jumbo v4, "resetPasswordInternal :: failed to storeCMK"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0xe

    return v3

    :cond_6
    invoke-direct {p0, v1, v0}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    const/4 v3, 0x0

    return v3
.end method

.method private saveTokenInternal(ILjava/lang/String;[B)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private sendBroadcastForStateChange(III)V
    .locals 8

    const/high16 v7, 0x10000000

    const/high16 v6, 0x4000000

    const/16 v5, 0x20

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.sdp.SDP_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.action.SDP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcastAsUser(INTENT_SDP_STATE_CHANGED, state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcastAsUser(ACTION_SDP_STATE_CHANGED, state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SDP_ENGINE_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.SDP_ENGINE_STATE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_0

    const/4 v7, -0x5

    return v7

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setState(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->onStateChange(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v7

    invoke-direct {p0, v7, p2}, Lcom/android/server/SdpManagerService;->onStateChange(II)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-direct {p0, v6, v0, p2}, Lcom/android/server/SdpManagerService;->sendBroadcastForStateChange(III)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Lcom/samsung/android/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :cond_2
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    if-eqz v7, :cond_3

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v6, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v7

    if-nez v7, :cond_3

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v0, p2}, Lcom/android/server/SdpManagerService;->sendBroadcastForStateChange(III)V

    goto :goto_0
.end method

.method private setFailureCount(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Failure count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/SdpManagerService;->mFailureCount:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private setPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I
    .locals 10

    if-nez p1, :cond_0

    const/4 v7, -0x5

    return v7

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isPwdChangeRequested()Z

    move-result v4

    const-string/jumbo v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal:: isPwdChangeRequested "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    return v7

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    const/4 v7, -0x6

    return v7

    :cond_4
    const-string/jumbo v7, "SdpManagerService"

    const-string/jumbo v8, "setPasswordInternal:: removing ECMK_PWD"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "SdpManagerService"

    const-string/jumbo v8, "Couldn\'t remove ECMK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0xe

    return v7

    :cond_5
    const/4 v7, -0x1

    return v7

    :cond_6
    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_7
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v1, p2, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "SdpManagerService"

    const-string/jumbo v8, "setPasswordInternal :: failed to storeCMK"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0xe

    return v7

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    const/4 v7, -0x2

    return v7

    :cond_9
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v8, 0x2

    const/16 v9, 0x20

    invoke-virtual {v7, v2, v5, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    if-nez v1, :cond_7

    const/4 v7, -0x2

    return v7

    :cond_a
    const/16 v7, -0x63

    return v7

    :cond_b
    if-eqz v4, :cond_d

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v7, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v6

    if-eqz v6, :cond_c

    const-string/jumbo v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal::unlockNative :: failed ret "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal::unlockNative :: failed :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->clearCachedMasterKey(I)V

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    const/16 v7, -0xc

    return v7

    :cond_c
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v8, 0x2

    :try_start_0
    invoke-direct {p0, p1, v8}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    :goto_0
    const/4 v7, 0x0

    return v7

    :catchall_0
    move-exception v8

    monitor-exit v7

    throw v8

    :cond_d
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v0, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    const/4 v11, -0x2

    const/16 v10, 0x20

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    const-string/jumbo v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlock :: Internal... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return v8

    :cond_1
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5, v2, p2, p3, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v8

    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    :goto_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockNative :: failed ret "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockNative :: failed :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->clearCachedMasterKey(I)V

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    const/16 v5, -0xc

    return v5

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->isSecureUnlockRequired(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlock :: onDeviceUnLocked from TIMA "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v6, "unlock :: Invalid reset token"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_4
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v6, 0x2

    invoke-virtual {v5, v2, v3, v6, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    if-nez v1, :cond_8

    return v11

    :cond_5
    const-string/jumbo v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlock :: onDeviceUnLocked found ECMK "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    return v8

    :cond_6
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5, v2, p2, p3, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    if-nez v2, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to unlock SDP... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->notifyUnlockFailure(I)V

    :cond_7
    return v8

    :cond_8
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v6, 0x2

    :try_start_0
    invoke-direct {p0, p1, v6}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return v9

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6
.end method

.method private unlockNative(I[B)I
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x3

    return v0

    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceUnlocked(I[B)I

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xc

    return v0

    :cond_2
    return v2
.end method

.method private unlockViaTrustedInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x2

    if-nez p1, :cond_0

    const/4 v4, -0x5

    return v4

    :cond_0
    if-nez p2, :cond_1

    return v6

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v5, 0x20

    invoke-virtual {v4, v2, p2, v8, v5}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v6

    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative :: failed ret "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative :: failed :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    const/16 v4, -0xc

    return v4

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x2

    :try_start_0
    invoke-direct {p0, p1, v5}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return v7

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method private unregisterListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Landroid/os/ISdpListener;)I
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const/4 v3, -0x5

    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v4

    return v6

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    invoke-interface {v3}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {p2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit v4

    return v6
.end method

.method private zeroOut(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    const/4 p1, 0x0

    :cond_0
    return-void
.end method

.method private zeroOut([B)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/4 p1, 0x0

    return-void
.end method


# virtual methods
.method public addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "SdpManagerService"

    const-string/jumbo v8, "SDP not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0x9

    return v7

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v16

    const-string/jumbo v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "calling pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "calling uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "my pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "my uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const-string/jumbo v7, "SdpManagerService"

    const-string/jumbo v8, "addEngine :: invalid arg"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x3

    return v7

    :cond_1
    const-string/jumbo v7, "SdpManagerService"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-static {v6}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x3

    return v7

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    const-string/jumbo v17, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/SdpManagerService;->assignEngineId(Ljava/lang/String;)I

    move-result v5

    sget-object v7, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5

    const/4 v7, 0x0

    move-object/from16 v0, v19

    array-length v8, v0

    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v18, v19, v7

    const-string/jumbo v9, "SdpManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addEngine :: calling getPackagesForUid  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v18

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "adding engine :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addEngine :: failed.. engine["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] already exists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x4

    monitor-exit v21

    return v7

    :cond_6
    :try_start_1
    new-instance v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getFlags()I

    move-result v8

    const/4 v7, 0x1

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, -0x7

    monitor-exit v21

    return v7

    :cond_7
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->isLicensed()Z

    move-result v7

    if-nez v7, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_8
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/SdpManagerService;->createKeys(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v12

    if-nez v12, :cond_f

    const-string/jumbo v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to create keys for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v7, -0xc

    monitor-exit v21

    return v7

    :cond_a
    :try_start_3
    const-string/jumbo v7, "SdpManagerService"

    const-string/jumbo v8, "Permission denied to invoke engine control API"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, -0x7

    monitor-exit v21

    return v7

    :cond_b
    if-eqz p2, :cond_c

    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    const/4 v7, -0x1

    monitor-exit v21

    return v7

    :cond_d
    if-eqz p3, :cond_e

    :try_start_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    const/16 v8, 0x20

    if-ge v7, v8, :cond_9

    :cond_e
    const/4 v7, -0x2

    monitor-exit v21

    return v7

    :cond_f
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    move-object/from16 v7, p0

    move-object v8, v3

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILcom/samsung/android/knox/sdp/core/SdpCreationParam;[B)I

    move-result v20

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_10
    monitor-exit v21

    return v20

    :catchall_0
    move-exception v7

    monitor-exit v21

    throw v7
.end method

.method public addEngineNative(II[B)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    if-eqz p3, :cond_1

    array-length v0, p3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    :cond_1
    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addEngineNative :: invalid cmk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/android/server/SdpManagerService;->nativeOnUserAdded(II[B)I

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addEngineNative :: native failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public adjustSdpMinor(ZI)V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    const-string/jumbo v3, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Flag adjustment - Current version : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const-string/jumbo v1, "NULL"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v1

    const/4 v3, 0x6

    if-lt v1, v3, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v1

    if-eq v1, v5, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setFlag(I)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v3, "Flag adjustment - Flag adjusted to minor"

    invoke-static {v1, v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setFlag(I)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v3, "Flag adjustment - Flag adjusted to mdfpp"

    invoke-static {v1, v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public allow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v0

    if-nez v4, :cond_0

    const/4 v6, -0x5

    :goto_0
    return v6

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    new-instance v5, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {v5, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->addPrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I

    move-result v6

    goto :goto_0
.end method

.method public boot(I)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x9

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootInternal(I)I

    move-result v0

    return v0
.end method

.method public changeCMKNative(I[B[B)I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x3

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x9

    return v0

    :cond_0
    const-string/jumbo v0, "changeCMKNative"

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    if-nez p2, :cond_1

    return v2

    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    :cond_2
    return v2

    :cond_3
    invoke-static {p1, p2, p3}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeCMKNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xc

    return v0

    :cond_4
    return v3
.end method

.method public clearEncPkgCache(ILjava/lang/String;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Permission denied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v1, "cache"

    aput-object v1, v4, v8

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v6

    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v7

    if-nez v6, :cond_2

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Failed to clear data part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    if-nez v7, :cond_3

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Failed to clear ext part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_3
    return v5
.end method

.method public clearEncPkgData(ILjava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Permission denied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v1, "/"

    aput-object v1, v4, v5

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v6

    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v7

    if-nez v6, :cond_2

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Failed to clear data part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    if-nez v7, :cond_3

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Failed to clear ext part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    return v8
.end method

.method public createEncPkgDir(ILjava/lang/String;)I
    .locals 3

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x9

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    invoke-static {v1, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap0(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    const/16 v1, -0xc

    return v1
.end method

.method public deleteToeknFromTrusted(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v3, "deleteToeknFromTrusted"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/16 v1, -0x63

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x3

    return v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->deleteTokenInternal(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public disallow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v0

    if-nez v4, :cond_0

    const/4 v6, -0x5

    :goto_0
    return v6

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    new-instance v5, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {v5, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->removePrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I

    move-result v6

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: Can\'t dump SDP from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " without permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "SDP Engine List :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez v1, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "Engine Id : %5d   User ID : %5d   Version : %d   State : %d   Flag : %10s ( %d )   Alias : %s"

    const/4 v3, 0x7

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v6, v7

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SDP_MINOR"

    :goto_2
    const/4 v7, 0x4

    aput-object v3, v6, v7

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x5

    aput-object v3, v6, v7

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x6

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    :try_start_1
    const-string/jumbo v3, "SDP_MDFPP"

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v3, "Sanity of key pair :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_3
    if-ge v0, v2, :cond_5

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez v1, :cond_4

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const-string/jumbo v3, "Engine Id : %5d - ( %5d %5d )"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->getECMKLength(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->getECMKLength(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_5
    monitor-exit v4

    :goto_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void

    :cond_6
    const-string/jumbo v3, "Not Supported..."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x9

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enroll :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x5

    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x7

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->enrollInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public exists(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, -0x5

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v2

    if-eqz v0, :cond_0

    const/4 v1, -0x4

    :cond_0
    return v1

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public getEncPkgDataSizeInfo(ILjava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 12

    const/4 v6, 0x2

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v6, "SDP not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v5, "/"

    aput-object v5, v0, v11

    const-string/jumbo v5, "cache"

    aput-object v5, v0, v10

    sget-object v5, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v1

    sget v5, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    invoke-virtual {v1, p1, p2, v5, v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v3

    sget v5, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    invoke-virtual {v1, p1, p2, v5, v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v4

    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v6, "Failed to get size info!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2
    array-length v5, v3

    if-ne v5, v6, :cond_1

    array-length v5, v4

    if-ne v5, v6, :cond_1

    new-instance v2, Landroid/content/pm/PackageStats;

    invoke-direct {v2, p2, p1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    aget-wide v6, v3, v11

    aget-wide v8, v3, v10

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->dataSize:J

    aget-wide v6, v3, v10

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    aget-wide v6, v4, v11

    aget-wide v8, v4, v10

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    aget-wide v6, v4, v10

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    return-object v2
.end method

.method public getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public getSupportedSDKVersion()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v0, 0x3ff3333333333333L    # 1.2

    :cond_0
    return-wide v0
.end method

.method public isLicensed(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/16 v1, -0x63

    return v1
.end method

.method public isSDPEnabled(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isSdpMigrating(I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-string/jumbo v1, "isSdpMigrating"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v2

    return v3

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMigrating()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isSdpSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v2

    return v2
.end method

.method public lock(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, -0x7

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x9

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x5

    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->lockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    return v1

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Permission denied to invoke engine control API"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public migrate(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SdpManagerService"

    const-string/jumbo v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x9

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public onBoot(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x9

    return v1

    :cond_0
    const-string/jumbo v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBoot :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "onBoot"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootNative(I)I

    move-result v0

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v1

    :cond_1
    if-nez v0, :cond_2

    return v0

    :cond_2
    const/16 v1, -0x63

    return v1
.end method

.method public onChangePassword(I[B[B)Z
    .locals 6

    const/16 v3, 0x20

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const-string/jumbo v2, "onChangePassword"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p2, v3}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v1

    invoke-direct {p0, p3, v3}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error to handle onChangePassword [persona : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    const/4 v2, 0x1

    return v2
.end method

.method public onDeviceLocked(I)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDeviceLocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "onDeviceLocked"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p1, p1}, Lcom/android/server/SdpManagerService;->lockNative(II)I

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lockInternal failed ret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    monitor-exit v3

    return v5

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v6

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onDeviceUnlocked(I[B)Z
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "SdpManagerService"

    const-string/jumbo v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    const-string/jumbo v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDeviceUnLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "onDeviceUnlocked"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/16 v3, 0x20

    invoke-direct {p0, p2, v3}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unlockNative failed ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    monitor-exit v4

    return v6

    :cond_2
    const/4 v3, 0x2

    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    const/4 v3, 0x1

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onMigration(IZ[B)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    if-nez v0, :cond_1

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "can\'t find SDP INFO xml. Migration failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/server/SdpManagerService;->onMigrationInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Migration failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Migration OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public onPackageRemoved(ILjava/lang/String;)V
    .locals 7

    const-string/jumbo v2, "onPackageRemoved"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "onPackageRemoved :: Removed package detected... UserId : %d, Pkg : %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/SdpManagerService;->mIsReady:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "SdpManagerService is not ready..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/SdpManagerService$SdpHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserAdded(I[BI)Z
    .locals 9

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUserAdded :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "onUserAdded"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v4, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x0

    move v2, p1

    move v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    const/16 v2, 0x20

    invoke-direct {p0, p2, v2}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILcom/samsung/android/knox/sdp/core/SdpCreationParam;[B)I

    move-result v8

    invoke-direct {p0, v7}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    if-eqz v8, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public onUserRemoved(I)Z
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const-string/jumbo v2, "onUserRemoved"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUserRemoved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v2

    if-nez v0, :cond_1

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "onUserRemoved :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap4(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap3(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x1

    return v2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerClient(ILandroid/os/ISdpListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "SdpManagerService"

    const-string/jumbo v4, "SDP not supported devices..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SdpManagerService$ListenerRoll;

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/server/SdpManagerService$ListenerRoll;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/SdpManagerService$ListenerRoll;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$ListenerRoll;)V

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v0, Lcom/android/server/SdpManagerService$StateListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/SdpManagerService$StateListener;-><init>(Lcom/android/server/SdpManagerService;ILandroid/os/ISdpListener;)V

    invoke-virtual {v0}, Lcom/android/server/SdpManagerService$StateListener;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Lcom/android/server/SdpManagerService$ListenerRoll;->enroll(Lcom/android/server/SdpManagerService$StateListener;)Z

    move-result v1

    :cond_4
    const-string/jumbo v3, "SdpManagerService"

    const-string/jumbo v5, "registerClient :: Engine Id = %d, Roll Size = %d, Result = %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2}, Lcom/android/server/SdpManagerService$ListenerRoll;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public registerListener(Ljava/lang/String;Landroid/os/ISdpListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x9

    return v1

    :cond_0
    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "registerListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, -0x5

    monitor-exit v1

    return v2

    :cond_1
    monitor-exit v1

    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->registerListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Landroid/os/ISdpListener;)I

    move-result v1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public removeEngine(Ljava/lang/String;)I
    .locals 6

    const/4 v4, -0x7

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x9

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v2

    if-nez v0, :cond_1

    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "removeEngine :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x5

    return v2

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    return v4

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap4(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap3(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v1

    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return v1

    :cond_4
    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_5
    const-string/jumbo v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method removeKeys(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 6

    if-eqz p1, :cond_3

    const-string/jumbo v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeKeys :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/sec/knox/container/util/KeyManagementUtil;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/sec/knox/container/util/KeyManagementUtil;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    const-string/jumbo v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeKeys :: Key pair of #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " removed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v3, "SdpManagerService"

    const-string/jumbo v4, "removeKeys :: Failed. info null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, -0x7

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x9

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x5

    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->resetPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Permission denied to invoke engine control API"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v4, "saveTokenIntoTrusted"

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/16 v2, -0x63

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, -0x3

    return v4

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v3, v0}, Lcom/android/server/SdpManagerService;->deleteTokenInternal(ILjava/lang/String;)Z

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/SdpManagerService;->saveTokenInternal(ILjava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    :cond_2
    return v2
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, -0x7

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x9

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x5

    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->setPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Permission denied to invoke engine control API"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public setSDPMigrating(IZ)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "setSDPMigrating"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setIsMigrating(Z)V

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->-wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    const-string/jumbo v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSDPMigrating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public systemReady()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "systemReady SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SdpManagerService ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "systemReady"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    new-instance v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpManagerService$SdpHandler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, -0x7

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x9

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x5

    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Permission denied to invoke engine control API"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, -0x7

    const-string/jumbo v7, "unlockViaTrusted"

    invoke-static {v7}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "SdpManagerService"

    const-string/jumbo v8, "SDP not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0x9

    return v7

    :cond_0
    iget-object v8, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v7, "SdpManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unlockViaTrusted :: Couldn\'t find engine info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x5

    monitor-exit v8

    return v7

    :cond_1
    monitor-exit v8

    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_2

    return v9

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v7, v6, v0}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    :cond_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->unlockViaTrustedInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I

    move-result v7

    return v7

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "SdpManagerService"

    const-string/jumbo v8, "Permission denied to invoke engine control API"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method public unregisterClient(ILandroid/os/ISdpListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v6, "SDP not supported devices..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SdpManagerService$ListenerRoll;

    if-nez v3, :cond_3

    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v7, "unregisterClient :: Already cleared..."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    const/4 v4, 0x0

    :goto_1
    const-string/jumbo v5, "SdpManagerService"

    const-string/jumbo v7, "unregisterClient :: Engine Id = %d, Roll Size = %d, Result = %d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/SdpManagerService$ListenerRoll;->get()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$StateListener;

    invoke-interface {p2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/SdpManagerService$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/android/server/SdpManagerService$StateListener;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleEmptyListenerRoll(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_6
    :try_start_2
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SdpManagerService$ListenerRoll;

    invoke-virtual {v5}, Lcom/android/server/SdpManagerService$ListenerRoll;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_1
.end method

.method public unregisterListener(Ljava/lang/String;Landroid/os/ISdpListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x9

    return v1

    :cond_0
    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "unregisterListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, -0x5

    monitor-exit v1

    return v2

    :cond_1
    monitor-exit v1

    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->unregisterListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Landroid/os/ISdpListener;)I

    move-result v1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x9

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verify :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x5

    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x7

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method
