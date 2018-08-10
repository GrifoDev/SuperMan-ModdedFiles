.class public Landroid/os/ContainerUtil;
.super Ljava/lang/Object;
.source "ContainerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getExternalDirs(I)[Ljava/io/File;
    .locals 11

    const/4 v10, 0x0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isExternalStorageEnabled(I)Z

    move-result v0

    invoke-static {p0, v10}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v5

    array-length v6, v5

    new-array v1, v6, [Ljava/io/File;

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_4

    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/storage/Private"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_2

    xor-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_3

    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "knox"

    aput-object v8, v7, v10

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    aput-object v6, v1, v2

    goto :goto_1

    :cond_3
    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v1, v2

    goto :goto_1

    :cond_4
    array-length v6, v5

    if-ge v3, v6, :cond_6

    new-array v4, v3, [Ljava/io/File;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v6, v1, v2

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-object v4

    :cond_6
    return-object v1
.end method
