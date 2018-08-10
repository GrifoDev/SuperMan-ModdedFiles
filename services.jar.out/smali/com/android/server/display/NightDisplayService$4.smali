.class Lcom/android/server/display/NightDisplayService$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NightDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NightDisplayService;->applyTint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;

.field final synthetic val$dtm:Lcom/android/server/display/DisplayTransformManager;

.field final synthetic val$to:[F


# direct methods
.method constructor <init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$4;->this$0:Lcom/android/server/display/NightDisplayService;

    iput-object p2, p0, Lcom/android/server/display/NightDisplayService$4;->val$dtm:Lcom/android/server/display/DisplayTransformManager;

    iput-object p3, p0, Lcom/android/server/display/NightDisplayService$4;->val$to:[F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/NightDisplayService$4;->mIsCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/NightDisplayService$4;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$4;->val$dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$4;->val$to:[F

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$4;->this$0:Lcom/android/server/display/NightDisplayService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/NightDisplayService;->-set0(Lcom/android/server/display/NightDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
