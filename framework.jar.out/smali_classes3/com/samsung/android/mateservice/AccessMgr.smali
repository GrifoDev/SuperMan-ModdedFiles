.class Lcom/samsung/android/mateservice/AccessMgr;
.super Ljava/lang/Object;
.source "AccessMgr.java"


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final PRIVILEGED_PACKAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Access"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.mateagent"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/mateservice/AccessMgr;->PRIVILEGED_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mateservice/AccessMgr;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isPrivilegedPkg(I)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/mateservice/AccessMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v4, v2

    if-lez v4, :cond_3

    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v0, v2, v6

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/samsung/android/mateservice/AccessMgr;->PRIVILEGED_PACKAGES:[Ljava/lang/String;

    array-length v9, v8

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_0

    aget-object v1, v8, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "android"

    invoke-virtual {v3, v10, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    return v11

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "Access"

    const-string/jumbo v6, "isPrivilegedPkg uid[%d] is invalid"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4, v6, v7}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v5
.end method

.method private isSignedWithPlatformKey(I)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/android/mateservice/AccessMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    const-string/jumbo v2, "android"

    aget-object v3, v0, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    return v4

    :cond_0
    const-string/jumbo v2, "Access"

    const-string/jumbo v3, "isSignedWithPlatformKey uid[%d] is invalid"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v6
.end method


# virtual methods
.method isAccessible(II)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/samsung/android/mateservice/action/ActionBase;->isValidSysSvcActionFormat(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/mateservice/action/ActionBase;->isValidAgentSvcActionFormat(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/mateservice/FwDependency;->getProcessSystemUid()I

    move-result v1

    if-ne p2, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Access"

    const-string/jumbo v2, "system uid"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    :goto_1
    const-string/jumbo v1, "Access"

    const-string/jumbo v2, "isAccessible returns %s / action[0x%x], uid [%d]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    invoke-direct {p0, p2}, Lcom/samsung/android/mateservice/AccessMgr;->isPrivilegedPkg(I)Z

    move-result v0

    const-string/jumbo v1, "Access"

    const-string/jumbo v2, "privileged pkg"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/high16 v1, 0x40000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/mateservice/AccessMgr;->isSignedWithPlatformKey(I)Z

    move-result v0

    const-string/jumbo v1, "Access"

    const-string/jumbo v2, "platform key signed pkg"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1
.end method
