.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$1;,
        Lcom/android/server/connectivity/Vpn$2;,
        Lcom/android/server/connectivity/Vpn$Connection;,
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    }
.end annotation


# static fields
.field private static final ANDROID_BC_PROVIDER:Ljava/lang/String; = "AndroidKeyStoreBCWorkaroundProvider"

.field private static final CC_PROPERTY:Ljava/lang/String; = "security.mdpp"

.field private static final DBG:Z

.field private static final LOGD:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final PER_APP_VPN:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field private static mSecurityManager:Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;


# instance fields
.field private final KNOXVPN_CONTAINER_ENABLED:I

.field private KNOXVPN_FEATURE:I

.field private final KNOXVPN_MDM_ENABLED:I

.field private mAddress:Ljava/lang/String;

.field private mAlwaysOn:Z

.field private mBlockedUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEgressIface:Ljava/lang/String;

.field private volatile mEnableLockdownVpn:Z

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mIsPackageIntentReceiverRegistered:Z

.field private mKnoxOldInterface:Ljava/lang/String;

.field private mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

.field private mLegacyAddress:Ljava/lang/String;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mLockdown:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mProfileName:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mUserHandle:I

.field private mV6Address:Ljava/lang/String;

.field private mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

.field private mVpnUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field private mdppModeEnabled:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Vpn;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/Vpn;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/Vpn;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/connectivity/Vpn;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/connectivity/Vpn;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/connectivity/Vpn;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mdppModeEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableLockdownVpn:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/Vpn;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/server/connectivity/Vpn;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/connectivity/Vpn;Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->securityManagerReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->setAndSaveAlwaysOnPackage(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->testStrongSwanIntegrity()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->SetFirewallForVPN_CCMode(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mEnableLockdownVpn:Z

    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    iput v2, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_MDM_ENABLED:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_CONTAINER_ENABLED:I

    new-instance v1, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mdppModeEnabled:Z

    new-instance v1, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iput p4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    const-string/jumbo v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/net/NetworkInfo;

    const-string/jumbo v2, "VPN"

    const-string/jumbo v3, ""

    const/16 v4, 0x11

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Vpn"

    const-string/jumbo v2, "Problem registering observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private SetFirewallForVPN_CCMode(Ljava/lang/String;Z)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "CC Mode is enforced"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v3, 0x1f4

    const/4 v4, 0x1

    invoke-interface {v2, p1, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v3, 0x1194

    const/4 v4, 0x1

    invoke-interface {v2, p1, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v3, 0x6a5

    const/4 v4, 0x1

    invoke-interface {v2, p1, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "ipsec0"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyAddress:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    const-string/jumbo v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetFirewallForVPN_CCMode enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v3, 0x1f4

    const/4 v4, 0x1

    invoke-interface {v2, v0, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v3, 0x1194

    const/4 v4, 0x1

    invoke-interface {v2, v0, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v3, 0x6a5

    const/4 v4, 0x1

    invoke-interface {v2, v0, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "fe80::/64"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "2000::/4"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    const-string/jumbo v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetFirewallForVPN_CCMode enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "Exception when enabling SetFirewallForVPN_CCMode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "SetFirewallForVPN_CCMode disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "Exception when disabling SetFirewallForVPN_CCMode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private agentConnect()V
    .locals 13

    const/4 v3, 0x0

    const/16 v2, 0xc

    const/4 v12, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/net/NetworkMisc;

    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    iput-boolean v0, v9, Landroid/net/NetworkMisc;->allowBypass:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/Vpn$3;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "VPN"

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v12}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "agentConnect"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    :cond_3
    move v0, v12

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private agentDisconnect()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    :cond_0
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .locals 2

    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1, v0, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    :cond_0
    return-void
.end method

.method private canHaveRestrictedProfile(I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->canHaveRestrictedProfile(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enforceControlPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONTROL_VPN"

    const-string/jumbo v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceControlPermissionOrInternalCaller()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONTROL_VPN"

    const-string/jumbo v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .locals 4

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .locals 4

    const-string/jumbo v3, "[Legacy VPN]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getKnoxVpnFeature()I
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    return v0
.end method

.method private getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnFeature()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object v0

    :cond_1
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    goto :goto_0
.end method

.method private getVpnTypeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "PPTP"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "L2TP_IPSEC_RSA"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "L2TP_IPSEC_PSK"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "IPSEC_XAUTH_RSA"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "IPSEC_XAUTH_PSK"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "IPSEC_IKEV2_RSA"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "IPSEC_IKEV2_PSK"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "IPSEC_HYBRID_RSA"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private hideNotification(I)V
    .locals 6

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    const v5, 0x1080afa

    invoke-virtual {v0, v4, v5, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private isCallerEstablishedOwnerLocked()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCurrentPreparedPackage(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isRunningLocked()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isVpnConnectionSecure([Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "enterprise_policy_new"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getVpnPolicy()Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->checkRacoonSecurity([Ljava/lang/String;)Z

    move-result v0

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private isVpnUserPreConsented(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(IZ)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v4, v14, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v5, v14, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    new-instance v11, Landroid/net/LinkProperties;

    invoke-direct {v11}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v11, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    instance-of v14, v14, Ljava/net/Inet4Address;

    or-int/2addr v4, v14

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    instance-of v14, v14, Ljava/net/Inet6Address;

    or-int/2addr v5, v14

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/RouteInfo;

    invoke-virtual {v11, v12}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    invoke-virtual {v12}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v14, v2, Ljava/net/Inet4Address;

    or-int/2addr v4, v14

    instance-of v14, v2, Ljava/net/Inet6Address;

    or-int/2addr v5, v14

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    instance-of v14, v2, Ljava/net/Inet4Address;

    or-int/2addr v4, v14

    instance-of v14, v2, Ljava/net/Inet6Address;

    or-int/2addr v5, v14

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    new-instance v14, Landroid/net/RouteInfo;

    new-instance v15, Landroid/net/IpPrefix;

    sget-object v16, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v16, 0x7

    invoke-direct/range {v14 .. v16}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    :cond_3
    if-nez v5, :cond_4

    new-instance v14, Landroid/net/RouteInfo;

    new-instance v15, Landroid/net/IpPrefix;

    sget-object v16, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v16, 0x7

    invoke-direct/range {v14 .. v16}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    return-object v11
.end method

.method private maybeRegisterPackageChangeReceiverLocked(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->unregisterPackageChangeReceiverLocked()V

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/UidRange;

    invoke-virtual {v4}, Landroid/net/UidRange;->getStartUser()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_0
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    :cond_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-static {v6}, Lcom/android/server/connectivity/Vpn$Connection;->-get0(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v6

    const v7, 0xffffff

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v6, v7, v0, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_2
    :try_start_4
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    :try_start_5
    const-string/jumbo v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Switched from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v6}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    const/4 v6, 0x0

    :try_start_7
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v7, "prepare"

    invoke-direct {p0, v6, v7}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    :try_start_8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v6

    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    goto :goto_2

    :catch_1
    move-exception v1

    const-string/jumbo v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to disallow UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to call protect() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_2
    move-exception v1

    const-string/jumbo v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to allow UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to call protect() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4
.end method

.method private prepareStatusIntent()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeVpnUserLocked(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "VPN is not active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/UidRange;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    invoke-virtual {v2, v1}, Landroid/net/NetworkAgent;->removeUidRanges([Landroid/net/UidRange;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private securityManagerReady()Z
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/UidRange;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Updating blocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for UIDs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5

    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private declared-synchronized setAndSaveAlwaysOnPackage(Ljava/lang/String;Z)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVpnForcedLocked(Z)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v5, v1}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v5, v1}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    goto :goto_0
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 7

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const-string/jumbo v5, "LOCKDOWN_VPN"

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Vpn"

    const-string/jumbo v5, "showNotification : LOCKDOWN_VPN"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/connectivity/Vpn;->createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const v6, 0x1080afa

    invoke-virtual {v0, v5, v6, v1, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    const-string/jumbo v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private testStrongSwanIntegrity()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "Doing strongSwan integrity test"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->securityManagerReady()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, -0x1

    :try_start_1
    sget-object v3, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;

    invoke-interface {v3}, Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;->verifyVPN()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :goto_0
    :try_start_2
    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "verifyVpn returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "Failed to verifyVPN : exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to do strongSwan integrity test: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :try_start_3
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "Unable to do strongSwan integrity test: Service not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method private uidRangesForUser(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    invoke-virtual {v3, v0}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private unregisterPackageChangeReceiverLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, p2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_6

    const/16 v16, -0x1

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v24, -0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move/from16 v16, v20

    :cond_0
    :goto_1
    move/from16 v17, v20

    goto :goto_0

    :cond_1
    add-int/lit8 v24, v17, 0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    new-instance v24, Landroid/net/UidRange;

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v16, v20

    goto :goto_1

    :cond_2
    const/16 v24, -0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    new-instance v24, Landroid/net/UidRange;

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "[Legacy VPN]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_a

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    const-string/jumbo v12, ""

    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x2080

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v14}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    if-lez v24, :cond_4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v24

    if-lez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1050005

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1050006

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v9, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v5, v1}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    if-eqz p4, :cond_9

    invoke-static/range {p2 .. p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/UidRange;->start:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_7
    new-instance v24, Landroid/net/UidRange;

    add-int/lit8 v25, v20, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v20, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/UidRange;->stop:I

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-gt v0, v1, :cond_3

    new-instance v24, Landroid/net/UidRange;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/UidRange;->stop:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v24

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "persona"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v15}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_3

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/SemPersonaInfo;

    invoke-virtual {v10}, Lcom/samsung/android/knox/SemPersonaInfo;->getId()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v24, "Vpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Add UID with prefix "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v10}, Lcom/samsung/android/knox/SemPersonaInfo;->getId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_0
    move-exception v7

    :try_start_1
    new-instance v24, Ljava/lang/IllegalStateException;

    const-string/jumbo v25, "Invalid application"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v24

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24

    :cond_a
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto/16 :goto_3
.end method

.method public declared-synchronized appliesToUid(I)Z
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    invoke-virtual {v0, p1}, Landroid/net/UidRange;->contains(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    monitor-exit p0

    return v2

    :cond_2
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "64:ff9b::"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x1040483

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x1040485

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080afa

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x62

    iput v3, v0, Landroid/app/Notification;->flags:I

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const v5, 0x1040484

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v5, v4, v6

    const v5, 0x1040486

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v6, p1, :cond_0

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v6, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_1
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 28

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    move/from16 v25, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    const/16 v24, 0x0

    monitor-exit p0

    return-object v24

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v24

    if-nez v24, :cond_1

    const/16 v24, 0x0

    monitor-exit p0

    return-object v24

    :cond_1
    :try_start_2
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v24, "android.net.VpnService"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v20

    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v24

    if-eqz v24, :cond_2

    new-instance v24, Ljava/lang/SecurityException;

    const-string/jumbo v25, "Restricted users cannot establish VPNs"

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v8

    :try_start_4
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot find "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v24

    :try_start_5
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v24

    monitor-exit p0

    throw v24

    :cond_2
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v25

    invoke-interface {v0, v12, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-nez v11, :cond_3

    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot find "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_3
    const-string/jumbo v24, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " does not require "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :try_start_7
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object/from16 v18, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->jniCreate(IZ)I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v22

    :try_start_8
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v25, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    const-string/jumbo v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v10

    :try_start_9
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v13, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v25, "At least one address must be specified"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_6
    new-instance v7, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    const v26, 0x4000001

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v12, v7, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v24

    if-nez v24, :cond_7

    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot bind "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_7
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    if-eqz v17, :cond_9

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v24

    if-eqz v24, :cond_a

    :cond_9
    :goto_1
    :try_start_b
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v24

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    const-string/jumbo v24, "Vpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Established by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " on "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    monitor-exit p0

    return-object v22

    :cond_a
    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v9

    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 3

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getNetId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget v0, v0, Landroid/net/NetworkAgent;->netId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hideNotificationForLockdown()V
    .locals 2

    const-string/jumbo v0, "Vpn"

    const-string/jumbo v1, "hideNotificationForLockdown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    return-void
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized isBlockingUid(I)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    invoke-virtual {v0, p1}, Landroid/net/UidRange;->contains(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit p0

    return v3

    :cond_4
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onUserAdded(I)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v3, v4, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p0, v3, p1, v4, v5}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/UidRange;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRange;

    invoke-virtual {v4, v3}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onUserRemoved(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v2, v3, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "Failed to remove restricted user to owner"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onUserStopped()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->unregisterPackageChangeReceiverLocked()V

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_4

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    monitor-exit p0

    return v1

    :cond_3
    :try_start_1
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    monitor-exit p0

    return v2

    :cond_6
    :try_start_2
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :cond_7
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

    :cond_9
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized saveAlwaysOnPackage()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "always_on_vpn_app"

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string/jumbo v4, "always_on_vpn_lockdown"

    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    const-string/jumbo v1, "[Legacy VPN]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not setting legacy VPN \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" as always-on."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v1, :cond_4

    :goto_1
    iput-boolean p2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->maybeRegisterPackageChangeReceiverLocked(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_3
    :try_start_3
    const-string/jumbo p1, "[Legacy VPN]"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move p2, v0

    goto :goto_1
.end method

.method public setEnableLockdownVpn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableLockdownVpn:Z

    return-void
.end method

.method public setEnableTeardown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return-void
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v5}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const-string/jumbo v5, "[Legacy VPN]"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return v6

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "appops"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-eqz p2, :cond_2

    move v5, v6

    :goto_0
    const/16 v8, 0x2f

    invoke-virtual {v0, v8, v4, p1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :cond_2
    move v5, v7

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v5, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to set app ops for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_0
    if-nez p1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    array-length v2, p1

    new-array v2, v2, [Landroid/net/Network;

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    new-instance v2, Landroid/net/Network;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-direct {v2, v3}, Landroid/net/Network;-><init>(I)V

    aput-object v2, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public showNotificationForLockdown(II)V
    .locals 8

    const-string/jumbo v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showNotificationForLockdown :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v7, 0x104048a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget v5, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x62

    iput v5, v1, Landroid/app/Notification;->flags:I

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    const v7, 0x1080afa

    invoke-virtual {v0, v6, v7, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public startAlwaysOnVpn()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit p0

    return v3

    :cond_1
    monitor-exit p0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.net.VpnService"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    if-eqz v5, :cond_2

    :goto_0
    return v3

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "VpnService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " failed to start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 44

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v33

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "no_config_vpn"

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Restricted users cannot establish VPNs"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v27 .. v27}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Egress Iface ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") activated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, ""

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/net/InetAddress;

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    goto :goto_0

    :catch_0
    move-exception v16

    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startLegacyVpnPrivileged Egress Iface ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v35, ""

    const-string/jumbo v41, ""

    const-string/jumbo v10, ""

    const-string/jumbo v38, ""

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v42

    if-nez v42, :cond_7

    const/16 v41, 0x0

    :cond_3
    :goto_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v42

    if-nez v42, :cond_8

    const/4 v10, 0x0

    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v42

    if-nez v42, :cond_9

    const/16 v38, 0x0

    :cond_5
    :goto_3
    if-eqz v35, :cond_6

    if-nez v41, :cond_a

    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Cannot load credentials"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    new-instance v41, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    :cond_8
    new-instance v10, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v42

    invoke-direct {v10, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    :cond_9
    new-instance v38, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_3

    :cond_a
    if-eqz v10, :cond_6

    if-eqz v38, :cond_6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "This profile was not encrypted !"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    const/16 v36, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_0

    :goto_5
    const-string/jumbo v3, "security.mdpp"

    const-string/jumbo v4, "None"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/connectivity/Vpn;->mdppModeEnabled:Z

    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "Initting security manager."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "SecurityManagerService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/service/SecurityManager/ISecurityManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;

    move-result-object v3

    sput-object v3, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;

    sget-object v3, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;

    if-nez v3, :cond_13

    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "SecurityManagerService init failed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/16 v37, 0x0

    :try_start_1
    const-string/jumbo v3, "USRSKEY_VpnSecretKey"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v37

    :goto_6
    if-eqz v37, :cond_b

    const/16 v28, 0x0

    :try_start_2
    const-string/jumbo v3, "AndroidKeyStoreBCWorkaroundProvider"

    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v19

    if-nez v19, :cond_d

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    const/16 v28, 0x1

    :cond_d
    const-string/jumbo v3, "AES/CBC/PKCS7Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    const/16 v29, 0x0

    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v32, v3, 0x2

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v30, v0

    const/16 v22, 0x0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    mul-int/lit8 v3, v22, 0x2

    mul-int/lit8 v4, v22, 0x2

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v30, v22
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    :catch_1
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_6

    :cond_e
    :try_start_3
    new-instance v31, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v12, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    const/4 v3, 0x2

    invoke-static {v15, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v14

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v14, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v22, 0x0

    :goto_8
    array-length v3, v14

    move/from16 v0, v22

    if-ge v0, v3, :cond_f

    const/4 v3, 0x0

    aput-byte v3, v14, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    :cond_f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    const/16 v29, 0x0

    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v32, v3, 0x2

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v30, v0

    const/16 v22, 0x0

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    mul-int/lit8 v3, v22, 0x2

    mul-int/lit8 v4, v22, 0x2

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v30, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    :cond_10
    new-instance v31, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v12, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    const/4 v3, 0x2

    invoke-static {v15, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v14

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v14, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v22, 0x0

    :goto_a
    array-length v3, v14

    move/from16 v0, v22

    if-ge v0, v3, :cond_11

    const/4 v3, 0x0

    aput-byte v3, v14, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    :cond_11
    if-eqz v28, :cond_b

    const-string/jumbo v3, "AndroidKeyStoreBCWorkaroundProvider"

    invoke-static {v3}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V
    :try_end_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto/16 :goto_4

    :pswitch_0
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/4 v3, 0x0

    aput-object v23, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v36, v4

    const-string/jumbo v3, "udppsk"

    const/4 v4, 0x2

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v36, v4

    const-string/jumbo v3, "1701"

    const/4 v4, 0x5

    aput-object v3, v36, v4

    goto/16 :goto_5

    :pswitch_1
    const/16 v3, 0x8

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/4 v3, 0x0

    aput-object v23, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v36, v4

    const-string/jumbo v3, "udprsa"

    const/4 v4, 0x2

    aput-object v3, v36, v4

    const/4 v3, 0x3

    aput-object v35, v36, v3

    const/4 v3, 0x4

    aput-object v41, v36, v3

    const/4 v3, 0x5

    aput-object v10, v36, v3

    const/4 v3, 0x6

    aput-object v38, v36, v3

    const-string/jumbo v3, "1701"

    const/4 v4, 0x7

    aput-object v3, v36, v4

    goto/16 :goto_5

    :pswitch_2
    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/4 v3, 0x0

    aput-object v23, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v36, v4

    const-string/jumbo v3, "hybridrsa"

    const/4 v4, 0x2

    aput-object v3, v36, v4

    const/4 v3, 0x3

    aput-object v10, v36, v3

    const/4 v3, 0x4

    aput-object v38, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v3, v36, v4

    const-string/jumbo v3, ""

    const/4 v4, 0x7

    aput-object v3, v36, v4

    const/16 v3, 0x8

    aput-object v20, v36, v3

    goto/16 :goto_5

    :cond_12
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "mdpp mode not enabled."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/connectivity/Vpn;->mdppModeEnabled:Z

    :cond_13
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, ""

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    :cond_14
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_1

    :goto_b
    move-object/from16 v43, v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnConnectionSecure([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string/jumbo v7, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Connecting to VPN network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to server address : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/net/VpnProfile;->type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/connectivity/Vpn;->getVpnTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed - unsecure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :pswitch_3
    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v36, v4

    const-string/jumbo v3, "xauthpsk"

    const/4 v4, 0x1

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v36, v4

    const/4 v3, 0x4

    aput-object v11, v36, v3

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_15

    const-string/jumbo v3, "+pfs"

    :goto_c
    const/4 v4, 0x5

    aput-object v3, v36, v4

    const/4 v3, 0x6

    aput-object v21, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v4, 0x7

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v4, 0x8

    aput-object v3, v36, v4

    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "charon: type = IPSEC_XAUTH_PSK : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_15
    const-string/jumbo v3, "nonpfs"

    goto :goto_c

    :pswitch_4
    const/16 v3, 0xc

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v36, v4

    const-string/jumbo v3, "xauthrsa"

    const/4 v4, 0x1

    aput-object v3, v36, v4

    const/4 v3, 0x2

    aput-object v35, v36, v3

    const/4 v3, 0x3

    aput-object v41, v36, v3

    const/4 v3, 0x4

    aput-object v10, v36, v3

    const/4 v3, 0x5

    aput-object v38, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v3, v36, v4

    const/4 v3, 0x7

    aput-object v11, v36, v3

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_16

    const-string/jumbo v3, "+pfs"

    :goto_d
    const/16 v4, 0x8

    aput-object v3, v36, v4

    const/16 v3, 0x9

    aput-object v21, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/16 v4, 0xa

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v4, 0xb

    aput-object v3, v36, v4

    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "charon: type = IPSEC_XAUTH_RSA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_16
    const-string/jumbo v3, "nonpfs"

    goto :goto_d

    :pswitch_5
    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v36, v4

    const-string/jumbo v3, "ikev2psk"

    const/4 v4, 0x1

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v36, v4

    const/4 v3, 0x4

    aput-object v11, v36, v3

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_17

    const-string/jumbo v3, "+pfs"

    :goto_e
    const/4 v4, 0x5

    aput-object v3, v36, v4

    const/4 v3, 0x6

    aput-object v21, v36, v3

    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "charon: type = IPSEC_IKEV2_PSK : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_17
    const-string/jumbo v3, "nonpfs"

    goto :goto_e

    :pswitch_6
    const/16 v3, 0xa

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v36, v4

    const-string/jumbo v3, "ikev2rsa"

    const/4 v4, 0x1

    aput-object v3, v36, v4

    const/4 v3, 0x2

    aput-object v35, v36, v3

    const/4 v3, 0x3

    aput-object v41, v36, v3

    const/4 v3, 0x4

    aput-object v10, v36, v3

    const/4 v3, 0x5

    aput-object v38, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v3, v36, v4

    const/4 v3, 0x7

    aput-object v11, v36, v3

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_18

    const-string/jumbo v3, "+pfs"

    :goto_f
    const/16 v4, 0x8

    aput-object v3, v36, v4

    const/16 v3, 0x9

    aput-object v21, v36, v3

    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "charon: type = IPSEC_IKEV2_RSA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_18
    const-string/jumbo v3, "nonpfs"

    goto :goto_f

    :cond_19
    const/16 v34, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_2

    :goto_10
    new-instance v13, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v13}, Lcom/android/internal/net/VpnConfig;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/android/internal/net/VpnConfig;->legacy:Z

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v3, v13, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v3, v13, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v13, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1d

    const/4 v3, 0x0

    iput-boolean v3, v13, Lcom/android/internal/net/VpnConfig;->isIKE:Z

    :goto_11
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string/jumbo v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v13, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    :cond_1a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string/jumbo v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v13, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :pswitch_7
    const/16 v3, 0x14

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/4 v3, 0x0

    aput-object v23, v34, v3

    const-string/jumbo v3, "pptp"

    const/4 v4, 0x1

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v34, v4

    const-string/jumbo v3, "1723"

    const/4 v4, 0x3

    aput-object v3, v34, v4

    const-string/jumbo v3, "name"

    const/4 v4, 0x4

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v3, v34, v4

    const-string/jumbo v3, "password"

    const/4 v4, 0x6

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v4, 0x7

    aput-object v3, v34, v4

    const-string/jumbo v3, "linkname"

    const/16 v4, 0x8

    aput-object v3, v34, v4

    const-string/jumbo v3, "vpn"

    const/16 v4, 0x9

    aput-object v3, v34, v4

    const-string/jumbo v3, "refuse-eap"

    const/16 v4, 0xa

    aput-object v3, v34, v4

    const-string/jumbo v3, "nodefaultroute"

    const/16 v4, 0xb

    aput-object v3, v34, v4

    const-string/jumbo v3, "usepeerdns"

    const/16 v4, 0xc

    aput-object v3, v34, v4

    const-string/jumbo v3, "idle"

    const/16 v4, 0xd

    aput-object v3, v34, v4

    const-string/jumbo v3, "1800"

    const/16 v4, 0xe

    aput-object v3, v34, v4

    const-string/jumbo v3, "mtu"

    const/16 v4, 0xf

    aput-object v3, v34, v4

    const-string/jumbo v3, "1400"

    const/16 v4, 0x10

    aput-object v3, v34, v4

    const-string/jumbo v3, "mru"

    const/16 v4, 0x11

    aput-object v3, v34, v4

    const-string/jumbo v3, "1400"

    const/16 v4, 0x12

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v3, :cond_1c

    const-string/jumbo v3, "+mppe"

    :goto_12
    const/16 v4, 0x13

    aput-object v3, v34, v4

    goto/16 :goto_10

    :cond_1c
    const-string/jumbo v3, "nomppe"

    goto :goto_12

    :pswitch_8
    const/16 v3, 0x14

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/4 v3, 0x0

    aput-object v23, v34, v3

    const-string/jumbo v3, "l2tp"

    const/4 v4, 0x1

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v34, v4

    const-string/jumbo v3, "1701"

    const/4 v4, 0x3

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v34, v4

    const-string/jumbo v3, "name"

    const/4 v4, 0x5

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v3, v34, v4

    const-string/jumbo v3, "password"

    const/4 v4, 0x7

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v4, 0x8

    aput-object v3, v34, v4

    const-string/jumbo v3, "linkname"

    const/16 v4, 0x9

    aput-object v3, v34, v4

    const-string/jumbo v3, "vpn"

    const/16 v4, 0xa

    aput-object v3, v34, v4

    const-string/jumbo v3, "refuse-eap"

    const/16 v4, 0xb

    aput-object v3, v34, v4

    const-string/jumbo v3, "nodefaultroute"

    const/16 v4, 0xc

    aput-object v3, v34, v4

    const-string/jumbo v3, "usepeerdns"

    const/16 v4, 0xd

    aput-object v3, v34, v4

    const-string/jumbo v3, "idle"

    const/16 v4, 0xe

    aput-object v3, v34, v4

    const-string/jumbo v3, "1800"

    const/16 v4, 0xf

    aput-object v3, v34, v4

    const-string/jumbo v3, "mtu"

    const/16 v4, 0x10

    aput-object v3, v34, v4

    const-string/jumbo v3, "1300"

    const/16 v4, 0x11

    aput-object v3, v34, v4

    const-string/jumbo v3, "mru"

    const/16 v4, 0x12

    aput-object v3, v34, v4

    const-string/jumbo v3, "1300"

    const/16 v4, 0x13

    aput-object v3, v34, v4

    goto/16 :goto_10

    :cond_1d
    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/android/internal/net/VpnConfig;->isIKE:Z

    goto/16 :goto_11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public declared-synchronized stopLegacyVpnPrivileged()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    const-string/jumbo v0, "LegacyVpnRunner"

    monitor-enter v0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
