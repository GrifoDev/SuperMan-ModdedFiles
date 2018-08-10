.class public Landroid/app/usage/StorageStatsManager;
.super Ljava/lang/Object;
.source "StorageStatsManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/usage/IStorageStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/IStorageStatsManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/IStorageStatsManager;

    iput-object v0, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    return-void
.end method


# virtual methods
.method public getCacheBytes(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/util/UUID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheBytes(Ljava/util/UUID;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/app/usage/IStorageStatsManager;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;I)J
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/usage/IStorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getFreeBytes(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/util/UUID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreeBytes(Ljava/util/UUID;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/app/usage/IStorageStatsManager;->getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getTotalBytes(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/util/UUID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalBytes(Ljava/util/UUID;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/app/usage/IStorageStatsManager;->getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isQuotaSupported(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public isQuotaSupported(Ljava/util/UUID;)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/usage/IStorageStatsManager;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryExternalStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v0

    return-object v0
.end method

.method public queryExternalStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget-object v5, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Landroid/app/usage/IStorageStatsManager;->queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0
.end method

.method public queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget-object v5, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, p2, v4, v5}, Landroid/app/usage/IStorageStatsManager;->queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    const-class v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/util/UUID;I)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0
.end method

.method public queryStatsForUid(Ljava/util/UUID;I)Landroid/app/usage/StorageStats;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p2, v4}, Landroid/app/usage/IStorageStatsManager;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public queryStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0
.end method

.method public queryStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/usage/StorageStatsManager;->mService:Landroid/app/usage/IStorageStatsManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget-object v5, p0, Landroid/app/usage/StorageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Landroid/app/usage/IStorageStatsManager;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
