.class Lcom/android/launcher2/AnimationLayer$Anim$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AnimationLayer$Anim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AnimationLayer$Anim;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->markCompleted()V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-static {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->access$200(Lcom/android/launcher2/AnimationLayer$Anim;)V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mEndCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mEndCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
