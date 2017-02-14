.class Landroid/animation/StateListAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/StateListAnimator;->initAnimatorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/animation/StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    invoke-static {v0}, Landroid/animation/StateListAnimator;->-get0(Landroid/animation/StateListAnimator;)Landroid/animation/Animator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    invoke-static {v0, v1}, Landroid/animation/StateListAnimator;->-set1(Landroid/animation/StateListAnimator;Landroid/animation/Animator;)Landroid/animation/Animator;

    :cond_0
    return-void
.end method
