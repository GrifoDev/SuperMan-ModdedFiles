.class public abstract Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;
.source "IntentActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider$1;
    }
.end annotation


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "cannot disable"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public enable()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "cannot enable"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
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

.method protected getIntentAction()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getIntentFilterName()Ljava/lang/String;
.end method

.method protected final initializeManager()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mContext is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->getIntentFilterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->getIntentFilterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "mIntentAction is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->getIntentFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method protected final terminateManager()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/IntentActionProvider;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method protected abstract updateContext(Landroid/content/Intent;)V
.end method
