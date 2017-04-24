.class public Lcom/android/systemui/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/systemui/statusbar/policy/HeadsUpManager$OnHeadsUpChangedListener;


# static fields
.field public static final KEYGUARD_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimateChange:Z

.field private mAnimateKeyguardFadingOut:Z

.field private mAnimationDelay:J

.field protected mBouncerShowing:Z

.field private mCurrentBehindAlpha:F

.field private mCurrentHeadsUpAlpha:F

.field private mCurrentInFrontAlpha:F

.field private mDarkenWhileDragging:Z

.field private mDontAnimateBouncerChanges:Z

.field private mDozeBehindAlpha:F

.field private mDozeInFrontAlpha:F

.field private mDozing:Z

.field private mDraggedHeadsUpView:Landroid/view/View;

.field private mDurationOverride:J

.field private mExpanding:Z

.field private mForceHideScrims:Z

.field private mFraction:F

.field private final mHeadsUpScrim:Landroid/view/View;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field protected mIsSecure:Z

.field protected mIsShadeLocked:Z

.field private mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

.field private mKeyguardFadingOutInProgress:Z

.field protected mKeyguardShowing:Z

.field private mOnAnimationFinished:Ljava/lang/Runnable;

.field private mPinnedHeadsUpCount:I

.field protected final mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field private mScrimBehindAlpha:F

.field private mScrimBehindAlphaKeyguard:F

.field private mScrimBehindAlphaUnlocking:F

.field private final mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field private mSkipFirstFrame:Z

.field private mSkipOnce:Z

.field private mSwipeFraction:F

.field private mTopHeadsUpDragAmount:F

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdatePending:Z

.field private mWakeAndUnlocking:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/ScrimController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentScrimAlpha(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v1, 0x3f1eb852    # 0.62f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    const v1, 0x3ee66666    # 0.45f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaUnlocking:F

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentHeadsUpAlpha:F

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsSecure:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    return-void
.end method

.method private calculateHeadsUpAlpha()F
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    sub-float v1, v4, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v2, v0, v1

    return v2

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTopHeadsUpDragAmount:F

    sub-float v0, v4, v2

    goto :goto_0
.end method

.method private endAnimateKeyguardFadingOut(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    goto :goto_0
.end method

.method private getCurrentScrimAlpha(Landroid/view/View;)F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentHeadsUpAlpha:F

    goto :goto_0
.end method

.method private getDozeAlpha(Landroid/view/View;)F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    goto :goto_0
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private isAnimating(Landroid/view/View;)Z
    .locals 1

    const v0, 0x7f130035

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleUpdate()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    return-void
.end method

.method private setCurrentScrimAlpha(Landroid/view/View;F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentHeadsUpAlpha:F

    goto :goto_0
.end method

.method private setScrimBehindColor(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Landroid/view/View;F)V

    return-void
.end method

.method private setScrimColor(Landroid/view/View;F)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrim(ZLandroid/view/View;FF)V

    return-void
.end method

.method private setScrimInFrontColor(F)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Landroid/view/View;F)V

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private startScrimAnimation(Landroid/view/View;F)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    aput p2, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v2, :cond_0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSkipFirstFrame:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_1
    const v2, 0x7f130035

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x7f130036

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_2
    const-wide/16 v2, 0xdc

    goto :goto_0
.end method

.method private updateHeadsUpScrim(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->calculateHeadsUpAlpha()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentHeadsUpAlpha:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrim(ZLandroid/view/View;FF)V

    return-void
.end method

.method private updateScrim(ZLandroid/view/View;FF)V
    .locals 10

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    if-eqz v7, :cond_0

    return-void

    :cond_0
    const v7, 0x7f130035

    invoke-static {p2, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz v2, :cond_2

    if-nez p1, :cond_1

    cmpl-float v7, p3, p4

    if-nez v7, :cond_4

    :cond_1
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    :goto_0
    cmpl-float v7, p3, p4

    if-eqz v7, :cond_3

    cmpl-float v7, p3, v0

    if-eqz v7, :cond_3

    if-eqz p1, :cond_5

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v8, 0x7f130037

    invoke-virtual {p2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v8, 0x7f130038

    invoke-virtual {p2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const v7, 0x7f130038

    invoke-static {p2, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    const v7, 0x7f130037

    invoke-static {p2, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const v7, 0x7f130038

    invoke-static {p2, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    sub-float v5, p3, v3

    add-float v1, v4, v5

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v1, v8, v9

    const/4 v9, 0x1

    aput p3, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v8, 0x7f130037

    invoke-virtual {p2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v8, 0x7f130038

    invoke-virtual {p2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentScrimAlpha(Landroid/view/View;F)V

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;)V

    goto :goto_1
.end method

.method private updateScrimColor(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    instance-of v3, p1, Lcom/android/systemui/statusbar/ScrimView;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeAlpha(Landroid/view/View;)F

    move-result v2

    sub-float v3, v5, v1

    sub-float v4, v5, v2

    mul-float/2addr v3, v4

    sub-float v0, v5, v3

    check-cast p1, Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-static {v3, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ScrimView;->setScrimColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private updateScrimKeyguard()V
    .locals 10

    const/high16 v7, 0x3f400000    # 0.75f

    const-wide v8, 0x3fe99999a0000000L    # 0.800000011920929

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v2, v6, v1

    float-to-double v4, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    float-to-double v4, v1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float v4, v2, v7

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    mul-float/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSkipOnce:Z

    if-eqz v4, :cond_1

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSkipOnce:Z

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0

    :cond_1
    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSwipeFraction:F

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const v4, 0x3e7fffff    # 0.24999999f

    mul-float v0, v3, v4

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0
.end method

.method private updateScrimNormal()V
    .locals 8

    const/4 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v0

    const v3, 0x3e4ccccd    # 0.2f

    sub-float v0, v2, v3

    cmpg-float v2, v0, v4

    if-gtz v2, :cond_0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    :goto_0
    return-void

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x400921fa00000000L    # 3.141590118408203

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double v2, v6, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    sub-double v2, v6, v2

    double-to-float v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    mul-float/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0
.end method


# virtual methods
.method public abortKeyguardFadingOut()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->endAnimateKeyguardFadingOut(Z)V

    :cond_0
    return-void
.end method

.method public animateGoingToFullShade(JJ)V
    .locals 1

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public animateKeyguardFadingOut(JJLjava/lang/Runnable;Z)V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeAndUnlocking:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSkipFirstFrame:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onPreDraw()Z

    return-void
.end method

.method public animateNextChange()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    return-void
.end method

.method public cancelWakeAndUnlocking()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeAndUnlocking:Z

    return-void
.end method

.method public dontAnimateBouncerChangesUntilNextFrame()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDontAnimateBouncerChanges:Z

    return-void
.end method

.method public forceHideScrims(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public getDozeBehindAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    return v0
.end method

.method public getDozeInFrontAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    return v0
.end method

.method public getScrimBehindColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getScrimColorWithAlpha()I

    move-result v0

    return v0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d027a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 0

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDraggedHeadsUpView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDraggedHeadsUpView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTopHeadsUpDragAmount:F

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDontAnimateBouncerChanges:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDontAnimateBouncerChanges:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSkipFirstFrame:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->endAnimateKeyguardFadingOut(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public onTrackingStarted()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDontAnimateBouncerChanges:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDozeBehindAlpha(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;)V

    return-void
.end method

.method public setDozeInFrontAlpha(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;)V

    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    :cond_0
    return-void
.end method

.method public setDrawBehindAsSrc(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setDrawAsSrc(Z)V

    return-void
.end method

.method public setExcludedBackgroundArea(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setExcludedArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setIsShadeLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsShadeLocked:Z

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public setPanelExpansion(F)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setChangeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSkipScrimAlphaOnce()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSkipOnce:Z

    return-void
.end method

.method public setSwipedFraction(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsSecure:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSwipeFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSwipeFraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSwipeFraction:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSwipeFraction:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    :cond_1
    return-void
.end method

.method public setTopHeadsUpDragAmount(Landroid/view/View;F)V
    .locals 1

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTopHeadsUpDragAmount:F

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDraggedHeadsUpView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    return-void
.end method

.method public setWakeAndUnlocking()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeAndUnlocking:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method protected updateScrims()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsShadeLocked:Z

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimNormal()V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimKeyguard()V

    goto :goto_0
.end method
