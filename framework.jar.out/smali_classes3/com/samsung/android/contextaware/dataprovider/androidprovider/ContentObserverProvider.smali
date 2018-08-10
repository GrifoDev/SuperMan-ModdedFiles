.class public abstract Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;
.source "ContentObserverProvider.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->unregisterContentObserver()V

    return-void
.end method

.method public enable()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->registerContentObserver()V

    return-void
.end method

.method protected abstract getContentObserver()Landroid/database/ContentObserver;
.end method

.method protected final getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Action"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected abstract getUri()Landroid/net/Uri;
.end method

.method protected initializeManager()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mContext is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method protected isNotifyForDescendents()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final registerContentObserver()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->isNotifyForDescendents()Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected terminateManager()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method protected final unregisterContentObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected updateContext(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->notifyObserver()V

    return-void
.end method
