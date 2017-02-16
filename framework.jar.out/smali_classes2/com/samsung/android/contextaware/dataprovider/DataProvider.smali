.class public abstract Lcom/samsung/android/contextaware/dataprovider/DataProvider;
.super Lcom/samsung/android/contextaware/manager/ContextProvider;
.source "DataProvider.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/manager/ContextProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected final initialize()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    const-string/jumbo v0, "mContext is null."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 56
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->initializeManager()V

    .line 53
    return-void
.end method

.method protected abstract initializeManager()V
.end method

.method protected final terminate()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->terminateManager()V

    .line 68
    return-void
.end method

.method protected abstract terminateManager()V
.end method
