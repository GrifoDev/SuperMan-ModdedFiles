.class Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;
.super Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$CountAnimatiorListener;
.source "NeonAnimationNewMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;I)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    invoke-direct {p0, p1, p3}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$CountAnimatiorListener;-><init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;I)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    iget-boolean v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->isPlaying:Z

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->-get0(Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->mBaseCount:I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->-get1(Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mNeonController:Lcom/sec/android/cover/neoncover/NeonControllerCallback;

    sget-object v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->NEW_MESSAGE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/neoncover/NeonControllerCallback;->onAnimationCancel(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    iget-boolean v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->isPlaying:Z

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->-get0(Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->mBaseCount:I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->-get1(Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->mNeonController:Lcom/sec/android/cover/neoncover/NeonControllerCallback;

    sget-object v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->NEW_MESSAGE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/neoncover/NeonControllerCallback;->onAnimationEnd(Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    iget-boolean v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->isPrepared:Z

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;->isPlaying:Z

    return-void
.end method
