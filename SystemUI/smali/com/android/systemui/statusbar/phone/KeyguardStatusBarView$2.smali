.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animateNextLayoutChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isFinishedClockAnimation:Z

.field isFinishedSystemIconAnimation:Z

.field isMultiUserSwitchAnimation:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field final synthetic val$clockCurrentX:I

.field final synthetic val$systemIconsCurrentX:I

.field final synthetic val$userSwitcherVisible:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->isAnimationFinished()Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->val$userSwitcherVisible:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->val$systemIconsCurrentX:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->val$clockCurrentX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isAnimationFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->isFinishedSystemIconAnimation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->isFinishedClockAnimation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->isMultiUserSwitchAnimation:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_KeyguardStatusBarView$2_24202()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->isFinishedSystemIconAnimation:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->isAnimationFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-set0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_KeyguardStatusBarView$2_24919()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->isFinishedClockAnimation:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->isAnimationFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-set0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_KeyguardStatusBarView$2_26738()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->isMultiUserSwitchAnimation:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->isAnimationFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-set0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 12

    const/16 v3, 0x12c

    const/4 v4, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const-wide/16 v8, 0x12c

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->val$userSwitcherVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eq v2, v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)F

    move-result v5

    sub-float v5, v11, v5

    mul-float v0, v2, v5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get3(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;

    move-result-object v5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock;->getAlpha()F

    move-result v2

    const v6, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v6

    if-gez v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->val$systemIconsCurrentX:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/Clock;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    :goto_1
    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setX(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get3(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    if-eqz v1, :cond_3

    move v2, v3

    :goto_2
    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/statusbar/phone/-$Lambda$UMflBmCH5laIPnViqO4EZg_5yeI;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$UMflBmCH5laIPnViqO4EZg_5yeI;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->val$clockCurrentX:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/policy/Clock;->setX(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v1, :cond_4

    :goto_3
    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$UMflBmCH5laIPnViqO4EZg_5yeI$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$UMflBmCH5laIPnViqO4EZg_5yeI$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_4
    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->val$systemIconsCurrentX:I

    goto/16 :goto_1

    :cond_3
    move v2, v4

    goto/16 :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$UMflBmCH5laIPnViqO4EZg_5yeI$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$UMflBmCH5laIPnViqO4EZg_5yeI$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_4
.end method
