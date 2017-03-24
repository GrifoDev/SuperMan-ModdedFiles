.class Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAlphaAffordanceAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->-set1(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;->setPlayingAlphaAnimation(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
