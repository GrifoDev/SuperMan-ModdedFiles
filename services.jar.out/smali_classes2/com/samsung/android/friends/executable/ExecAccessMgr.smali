.class public Lcom/samsung/android/friends/executable/ExecAccessMgr;
.super Ljava/lang/Object;
.source "ExecAccessMgr.java"

# interfaces
.implements Lcom/samsung/android/friends/action/ActionBase;
.implements Lcom/samsung/android/friends/action/ActionExecutable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final INDEX_OF_FRS_CMD_APP:I = 0x1

.field private static final MAX_PLATFORM_PKG_COUNT:I = 0xa

.field private static final PRIVILEGED_PACKAGES:[Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;

.field private static final RO_OFFICIAL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ExecAccessMgr"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPlatformPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;

    new-instance v1, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const-string/jumbo v2, "com.samsung.android.mateagent"

    invoke-direct {v1, v2, v6, v4, v4}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;-><init>(Ljava/lang/String;Z[BLcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const-string/jumbo v2, "com.samsung.android.friendscmder"

    const/16 v3, 0x20

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;-><init>(Ljava/lang/String;Z[BLcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const-string/jumbo v0, "ro.build.official.release"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->RO_OFFICIAL:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        -0x7et
        0x5et
        0x20t
        -0x5bt
        0x5dt
        0x6bt
        -0x30t
        -0x44t
        0x1et
        -0x5et
        -0x11t
        -0x23t
        -0x22t
        -0x61t
        -0x4et
        0x16t
        -0x5ct
        -0x1et
        0x43t
        -0x7ct
        0x39t
        0x3ft
        -0x48t
        -0x3dt
        0x43t
        0x9t
        0x15t
        0x6ct
        0xft
        0x2dt
        -0x7et
        -0x3ct
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    return-void
.end method

.method private addPlatformPkg(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "ExecAccessMgr"

    const-string/jumbo v3, "exceeds max count"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v5

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getPackageFingerprint(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 14

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v9, 0x40

    :try_start_0
    invoke-virtual {v7, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string/jumbo v9, "X509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    move-object v9, v11

    :goto_0
    if-eqz v9, :cond_4

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    return-object v11

    :catch_1
    move-exception v9

    goto :goto_0

    :catch_2
    move-exception v9

    :goto_1
    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v10

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    :goto_2
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_1
    :goto_3
    if-eqz v10, :cond_3

    :try_start_7
    throw v10

    :catch_3
    move-exception v12

    if-nez v10, :cond_2

    move-object v10, v12

    goto :goto_3

    :cond_2
    if-eq v10, v12, :cond_1

    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    throw v9

    :cond_4
    const-string/jumbo v9, "SHA-256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v9

    return-object v9

    :catchall_1
    move-exception v9

    move-object v10, v11

    goto :goto_2

    :catchall_2
    move-exception v9

    move-object v4, v5

    move-object v10, v11

    goto :goto_2

    :catch_4
    move-exception v9

    move-object v4, v5

    goto :goto_1
.end method

.method private getRegisteredPlatformPkgs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasPlatformPkg(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isCmdAppAccessible(Landroid/content/Context;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v5, Lcom/samsung/android/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->-get1(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/samsung/android/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->-get0(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)[B

    move-result-object v0

    sget-object v5, Lcom/samsung/android/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->-get2(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android"

    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-static {p0, v1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->getPackageFingerprint(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private isPrivilegedPkg(I)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    :cond_0
    return v6

    :cond_1
    array-length v8, v2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v0, v2, v7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v9, Lcom/samsung/android/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;

    array-length v10, v9

    move v5, v6

    :goto_1
    if-ge v5, v10, :cond_3

    aget-object v4, v9, v5

    if-eqz v4, :cond_2

    invoke-static {v4, v0, p1}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->-wrap0(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_2

    return v12

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    :cond_4
    array-length v8, v2

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_7

    aget-object v0, v2, v7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->getPackageFingerprint(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    sget-object v9, Lcom/samsung/android/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;

    array-length v10, v9

    move v5, v6

    :goto_3
    if-ge v5, v10, :cond_6

    aget-object v4, v9, v5

    invoke-static {v4}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->-get1(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {v4, v3, v0, v1}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->-wrap1(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {v4, p1}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->-wrap2(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;I)V

    return v12

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_2

    :cond_7
    const-string/jumbo v5, "ExecAccessMgr"

    const-string/jumbo v7, "isPrivilegedPkg uid[%d] is invalid"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v5, v7, v8}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v6
.end method

.method private isRegisteredPlatformPkg(I)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v1, v0, v7

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->hasPlatformPkg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "isRegisteredPlatformPkg pkg[%s] uid[%s] is valid"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v8

    :cond_0
    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "isRegisteredPlatformPkg uid[%d] is invalid"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v7
.end method

.method private static isValidAgentSvcActionFormat(I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/high16 v0, 0xf0000

    const/high16 v2, 0x200000

    and-int/2addr v2, p0

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "ExecAccessMgr"

    const-string/jumbo v3, "invalid action [0x%x]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return v1

    :cond_2
    const/high16 v2, 0xf0000

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    and-int/lit16 v2, p0, 0xfff

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isValidSysSvcActionFormat(I)Z
    .locals 11

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    const/high16 v7, -0x10000000

    const/high16 v8, 0xf0000

    const v9, 0xf000

    const/16 v10, 0xfff

    filled-new-array {v6, v7, v8, v9, v10}, [I

    move-result-object v2

    const/high16 v6, 0x100000

    const/high16 v7, 0x70000

    filled-new-array {v5, v6, v7, v5, v5}, [I

    move-result-object v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget v0, v2, v6

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    aget v8, v4, v1

    and-int v9, p0, v0

    if-ne v8, v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :pswitch_1
    aget v8, v4, v1

    and-int v9, p0, v0

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_2
    and-int v8, p0, v0

    aget v9, v4, v1

    if-le v8, v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v3, 0x1

    array-length v7, v2

    if-ne v6, v7, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private removePlatformPkg(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v2

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v2

    :cond_1
    monitor-exit v1

    const-string/jumbo v0, "ExecAccessMgr"

    const-string/jumbo v1, "failed to remove platform pkg"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static throwSecurityException(ILjava/lang/String;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "illegal access: uid[%d] / pid[%d] / %d / %s"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    if-eqz p1, :cond_0

    move-object v2, p1

    :goto_0
    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "%s: reason(%d)"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v1

    const-string/jumbo v2, "paramInt0"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_0

    const-string/jumbo v1, "paramStr0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->addPlatformPkg(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v1

    const-string/jumbo v2, "paramList0"

    invoke-direct {p0}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->getRegisteredPlatformPkgs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_0

    const-string/jumbo v1, "paramStr0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "paramBool0"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->removePlatformPkg(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x120006
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isAccessible(I)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isValidSysSvcActionFormat(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isValidAgentSvcActionFormat(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/high16 v3, 0x10000

    and-int/2addr v3, p1

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->getProcessSystemUid()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "system uid"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "isAccessible returns false / action[0x%x], uid [%d], pid[%d]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/high16 v3, 0x20000

    and-int/2addr v3, p1

    if-eqz v3, :cond_5

    invoke-direct {p0, v2}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isPrivilegedPkg(I)Z

    move-result v1

    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "privileged uid"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/high16 v3, 0x40000

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isRegisteredPlatformPkg(I)Z

    move-result v1

    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "platform key signed pkg"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1
.end method
