.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->finishAnimation(FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field final synthetic val$mAnimationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$maxCircleSize:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;->val$mAnimationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;->val$maxCircleSize:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;->val$mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set14(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;->val$maxCircleSize:F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set7(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    return-void
.end method
