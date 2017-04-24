.class public Lcom/android/settings/datausage/DataSaverBackend;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataSaverBackend$1;,
        Lcom/android/settings/datausage/DataSaverBackend$2;,
        Lcom/android/settings/datausage/DataSaverBackend$Listener;,
        Lcom/android/settings/datausage/DataSaverBackend$PolicySet;
    }
.end annotation


# static fields
.field private static sLoadingDialog:Landroid/app/ProgressDialog;


# instance fields
.field private final RESTRICTION_ALWAYS:I

.field private final RESTRICTION_DURING_ROAMING:I

.field private final RESTRICTION_NEVER:I

.field private handler_loading:Landroid/os/Handler;

.field private mBlacklist:Landroid/util/SparseBooleanArray;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIPolicyManager:Landroid/net/INetworkPolicyManager;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/datausage/DataSaverBackend$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mWhitelist:Landroid/util/SparseBooleanArray;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get6()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/android/settings/datausage/DataSaverBackend;->sLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    sput-object p0, Lcom/android/settings/datausage/DataSaverBackend;->sLoadingDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/DataSaverBackend;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend;->handleBlacklistChanged(IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/DataSaverBackend;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataSaverBackend;->handleRestrictBackgroundChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/datausage/DataSaverBackend;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend;->handleWhitelistChanged(IZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/datausage/DataSaverBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/datausage/DataSaverBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->RESTRICTION_NEVER:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->RESTRICTION_ALWAYS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->RESTRICTION_DURING_ROAMING:I

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend$1;-><init>(Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->handler_loading:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend$2;-><init>(Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mConnService:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private handleBlacklistChanged(IZ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onBlacklistStatusChanged(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleRestrictBackgroundChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleWhitelistChanged(IZ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onWhitelistStatusChanged(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadBlacklist()V
    .locals 7

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method private loadWhitelist()V
    .locals 7

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v2}, Landroid/net/INetworkPolicyManager;->getRestrictBackgroundWhitelistedUids()[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    return-void
.end method

.method public changeRoamingPolicyIfNeeded(ILjava/lang/String;I)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v1, v5, [Lcom/android/settings/datausage/DataSaverBackend$PolicySet;

    new-instance v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;

    const/16 v6, 0x1001

    invoke-direct {v5, v4, v6}, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;-><init>(II)V

    aput-object v5, v1, v4

    new-instance v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;

    invoke-direct {v5, v3, v4}, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;-><init>(II)V

    aput-object v5, v1, v3

    new-instance v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;

    invoke-direct {v5, v4, v4}, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;-><init>(II)V

    const/4 v6, 0x2

    aput-object v5, v1, v6

    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5, p1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v5

    and-int/lit8 v0, v5, 0x1

    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, p1}, Landroid/net/ConnectivityManager;->getRoamingReduction(I)I

    move-result v2

    aget-object v5, v1, p3

    iget v5, v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->bgDataPolicy:I

    if-eq v0, v5, :cond_0

    aget-object v5, v1, p3

    iget v5, v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->bgDataPolicy:I

    if-ne v5, v3, :cond_2

    :goto_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    const-string/jumbo v3, "DataSaverBackend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bgDataPolicy_cur policy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " setUidPolicy("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, p3

    iget v5, v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->bgDataPolicy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v3, 0x1002

    if-eq v2, v3, :cond_1

    aget-object v3, v1, p3

    iget v3, v3, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->roamingPolicy:I

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/datausage/DataSaverBackend;->mConnService:Landroid/net/ConnectivityManager;

    aget-object v4, v1, p3

    iget v4, v4, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->roamingPolicy:I

    invoke-virtual {v3, p1, v4}, Landroid/net/ConnectivityManager;->setRoamingReduction(II)V

    const-string/jumbo v3, "DataSaverBackend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "roamingPolicy_cur policy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " setRoamingReduction("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, p3

    iget v5, v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->roamingPolicy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public getRoamingReduction(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getRoamingReduction(I)I

    move-result v0

    return v0
.end method

.method public isBlacklisted(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mBlacklist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isDataSaverEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public isWhitelisted(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public refreshBlacklist()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    return-void
.end method

.method public refreshWhitelist()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    return-void
.end method

.method public remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    :cond_0
    return-void
.end method

.method public setDataSaverEnabled(Z)V
    .locals 6

    const/4 v5, 0x1

    sget-object v1, Lcom/android/settings/datausage/DataSaverBackend;->sLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/datausage/DataSaverBackend;->sLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const v4, 0x7f0b03c2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/android/settings/datausage/DataSaverBackend;->sLoadingDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/settings/datausage/DataSaverBackend;->sLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/datausage/DataSaverBackend$3;-><init>(Lcom/android/settings/datausage/DataSaverBackend;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setIsBlacklisted(ILjava/lang/String;Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 v1, 0x18c

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsWhitelisted(ILjava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelist:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->addRestrictBackgroundWhitelistedUid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 v2, 0x18b

    invoke-static {v1, v2, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mIPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->removeRestrictBackgroundWhitelistedUid(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DataSaverBackend"

    const-string/jumbo v2, "Can\'t reach policy manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
