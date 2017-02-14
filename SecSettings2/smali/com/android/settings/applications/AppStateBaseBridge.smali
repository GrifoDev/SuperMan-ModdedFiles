.class public abstract Lcom/android/settings/applications/AppStateBaseBridge;
.super Ljava/lang/Object;
.source "AppStateBaseBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;,
        Lcom/android/settings/applications/AppStateBaseBridge$Callback;,
        Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;
    }
.end annotation


# instance fields
.field protected final mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field protected final mAppState:Lcom/android/settingslib/applications/ApplicationsState;

.field protected final mCallback:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

.field protected final mHandler:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

.field protected final mMainHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppState:Lcom/android/settingslib/applications/ApplicationsState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iput-object p2, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mCallback:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    new-instance v2, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppState:Lcom/android/settingslib/applications/ApplicationsState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_1
    invoke-direct {v2, p0, v0}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;-><init>(Lcom/android/settings/applications/AppStateBaseBridge;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    new-instance v0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/android/settings/applications/AppStateBaseBridge;Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public forceUpdate(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected abstract loadAllExtraInfo()V
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->pause()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->release()V

    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->resume()V

    return-void
.end method

.method protected abstract updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
.end method
