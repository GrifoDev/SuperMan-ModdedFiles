.class Lcom/android/launcher2/HomeView$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$l:Lcom/android/launcher2/AnimationLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/AnimationLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$13;->this$0:Lcom/android/launcher2/HomeView;

    iput-object p2, p0, Lcom/android/launcher2/HomeView$13;->val$l:Lcom/android/launcher2/AnimationLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/HomeView$13;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1800(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->releaseTouchBooster()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/HomeView$13;->val$l:Lcom/android/launcher2/AnimationLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$13;->val$l:Lcom/android/launcher2/AnimationLayer;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView$13;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1800(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView$13;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1800(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView$13;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1800(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView$13;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1800(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->releaseTouchBooster()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->acquireTouchBoosterWihtoutTimer()V

    return-void
.end method
