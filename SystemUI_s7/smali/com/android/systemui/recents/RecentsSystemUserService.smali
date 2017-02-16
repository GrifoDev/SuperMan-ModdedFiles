.class public Lcom/android/systemui/recents/RecentsSystemUserService;
.super Landroid/app/Service;
.source "RecentsSystemUserService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsSystemUserService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/Recents;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recents/Recents;->getSystemUserCallbacks()Landroid/os/IBinder;

    move-result-object v2

    return-object v2

    :cond_0
    return-object v3
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
