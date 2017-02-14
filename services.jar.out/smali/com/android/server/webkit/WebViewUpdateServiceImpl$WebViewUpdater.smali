.class Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/WebViewUpdateServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewUpdater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    }
.end annotation


# static fields
.field private static final WAIT_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private NUMBER_OF_RELROS_UNKNOWN:I

.field private mAnyWebViewInstalled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field private mLock:Ljava/lang/Object;

.field private mMinimumVersionCode:I

.field private mNumRelroCreationsFinished:I

.field private mNumRelroCreationsStarted:I

.field private mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewPackageDirty:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    return-void
.end method

.method private checkIfRelrosDoneLocked()V
    .locals 4

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getValidWebViewPackagesAndInfos(Z)[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v3, v5}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-object v6, v6, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap1(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v3, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v5, v1

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v0, v1, v3

    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-boolean v6, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap1(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    array-length v5, v1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_5

    aget-object v0, v1, v3

    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-boolean v6, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_4

    iget-object v3, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iput-boolean v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    new-instance v3, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string/jumbo v4, "Could not find a loadable WebView package"

    invoke-direct {v3, v4}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getMinimumVersionCode()I
    .locals 8

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    if-lez v4, :cond_0

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v4}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v1, v4, v3

    iget-boolean v6, v1, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v1, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v6, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/android/server/webkit/SystemInterface;->getFactoryPackageVersion(Ljava/lang/String;)I

    move-result v2

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    if-ge v2, v6, :cond_1

    :cond_3
    iput v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    return v3
.end method

.method private getValidWebViewPackagesAndInfos(Z)[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    .locals 7

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v5}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    aget-object v6, v0, v2

    invoke-interface {v5, v6}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-static {v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap1(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    aget-object v5, v0, v2

    invoke-virtual {p0, v5, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    aget-object v6, v0, v2

    invoke-direct {v5, v6, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    return-object v5

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v2, :cond_0

    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0, p1}, Lcom/android/server/webkit/SystemInterface;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->checkIfRelrosDoneLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static versionCodeGE(II)Z
    .locals 3

    const v2, 0x186a0

    div-int v0, p0, v2

    div-int v1, p1, v2

    if-lt v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private webViewIsReadyLocked()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v4, v6, p1}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v2, :cond_2

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v5

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v4

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Tried to change WebView provider but failed to fetch WebView package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-object v4

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getValidAndInstalledWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getValidWebViewPackagesAndInfos(Z)[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v2

    array-length v3, v2

    new-array v1, v3, [Landroid/webkit/WebViewProviderInfo;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getMinimumVersionCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->versionCodeGE(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-static {p1, p2, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap2(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2

    :cond_2
    return v2
.end method

.method public notifyRelroCreationCompleted()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->checkIfRelrosDoneLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public packageStateChanged(Ljava/lang/String;I)V
    .locals 14

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v7}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_8

    aget-object v3, v8, v7

    iget-object v6, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez p2, :cond_0

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    monitor-exit v8

    return-void

    :cond_0
    :try_start_1
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-wide v10, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-wide v12, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_1
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v7, v10, v12

    if-nez v7, :cond_1

    monitor-exit v8

    return-void

    :cond_1
    :try_start_2
    iget-object v7, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-nez v7, :cond_5

    const/4 v5, 0x1

    :goto_1
    iget-object v7, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v5, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_2
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    monitor-exit v8

    if-eqz v5, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not find valid WebView package to create relro with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_6
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v7, v2}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public prepareWebViewInSystemServer()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "error preparing webview provider from system server"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 18

    const/4 v5, 0x0

    const-wide/32 v2, 0xf4240

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    add-long v8, v12, v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v10

    :goto_0
    if-nez v10, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/32 v16, 0xf4240

    div-long v6, v14, v16

    cmp-long v12, v6, v8

    if-ltz v12, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_3

    :goto_1
    monitor-exit v13

    if-nez v10, :cond_1

    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "creating relro file timed out"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v12, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {v12, v5, v11}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object v12

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    sub-long v14, v8, v6

    invoke-virtual {v12, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v10

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    if-nez v12, :cond_4

    const/4 v11, 0x4

    goto :goto_1

    :cond_4
    const/4 v11, 0x3

    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Timed out waiting for relro creation, relros started "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " relros finished "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " package dirty? "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :catch_0
    move-exception v4

    goto :goto_2
.end method
