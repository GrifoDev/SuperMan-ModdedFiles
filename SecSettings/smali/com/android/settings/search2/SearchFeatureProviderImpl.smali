.class public Lcom/android/settings/search2/SearchFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SearchFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/search2/SearchFeatureProvider;


# instance fields
.field private mDatabaseIndexingManager:Lcom/android/settings/search2/DatabaseIndexingManager;

.field private mSiteMapManager:Lcom/android/settings/dashboard/SiteMapManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatabaseSearchLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/search2/DatabaseResultLoader;
    .locals 2

    new-instance v0, Lcom/android/settings/search2/DatabaseResultLoader;

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFeatureProviderImpl;->getSiteMapManager()Lcom/android/settings/dashboard/SiteMapManager;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/settings/search2/DatabaseResultLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/dashboard/SiteMapManager;)V

    return-object v0
.end method

.method public getIndexingManager(Landroid/content/Context;)Lcom/android/settings/search2/DatabaseIndexingManager;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/search2/SearchFeatureProviderImpl;->mDatabaseIndexingManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/search2/DatabaseIndexingManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search2/DatabaseIndexingManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/search2/SearchFeatureProviderImpl;->mDatabaseIndexingManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/search2/SearchFeatureProviderImpl;->mDatabaseIndexingManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    return-object v0
.end method

.method public getInstalledAppSearchLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/search2/InstalledAppResultLoader;
    .locals 3

    new-instance v0, Lcom/android/settings/search2/InstalledAppResultLoader;

    new-instance v1, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {p0}, Lcom/android/settings/search2/SearchFeatureProviderImpl;->getSiteMapManager()Lcom/android/settings/dashboard/SiteMapManager;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/settings/search2/InstalledAppResultLoader;-><init>(Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;Ljava/lang/String;Lcom/android/settings/dashboard/SiteMapManager;)V

    return-object v0
.end method

.method public getSavedQueryLoader(Landroid/content/Context;)Lcom/android/settings/search2/SavedQueryLoader;
    .locals 1

    new-instance v0, Lcom/android/settings/search2/SavedQueryLoader;

    invoke-direct {v0, p1}, Lcom/android/settings/search2/SavedQueryLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSiteMapManager()Lcom/android/settings/dashboard/SiteMapManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/SearchFeatureProviderImpl;->mSiteMapManager:Lcom/android/settings/dashboard/SiteMapManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/SiteMapManager;

    invoke-direct {v0}, Lcom/android/settings/dashboard/SiteMapManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search2/SearchFeatureProviderImpl;->mSiteMapManager:Lcom/android/settings/dashboard/SiteMapManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/search2/SearchFeatureProviderImpl;->mSiteMapManager:Lcom/android/settings/dashboard/SiteMapManager;

    return-object v0
.end method

.method public isIndexingComplete(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/search2/SearchFeatureProviderImpl;->getIndexingManager(Landroid/content/Context;)Lcom/android/settings/search2/DatabaseIndexingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search2/DatabaseIndexingManager;->isIndexingComplete()Z

    move-result v0

    return v0
.end method

.method public updateIndex(Landroid/content/Context;Lcom/android/settings/search/IndexingCallback;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/android/settings/search2/SearchFeatureProviderImpl;->getIndexingManager(Landroid/content/Context;)Lcom/android/settings/search2/DatabaseIndexingManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/settings/search2/DatabaseIndexingManager;->indexDatabase(Lcom/android/settings/search/IndexingCallback;)V

    const-string/jumbo v2, "SearchFeatureProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IndexDatabase() took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
