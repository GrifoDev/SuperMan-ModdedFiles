.class public Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;
.super Lcom/android/settings/utils/AsyncLoader;
.source "VolumeSizesLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/utils/AsyncLoader",
        "<",
        "Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mStats:Landroid/app/usage/StorageStatsManager;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mStats:Landroid/app/usage/StorageStatsManager;

    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mVolume:Landroid/os/storage/VolumeInfo;

    return-void
.end method

.method static getVolumeSize(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getTotalBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide v2

    invoke-interface {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getFreeBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide v0

    new-instance v4, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object v4
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {v2, v3, v4}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->getVolumeSize(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->loadInBackground()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;->onDiscardResult(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    return-void
.end method
