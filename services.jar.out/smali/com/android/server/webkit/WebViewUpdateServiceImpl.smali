.class public Lcom/android/server/webkit/WebViewUpdateServiceImpl;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isEnabledPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isInstalledPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-direct {v0, v1, v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;-><init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    return-void
.end method

.method private existsValidNonFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Z
    .locals 7

    const/4 v4, 0x0

    array-length v5, p1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, p1, v3

    iget-boolean v6, v2, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v2, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v6, v2}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isInstalledPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isEnabledPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    invoke-virtual {v6, v2, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_2
    return v4

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;
    .locals 4

    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    iget-boolean v3, v0, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static isEnabledPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return v0
.end method

.method private static isInstalledPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v4

    if-eqz v4, :cond_0

    return v9

    :cond_0
    iget-object v4, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    return v4

    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v1

    if-eq v4, v9, :cond_3

    return v5

    :cond_3
    aget-object v4, v1, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    iget-object v6, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_5

    aget-object v2, v6, v4

    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_4

    return v9

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v5
.end method

.method private updateFallbackState([Landroid/webkit/WebViewProviderInfo;Z)V
    .locals 8

    invoke-static {p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->existsValidNonFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Z

    move-result v1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v4, v2}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isEnabledPackage(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v1, :cond_3

    if-nez v3, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v6, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/android/server/webkit/SystemInterface;->uninstallAndDisablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    return-void

    :cond_3
    if-nez v1, :cond_2

    if-eqz v3, :cond_4

    if-eqz p2, :cond_2

    :cond_4
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mContext:Landroid/content/Context;

    iget-object v6, v2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/webkit/SystemInterface;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateFallbackStateOnBoot()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackState([Landroid/webkit/WebViewProviderInfo;Z)V

    return-void
.end method

.method private updateFallbackStateOnPackageChange(Ljava/lang/String;I)V
    .locals 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v2

    const/4 v0, 0x0

    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v2, v3

    iget-object v6, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v3, v1, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_3

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2, v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackState([Landroid/webkit/WebViewProviderInfo;Z)V

    return-void
.end method


# virtual methods
.method changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    invoke-virtual {v0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method enableFallbackLogic(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0, p1}, Lcom/android/server/webkit/SystemInterface;->enableFallbackLogic(Z)V

    return-void
.end method

.method getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getValidAndInstalledWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method handleNewUser(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v4, v0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->existsValidNonFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3, v4, v2, p1}, Lcom/android/server/webkit/SystemInterface;->enablePackageForUser(Ljava/lang/String;ZI)V

    return-void

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method isFallbackPackage(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v3}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method notifyRelroCreationCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->notifyRelroCreationCompleted()V

    return-void
.end method

.method packageStateChanged(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackStateOnPackageChange(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->packageStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method prepareWebViewInSystemServer()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->updateFallbackStateOnBoot()V

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->prepareWebViewInSystemServer()V

    return-void
.end method

.method waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v0

    return-object v0
.end method
