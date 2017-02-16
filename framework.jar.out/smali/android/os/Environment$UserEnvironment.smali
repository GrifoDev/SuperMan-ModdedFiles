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


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    .line 87
    return-void
.end method


# virtual methods
.method public buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 4

    .prologue
    .line 164
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

    .prologue
    .line 168
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
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 188
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
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 172
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
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 184
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
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 176
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
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 180
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
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 160
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

.method public getExternalDirs()[Ljava/io/File;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 93
    iget v8, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    const/16 v9, 0x64

    if-lt v8, v9, :cond_7

    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "extPolicy":Z
    :try_start_0
    const-string/jumbo v8, "persona"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v4

    .line 97
    .local v4, "personaService":Lcom/samsung/android/knox/ISemPersonaManager;
    iget v8, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    invoke-interface {v4, v8}, Lcom/samsung/android/knox/ISemPersonaManager;->isExternalStorageEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    .end local v1    # "extPolicy":Z
    .end local v4    # "personaService":Lcom/samsung/android/knox/ISemPersonaManager;
    :goto_0
    iget v8, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    invoke-static {v8, v12}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 111
    .local v7, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v8, v7

    new-array v2, v8, [Ljava/io/File;

    .line 112
    .local v2, "files":[Ljava/io/File;
    const/4 v5, 0x0

    .line 113
    .local v5, "resized":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_4

    .line 114
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "/storage/Private"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 113
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    .end local v5    # "resized":I
    .end local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    .restart local v1    # "extPolicy":Z
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "extPolicy":Z
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v3    # "i":I
    .restart local v5    # "resized":I
    .restart local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v1, :cond_0

    .line 120
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 121
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 122
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    .line 123
    const-string/jumbo v10, "knox"

    aput-object v10, v9, v12

    iget v10, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 122
    invoke-static {v8, v9}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    aput-object v8, v2, v3

    goto :goto_2

    .line 125
    :cond_3
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v8

    aput-object v8, v2, v3

    goto :goto_2

    .line 128
    :cond_4
    array-length v8, v7

    if-ge v5, v8, :cond_6

    .line 129
    new-array v6, v5, [Ljava/io/File;

    .line 130
    .local v6, "resizedfiles":[Ljava/io/File;
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_5

    .line 131
    aget-object v8, v2, v3

    aput-object v8, v6, v3

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 133
    :cond_5
    return-object v6

    .line 136
    .end local v6    # "resizedfiles":[Ljava/io/File;
    :cond_6
    return-object v2

    .line 140
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    .end local v5    # "resized":I
    .end local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_7
    iget v8, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    .line 141
    const/16 v9, 0x100

    .line 140
    invoke-static {v8, v9}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 142
    .restart local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    array-length v8, v7

    new-array v2, v8, [Ljava/io/File;

    .line 143
    .restart local v2    # "files":[Ljava/io/File;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    array-length v8, v7

    if-ge v3, v8, :cond_8

    .line 144
    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v8

    aput-object v8, v2, v3

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 146
    :cond_8
    return-object v2
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
