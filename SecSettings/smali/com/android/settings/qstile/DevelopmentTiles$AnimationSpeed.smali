.class public Lcom/android/settings/qstile/DevelopmentTiles$AnimationSpeed;
.super Lcom/android/settings/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationSpeed"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/qstile/DevelopmentTiles;-><init>()V

    return-void
.end method


# virtual methods
.method protected isEnabled()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3}, Landroid/view/IWindowManager;->getAnimationScale(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    return v2
.end method

.method protected setIsEnabled(Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz p1, :cond_0

    const/16 v3, 0xa

    :cond_0
    int-to-float v1, v3

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
