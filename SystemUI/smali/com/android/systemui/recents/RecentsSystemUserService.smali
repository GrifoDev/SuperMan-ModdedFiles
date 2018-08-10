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
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemUserCallbacks()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
