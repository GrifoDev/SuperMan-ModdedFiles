.class final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mCacheFullyMatchesDisk:Z

.field private final mCacheName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->mCacheFullyMatchesDisk:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->mCacheName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->mCacheFullyMatchesDisk:Z

    return p1
.end method

.method public static isRedundantSetValue(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_1

    monitor-exit p0

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static populate(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;Landroid/content/ContentValues;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null name populating settings cache."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "value"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->populate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/os/Bundle;

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->entryRemoved(ZLjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->mCacheFullyMatchesDisk:Z

    :cond_0
    return-void
.end method

.method public fullyMatchesDisk()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->mCacheFullyMatchesDisk:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public populate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_1

    :cond_0
    const-string v0, "value"

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->access$200(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->access$400()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    if-nez p2, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->access$100()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_2

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    :cond_3
    const-string v0, "value"

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->access$200(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setFullyMatchesDisk(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->mCacheFullyMatchesDisk:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
