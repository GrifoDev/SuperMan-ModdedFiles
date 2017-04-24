.class Lcom/android/systemui/swipe/SwipeAnimator$3$1;
.super Ljava/lang/Object;
.source "SwipeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/swipe/SwipeAnimator$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/swipe/SwipeAnimator$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3$1;->this$1:Lcom/android/systemui/swipe/SwipeAnimator$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$3$1;->this$1:Lcom/android/systemui/swipe/SwipeAnimator$3;

    iget-object v0, v0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->-get0(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->onViEnd()V

    return-void
.end method
