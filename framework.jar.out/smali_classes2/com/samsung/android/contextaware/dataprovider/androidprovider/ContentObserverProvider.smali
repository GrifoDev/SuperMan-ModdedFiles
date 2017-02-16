.class public abstract Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;
.source "ContentObserverProvider.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 48
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->unregisterContentObserver()V

    .line 125
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->registerContentObserver()V

    .line 115
    return-void
.end method

.method protected abstract getContentObserver()Landroid/database/ContentObserver;
.end method

.method protected final getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
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

    .prologue
    .line 61
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    const-string/jumbo v0, "mContext is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 63
    return-void

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    return-void
.end method

.method protected isNotifyForDescendents()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method protected final registerContentObserver()V
    .locals 4

    .prologue
    .line 140
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->isNotifyForDescendents()Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v3

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    return-void
.end method

.method protected terminateManager()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 77
    return-void
.end method

.method protected final unregisterContentObserver()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 151
    return-void
.end method

.method protected updateContext(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->notifyObserver()V

    .line 164
    return-void
.end method
