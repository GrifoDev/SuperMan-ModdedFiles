.class Lcom/android/server/wm/ScreenFreezeAnimationController$1;
.super Ljava/lang/Object;
.source "ScreenFreezeAnimationController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ScreenFreezeAnimationController;->createKeepVisibleAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ScreenFreezeAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ScreenFreezeAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ScreenFreezeAnimationController$1;->this$0:Lcom/android/server/wm/ScreenFreezeAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ScreenFreezeController"

    const-string/jumbo v1, "keep_visible_animation onAnimationEnd()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ScreenFreezeController"

    const-string/jumbo v1, "keep_visible_animation onAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
