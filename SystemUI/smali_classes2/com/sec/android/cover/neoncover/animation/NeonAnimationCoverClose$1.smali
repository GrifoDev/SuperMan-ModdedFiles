.class Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;
.super Ljava/lang/Object;
.source "NeonAnimationCoverClose.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;

    iget-boolean v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->isPlaying:Z

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->-get3(Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;

    iget-boolean v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->isPlaying:Z

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->-get3(Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->mNeonController:Lcom/sec/android/cover/neoncover/NeonControllerCallback;

    sget-object v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->COVER_CLOSE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/neoncover/NeonControllerCallback;->onAnimationEnd(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;

    iget-boolean v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->isPrepared:Z

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationCoverClose;->isPlaying:Z

    return-void
.end method
