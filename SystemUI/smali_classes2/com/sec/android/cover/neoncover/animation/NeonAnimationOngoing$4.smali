.class Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;
.super Ljava/lang/Object;
.source "NeonAnimationOngoing.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

.field final synthetic val$logoAnimation:Landroid/view/animation/AlphaAnimation;

.field final synthetic val$setA:Landroid/view/animation/AnimationSet;

.field final synthetic val$setC:Landroid/view/animation/AnimationSet;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;Landroid/view/animation/AnimationSet;Landroid/view/animation/AnimationSet;Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    iput-object p2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->val$setA:Landroid/view/animation/AnimationSet;

    iput-object p3, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->val$setC:Landroid/view/animation/AnimationSet;

    iput-object p4, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->val$logoAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    iget-boolean v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->-get1(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->-get2(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->val$setA:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->-get3(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->val$setC:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->-get0(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->val$logoAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->isPlaying:Z

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mNeonController:Lcom/sec/android/cover/neoncover/NeonControllerCallback;

    sget-object v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->ONGOING:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/neoncover/NeonControllerCallback;->onAnimationEnd(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
