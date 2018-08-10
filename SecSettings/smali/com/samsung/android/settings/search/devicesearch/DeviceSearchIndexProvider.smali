.class public Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexProvider;
.super Landroid/content/ContentProvider;
.source "DeviceSearchIndexProvider.java"


# instance fields
.field mIndexModule:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexProvider;->mIndexModule:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexProvider;->mIndexModule:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexProvider;->mIndexModule:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexProvider;->mIndexModule:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexProvider;->mIndexModule:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule;

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.settings.search.devicesearch.DeviceSearchIndexProvider"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexProvider;->mIndexModule:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->isIndexingRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DeviceSearchIndexProvider"

    const-string/jumbo v1, "Indexing process still running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexProvider;->mIndexModule:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexProvider;->mIndexModule:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
