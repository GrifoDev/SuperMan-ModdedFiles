.class public Lcom/android/systemui/splugins/SPluginService;
.super Landroid/app/Service;
.source "SPluginService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/splugins/SPluginService$1;
    }
.end annotation


# instance fields
.field private final mBinder:Lcom/android/systemui/splugins/ISPluginServiceCallbacks$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/systemui/splugins/SPluginService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/splugins/SPluginService$1;-><init>(Lcom/android/systemui/splugins/SPluginService;)V

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginService;->mBinder:Lcom/android/systemui/splugins/ISPluginServiceCallbacks$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "SPluginService"

    const-string/jumbo v1, "binding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginService;->mBinder:Lcom/android/systemui/splugins/ISPluginServiceCallbacks$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "SPluginService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
