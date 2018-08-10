.class public Landroid/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private final mUserId:I

.field private pkgNamesForDualApp:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    return-void
.end method


# virtual methods
.method public buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "data"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAndroidObbDirs()[Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "obb"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "data"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string/jumbo v2, "cache"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "data"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "data"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string/jumbo v2, "files"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "media"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "obb"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 3

    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method fixPathForDualApp([Ljava/io/File;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "persist.sys.dualapp.prop"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v5, v4, :cond_0

    const-string/jumbo v4, "/storage/emulated/0"

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "DualApp"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, p1, v4

    return-void

    :cond_0
    iget-object v4, p0, Landroid/os/Environment$UserEnvironment;->pkgNamesForDualApp:[Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/os/Environment$UserEnvironment;->pkgNamesForDualApp:[Ljava/lang/String;

    :cond_1
    iget-object v4, p0, Landroid/os/Environment$UserEnvironment;->pkgNamesForDualApp:[Ljava/lang/String;

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    const-string/jumbo v4, "/storage/emulated/0"

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/os/Environment$UserEnvironment;->pkgNamesForDualApp:[Ljava/lang/String;

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    const-string/jumbo v6, "com.kakao.talk"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "DualApp"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, p1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getExternalDirs()[Ljava/io/File;
    .locals 5

    iget v3, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    invoke-static {v3}, Landroid/os/ContainerUtil;->getExternalDirs(I)[Ljava/io/File;

    move-result-object v3

    return-object v3

    :cond_0
    iget v3, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    const/16 v4, 0x100

    invoke-static {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v2

    array-length v3, v2

    new-array v0, v3, [Ljava/io/File;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/os/Environment$UserEnvironment;->fixPathForDualApp([Ljava/io/File;)V

    :cond_2
    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    return v0
.end method
