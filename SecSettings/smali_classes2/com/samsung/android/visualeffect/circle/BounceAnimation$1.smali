.class Lcom/samsung/android/visualeffect/circle/BounceAnimation$1;
.super Ljava/lang/Object;
.source "BounceAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/circle/BounceAnimation;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

.field final synthetic val$scaleDownAnim:Landroid/view/animation/ScaleAnimation;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/circle/BounceAnimation;Landroid/view/animation/ScaleAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation$1;->this$0:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation$1;->val$scaleDownAnim:Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation$1;->this$0:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mListener:Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation$1;->this$0:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mListener:Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;->onBounceUpEnd()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation$1;->this$0:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation$1;->val$scaleDownAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
