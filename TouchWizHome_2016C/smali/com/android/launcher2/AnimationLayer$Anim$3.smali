.class Lcom/android/launcher2/AnimationLayer$Anim$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationLayer.java"


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

.field final synthetic val$a:Landroid/animation/ValueAnimator;

.field final synthetic val$markCompleteOnEnd:Z

.field final synthetic val$ul:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p2, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->val$a:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->val$ul:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-boolean p4, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->val$markCompleteOnEnd:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->val$a:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->val$ul:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->val$a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->val$markCompleteOnEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->markCompleted()V

    :cond_0
    return-void
.end method
