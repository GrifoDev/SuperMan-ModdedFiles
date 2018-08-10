.class public Landroid/net/VpnService$Builder;
.super Ljava/lang/Object;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private final mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/VpnService;


# direct methods
.method public constructor <init>(Landroid/net/VpnService;)V
    .locals 2

    iput-object p1, p0, Landroid/net/VpnService$Builder;->this$0:Landroid/net/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    iput-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/VpnService$Builder;->mAddresses:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-virtual {p1}, Landroid/net/VpnService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    return-void
.end method

.method private isSecureWifiUid(I)Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    :try_start_0
    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    const-string/jumbo v3, "com.samsung.android.fast"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "android"

    const-string/jumbo v4, "com.samsung.android.fast"

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    const-string/jumbo v3, "VpnService"

    const-string/jumbo v4, "Secure Wi-Fi signature mismatched"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v5

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private verifyApp(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private verifyAppAsUser(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    if-gez v2, :cond_0

    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-void
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    .locals 1

    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/net/VpnService$Builder;->addAddress(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAddress(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;
    .locals 2

    invoke-static {p1, p2}, Landroid/net/VpnService;->-wrap1(Ljava/net/InetAddress;I)V

    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mAddresses:Ljava/util/List;

    new-instance v1, Landroid/net/LinkAddress;

    invoke-direct {v1, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/VpnConfig;->updateAllowedFamilies(Ljava/net/InetAddress;)V

    return-object p0
.end method

.method public addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/net/VpnService$Builder;->isSecureWifiUid(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :try_start_0
    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->disallowedSecureFolderApps:Ljava/util/List;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "addDisallowedSecureFolderApps already called"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v1

    :goto_0
    return-object p0

    :cond_0
    const/4 v4, 0x0

    aget-object p1, v2, v4

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/net/VpnService$Builder;->verifyAppAsUser(Ljava/lang/String;I)V

    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->allowedSecureFolderApps:Ljava/util/List;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/internal/net/VpnConfig;->allowedSecureFolderApps:Ljava/util/List;

    :cond_1
    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->allowedSecureFolderApps:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "addDisallowedApplication already called"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-direct {p0, p1}, Landroid/net/VpnService$Builder;->verifyApp(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    :cond_4
    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/net/VpnService$Builder;->isSecureWifiUid(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :try_start_0
    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->allowedSecureFolderApps:Ljava/util/List;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "addAllowedSecureFolderApps already called"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v1

    :goto_0
    return-object p0

    :cond_0
    const/4 v4, 0x0

    aget-object p1, v2, v4

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/net/VpnService$Builder;->verifyAppAsUser(Ljava/lang/String;I)V

    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->disallowedSecureFolderApps:Ljava/util/List;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/internal/net/VpnConfig;->disallowedSecureFolderApps:Ljava/util/List;

    :cond_1
    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->disallowedSecureFolderApps:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "addAllowedApplication already called"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-direct {p0, p1}, Landroid/net/VpnService$Builder;->verifyApp(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    :cond_4
    iget-object v4, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 1

    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/net/InetAddress;)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addDnsServer(Ljava/net/InetAddress;)Landroid/net/VpnService$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    .locals 1

    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addRoute(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;
    .locals 6

    invoke-static {p1, p2}, Landroid/net/VpnService;->-wrap1(Ljava/net/InetAddress;I)V

    div-int/lit8 v1, p2, 0x8

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-byte v2, v0, v1

    rem-int/lit8 v3, p2, 0x8

    shl-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-byte v2, v0, v1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Bad address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    new-instance v3, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    invoke-direct {v4, p1, p2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-virtual {v2, p1}, Lcom/android/internal/net/VpnConfig;->updateAllowedFamilies(Ljava/net/InetAddress;)V

    return-object p0
.end method

.method public addSearchDomain(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 2

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public allowBypass()Landroid/net/VpnService$Builder;
    .locals 2

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    return-object p0
.end method

.method public allowFamily(I)Landroid/net/VpnService$Builder;
    .locals 3

    const/4 v1, 0x1

    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    :goto_0
    return-object p0

    :cond_0
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is neither "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public establish()Landroid/os/ParcelFileDescriptor;
    .locals 3

    iget-object v1, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, p0, Landroid/net/VpnService$Builder;->mAddresses:Ljava/util/List;

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    iget-object v1, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->-wrap0()Landroid/net/IConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBlocking(Z)Landroid/net/VpnService$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean p1, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    return-object p0
.end method

.method public setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setMtu(I)Landroid/net/VpnService$Builder;
    .locals 2

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad mtu"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput p1, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    return-object p0
.end method

.method public setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    return-object p0
.end method

.method public setUnderlyingNetworks([Landroid/net/Network;)Landroid/net/VpnService$Builder;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Network;

    :cond_0
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    return-object p0
.end method
