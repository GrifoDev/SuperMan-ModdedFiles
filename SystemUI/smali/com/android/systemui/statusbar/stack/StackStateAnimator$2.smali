.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;->mWasCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get2(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get2(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;->mWasCancelled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-wrap1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;->mWasCancelled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get2(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
