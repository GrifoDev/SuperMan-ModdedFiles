.class Lcom/android/launcher2/AnimationLayer$Anim$2;
.super Ljava/lang/Object;
.source "AnimationLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AnimationLayer$Anim;->addAlphaAnimator(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$from:F

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/AnimationLayer$Anim;FF)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim$2;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iput p2, p0, Lcom/android/launcher2/AnimationLayer$Anim$2;->val$from:F

    iput p3, p0, Lcom/android/launcher2/AnimationLayer$Anim$2;->val$to:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim$2;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher2/AnimationLayer$Anim$2;->val$from:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/AnimationLayer$Anim$2;->val$to:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim$2;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim$2;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    return-void
.end method
