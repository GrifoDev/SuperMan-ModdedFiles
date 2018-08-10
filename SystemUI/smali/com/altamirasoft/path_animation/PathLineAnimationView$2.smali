.class Lcom/altamirasoft/path_animation/PathLineAnimationView$2;
.super Ljava/lang/Object;
.source "PathLineAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

.field final synthetic val$aModel:Lcom/altamirasoft/path_animation/PathLineAnimatorModel;


# direct methods
.method constructor <init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;Lcom/altamirasoft/path_animation/PathLineAnimatorModel;)V
    .locals 0

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-object p2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;->val$aModel:Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v1, v1, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;->val$aModel:Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    iput v0, v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidate()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;->val$aModel:Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iput v2, v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    goto :goto_0
.end method
