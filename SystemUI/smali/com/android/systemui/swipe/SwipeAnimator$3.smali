.class Lcom/android/systemui/swipe/SwipeAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/swipe/SwipeAnimator;->showTapAffordanceAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->-get7(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/swipe/SwipeAnimator$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/swipe/SwipeAnimator$3$1;-><init>(Lcom/android/systemui/swipe/SwipeAnimator$3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
