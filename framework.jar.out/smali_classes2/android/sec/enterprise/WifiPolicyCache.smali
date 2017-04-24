.class public Landroid/sec/enterprise/WifiPolicyCache;
.super Ljava/lang/Object;
.source "WifiPolicyCache.java"


# static fields
.field public static final ACTION_WIFI_POLICY_STATE_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.WIFI_POLICY_STATE_CHANGED_INTERNAL"

.field public static final EXTRA_USER_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

.field public static final EXTRA_WIFI_TYPE_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.WIFI_TYPE_CHANGED_INTERNAL"

.field public static final NO_USER:I = -0x1

.field public static final TYPE_ALLOW_AUTOMATIC_CONNECTION:Ljava/lang/String; = "ALLOW_AUTOMATIC_CONNECTION"

.field public static final TYPE_ALLOW_STATE_CHANGE:Ljava/lang/String; = "ALLOW_STATE_CHANGES"

.field public static final TYPE_ALLOW_USER_CHANGES:Ljava/lang/String; = "ALLOW_USER_CHANGES"

.field public static final TYPE_ALLOW_USER_PROFILES:Ljava/lang/String; = "ALLOW_USER_PROFILES"

.field public static final TYPE_BLACK_SSID_LIST:I = 0x0

.field public static final TYPE_BLOCKED_NETWORKS:Ljava/lang/String; = "BLOCKED_NETWORKS"

.field public static final TYPE_ENTERPRISE_SSIDS:Ljava/lang/String; = "ENTERPRISE_SSIDS"

.field public static final TYPE_MINIMUM_SECURITY_LEVEL:Ljava/lang/String; = "MINIMUM_SECURITY_LEVEL"

.field public static final TYPE_PROMPT_CREDENTIALS_ENABLED:Ljava/lang/String; = "PROMPT_CREDENTIALS_ENABLED"

.field public static final TYPE_WHITE_BLACK_SSID_LIST:Ljava/lang/String; = "WHITE_BLACK_SSID_LIST"

.field public static final TYPE_WHITE_SSID_LIST:I = 0x1

.field public static final TYPE_WIFI_ALLOWED:Ljava/lang/String; = "WIFI_ALLOWED"

.field private static final mSync:Ljava/lang/Object;

.field private static sInstance:Landroid/sec/enterprise/WifiPolicyCache;


# instance fields
.field private mAllowAutomaticConnections:Z

.field private mAllowStateChange:Z

.field private mAllowUserChanges:Z

.field private mAllowUserProfiles:Ljava/util/HashMap;
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

.field private mBlackListedSSIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedSsids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnterpriseSsids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimumSecurityLevel:I

.field private mPromptCredentialsEnabled:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mWhiteListedSSIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiAllowed:Z

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;


# direct methods
.method static synthetic -wrap0(Landroid/sec/enterprise/WifiPolicyCache;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/sec/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/sec/enterprise/WifiPolicyCache;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    const/4 v1, 0x0

    iput v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowStateChange:Z

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    iput-object p1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.WIFI_POLICY_STATE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Landroid/sec/enterprise/WifiPolicyCache$1;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/WifiPolicyCache$1;-><init>(Landroid/sec/enterprise/WifiPolicyCache;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroid/sec/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;
    .locals 2

    sget-object v1, Landroid/sec/enterprise/WifiPolicyCache;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/WifiPolicyCache;

    invoke-direct {v0, p0}, Landroid/sec/enterprise/WifiPolicyCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    :cond_0
    sget-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized readVariables(Ljava/lang/String;I)V
    .locals 7

    monitor-enter p0

    if-nez p1, :cond_2

    :try_start_0
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v3

    iput v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getAutomaticConnectionToWifi()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserProfiles(ZI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowStateChange:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v3, "ENTERPRISE_SSIDS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "BLOCKED_NETWORKS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "ALLOW_USER_CHANGES"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "ALLOW_USER_PROFILES"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserProfiles(ZI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "WIFI_ALLOWED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "PROMPT_CREDENTIALS_ENABLED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    goto :goto_1

    :cond_8
    const-string/jumbo v3, "MINIMUM_SECURITY_LEVEL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v3

    iput v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v3, "WHITE_BLACK_SSID_LIST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v3, "ALLOW_AUTOMATIC_CONNECTION"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->getAutomaticConnectionToWifi()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v3, "ALLOW_STATE_CHANGES"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    iput-boolean v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowStateChange:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p1
.end method

.method private showMessage(I)V
    .locals 2

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAllowUserChanges()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUserProfiles()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAutomaticConnectionToWifi()Z
    .locals 1

    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    return v0
.end method

.method public declared-synchronized getPromptCredentialsEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    invoke-direct {p0, p1}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

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

.method public declared-synchronized isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const v0, 0x1040909

    invoke-direct {p0, v0}, Landroid/sec/enterprise/WifiPolicyCache;->showMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v2

    :cond_2
    :try_start_1
    invoke-static {p1}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v0

    iget v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v1

    if-ge v0, v1, :cond_4

    if-eqz p2, :cond_3

    const v0, 0x104090b

    invoke-direct {p0, v0}, Landroid/sec/enterprise/WifiPolicyCache;->showMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return v2

    :cond_4
    :try_start_2
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    monitor-exit p0

    return v3

    :cond_5
    :try_start_3
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    const-string/jumbo v1, "*"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    if-eqz p2, :cond_7

    const v0, 0x1040909

    invoke-direct {p0, v0}, Landroid/sec/enterprise/WifiPolicyCache;->showMessage(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    monitor-exit p0

    return v2

    :cond_8
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWifiAllowed(Z)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWifiStateChangeAllowed(Z)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowStateChange:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAllowedFields(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 5

    const/4 v3, 0x0

    invoke-static {p2}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    if-ne p3, v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return-object v3

    :cond_1
    packed-switch v0, :pswitch_data_0

    return-object v3

    :pswitch_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v1, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    :cond_2
    :goto_0
    return-object p2

    :pswitch_1
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "*"

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v3, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
