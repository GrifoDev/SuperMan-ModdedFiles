.class Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$1;
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


# direct methods
.method constructor <init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    iget-boolean v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->-get0(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    iget-boolean v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->isCleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$1;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->-get0(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
