.class Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;
.super Ljava/lang/Object;
.source "ExecAccessMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/friends/executable/ExecAccessMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivilegedPkg"
.end annotation


# static fields
.field private static final TIME_INTERVAL:J = 0x1d4c0L


# instance fields
.field private final mFingerprint:[B

.field private mLastGrantedTime:J

.field private final mPkgName:Ljava/lang/String;

.field private final mPlatformKeyOnly:Z

.field private mUid:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->isCachedGranted(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->isGranted(Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->setCachedGranted(I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B

    iput-boolean p2, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mUid:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Z[BLcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;-><init>(Ljava/lang/String;Z[B)V

    return-void
.end method

.method private isCachedGranted(Ljava/lang/String;I)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    sub-long v2, v4, v6

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez p2, :cond_1

    iget v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p2, :cond_1

    const-wide/32 v4, 0x1d4c0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    monitor-exit p0

    const-string/jumbo v1, "ExecAccessMgr"

    const-string/jumbo v4, "isCachedGranted %s %s %d %d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p1}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-static {v1, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isGranted(Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "android"

    invoke-virtual {p1, v1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B

    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :goto_0
    const-string/jumbo v1, "ExecAccessMgr"

    const-string/jumbo v2, "isGranted %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCachedGranted(I)V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v0, -0x1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mUid:I

    if-lez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    iget-wide v2, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    const-string/jumbo v2, "ExecAccessMgr"

    const-string/jumbo v3, "setCachedGranted %d %s %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
