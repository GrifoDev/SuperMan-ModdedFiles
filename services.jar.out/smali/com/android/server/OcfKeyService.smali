.class public Lcom/android/server/OcfKeyService;
.super Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;
.source "OcfKeyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OcfKeyService$OcfKeyServiceResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OcfKeyService"

.field private static mAllowedPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/OcfKeyService;->mAllowedPackageNames:Ljava/util/Set;

    const-string/jumbo v0, "tlc_tz_ocf_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/service/OcfKeyService/IOcfKeyService$Stub;-><init>()V

    sput-object p1, Lcom/android/server/OcfKeyService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/OcfKeyService;->mAllowedPackageNames:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.android.oneconnect"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/OcfKeyService;->mAllowedPackageNames:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.android.ocfkeytest"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "OcfKeyService"

    const-string/jumbo v1, "OcfKeyService Constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkPermission(II)Z
    .locals 13

    const-string/jumbo v1, ""

    const-string/jumbo v9, ""

    :try_start_0
    sget-object v10, Lcom/android/server/OcfKeyService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v10, "OcfKeyService"

    const-string/jumbo v11, "Failed to get runing app processes."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return v10

    :cond_0
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v10, p1, :cond_1

    iget-object v1, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_2
    move-object v9, v1

    const-string/jumbo v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_3
    const-string/jumbo v10, "OcfKeyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "target packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/server/OcfKeyService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    const-string/jumbo v10, "OcfKeyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "packageInfo uid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " caller uid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v10, p2, :cond_4

    const-string/jumbo v10, "OcfKeyService"

    const-string/jumbo v11, "Package doe not match uid"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    return v10

    :catch_0
    move-exception v2

    const-string/jumbo v10, "OcfKeyService"

    const-string/jumbo v11, "Failed to get caller package name."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const-string/jumbo v10, "OcfKeyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "check package name : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/server/OcfKeyService;->mAllowedPackageNames:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    return v10
.end method

.method private native getCertificateChain(I)[B
.end method

.method private native getWrappedKeyStatus(I)I
.end method

.method private native installKey([B)I
.end method

.method private native loadOcfTa()I
.end method

.method private native sign(II[B)[B
.end method

.method private native unloadOcfTa()I
.end method


# virtual methods
.method public finalizeTA()I
    .locals 3

    const-string/jumbo v1, "OcfKeyService"

    const-string/jumbo v2, "finalize Ocf TA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/OcfKeyService;->checkPermission(II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "OcfKeyService"

    const-string/jumbo v2, "Permission denied to use OcfKeyService."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/OcfKeyService;->unloadOcfTa()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    invoke-static {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->convertOcfKeyServiceError(I)Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public getCertificateChain(I[B)I
    .locals 6

    const-string/jumbo v2, "OcfKeyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCertificateChain. type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/OcfKeyService;->checkPermission(II)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "OcfKeyService"

    const-string/jumbo v3, "Permission denied to use OcfKeyService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v2}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v2

    return v2

    :cond_0
    sget-object v3, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/OcfKeyService;->getCertificateChain(I)[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_2

    :cond_1
    const-string/jumbo v2, "OcfKeyService"

    const-string/jumbo v4, "Failed to getCertificate"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v2}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_2
    :try_start_1
    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, p2, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    const-string/jumbo v2, "OcfKeyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCertificateChain. return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getInstalledKeyStatus(I)I
    .locals 4

    const-string/jumbo v1, "OcfKeyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check key installed for type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/OcfKeyService;->checkPermission(II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "OcfKeyService"

    const-string/jumbo v2, "Permission denied to use OcfKeyService."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/OcfKeyService;->getWrappedKeyStatus(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    invoke-static {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->convertOcfKeyServiceError(I)Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public initializeTA()I
    .locals 3

    const-string/jumbo v1, "OcfKeyService"

    const-string/jumbo v2, "initialize Ocf TA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/OcfKeyService;->checkPermission(II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "OcfKeyService"

    const-string/jumbo v2, "Permission denied to use OcfKeyService."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/OcfKeyService;->loadOcfTa()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    invoke-static {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->convertOcfKeyServiceError(I)Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public installCertificateChain([B)I
    .locals 4

    const-string/jumbo v1, "OcfKeyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Install Certificate chain. wrapped length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/OcfKeyService;->checkPermission(II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "OcfKeyService"

    const-string/jumbo v2, "Permission denied to use OcfKeyService."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/OcfKeyService;->installKey([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    invoke-static {v0}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->convertOcfKeyServiceError(I)Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public sign(II[B[B)I
    .locals 7

    const-string/jumbo v3, "OcfKeyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sign. hash : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " message length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/OcfKeyService;->checkPermission(II)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "OcfKeyService"

    const-string/jumbo v4, "Permission denied to use OcfKeyService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v3}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I

    move-result v3

    return v3

    :cond_0
    const/4 v0, 0x0

    move v2, p1

    sget-object v4, Lcom/android/server/OcfKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/OcfKeyService;->sign(II[B)[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v3, v1

    if-nez v3, :cond_2

    :cond_1
    const-string/jumbo v3, "OcfKeyService"

    const-string/jumbo v5, "Failed to sign"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v3}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->getCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :cond_2
    :try_start_1
    array-length v3, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, p4, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    const-string/jumbo v3, "OcfKeyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sign. return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
