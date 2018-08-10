.class public Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;
.super Lcom/android/settings/utils/AsyncLoader;
.source "FetchPackageStorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/utils/AsyncLoader",
        "<",
        "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInfo:Landroid/content/pm/ApplicationInfo;

.field private final mSource:Lcom/android/settingslib/applications/StorageStatsSource;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/StorageStatsSource;

    iput-object v0, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    iput-object p3, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v3, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingslib/applications/StorageStatsSource;->getStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FetchPackageStorage"

    const-string/jumbo v3, "Package may have been removed during query, failing gracefully"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->loadInBackground()Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;->onDiscardResult(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    return-void
.end method
