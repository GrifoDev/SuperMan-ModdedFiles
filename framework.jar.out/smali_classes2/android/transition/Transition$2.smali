.class Landroid/transition/Transition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/Transition;

.field final synthetic val$runningAnimators:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/transition/Transition;Landroid/util/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Landroid/transition/Transition$2;->this$0:Landroid/transition/Transition;

    iput-object p2, p0, Landroid/transition/Transition$2;->val$runningAnimators:Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition$2;->val$runningAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/transition/Transition$2;->this$0:Landroid/transition/Transition;

    invoke-static {v0}, Landroid/transition/Transition;->-get0(Landroid/transition/Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/transition/Transition$2;->this$0:Landroid/transition/Transition;

    invoke-static {v0}, Landroid/transition/Transition;->-get0(Landroid/transition/Transition;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
