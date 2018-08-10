.class public abstract Lcom/android/systemui/statusbar/ActivatableNotificationView;
.super Lcom/android/systemui/statusbar/ExpandableOutlineView;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ActivatableNotificationView$1;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$2;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$3;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$4;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
    }
.end annotation


# static fields
.field private static final ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivated:Z

.field private mAnimationTranslationY:F

.field private mAppearAnimationFraction:F

.field private mAppearAnimationRect:Landroid/graphics/RectF;

.field private mAppearAnimationTranslation:F

.field private mAppearAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBgAlpha:F

.field protected mBgTint:I

.field private mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentBackgroundTint:I

.field private mCurrentWhiteKeyguard:Z

.field private mDark:Z

.field private mDimmed:Z

.field private mDimmedAlpha:I

.field private mDimmedBackgroundFadeInAmount:F

.field private final mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

.field private mDrawingAppearAnimation:Z

.field private mFadeInEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

.field private mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mIsBelowSpeedBump:Z

.field protected mIsSanitized:Z

.field private final mLowPriorityColor:I

.field private final mLowPriorityRippleColor:I

.field private mNeedsDimming:Z

.field private mNormalBackgroundVisibilityAmount:F

.field private final mNormalColor:I

.field protected final mNormalRippleColor:I

.field private mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

.field protected mOnKeyguard:Z

.field private mOverrideAmount:F

.field private mOverrideTint:I

.field private mShadowAlpha:F

.field private mShadowHidden:Z

.field private final mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTint:I

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTargetTint:I

.field private final mTintedRippleColor:I

.field private mUpdateOutlineListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mWasActivatedOnDown:Z


# direct methods
.method static synthetic -com_android_systemui_statusbar_ActivatableNotificationView-mthref-1(Lcom/android/systemui/classifier/FalsingManager;ZFF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationDoubleTap(ZFF)V

    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/ActivatableNotificationView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mStartTint:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/ActivatableNotificationView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTargetTint:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/ActivatableNotificationView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mUpdateOutlineListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentWhiteKeyguard:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsSanitized:Z

    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipChildren(Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipToPadding(Z)V

    const v0, 0x7f060125

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    const v0, 0x7f06012a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    const v0, 0x7f060135

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    const v0, 0x7f060134

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    const v0, 0x7f060136

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    new-instance v2, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$1;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$3;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$2;

    invoke-direct {v5, v1}, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$2;-><init>(Ljava/lang/Object;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    return-void
.end method

.method private calculateBgColor(ZZ)I
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060127

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideTint:I

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideTint:I

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideAmount:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v1

    return v1

    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    return v1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    return v1
.end method

.method private cancelAppearAnimation()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private cancelFadeAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method private enableAppearDrawing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setContentAlpha(F)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineRect(Landroid/graphics/RectF;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->invalidate()V

    :cond_1
    return-void
.end method

.method private fadeDimmedBackground()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0
.end method

.method private fadeInFromDark(J)V
    .locals 7

    const-wide/16 v4, 0xc8

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/TimeAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mUpdateOutlineListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleTouchEventDimmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private isTouchExplorationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method private makeActive()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationActive()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateNotificationContentColor(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    :cond_0
    return-void
.end method

.method private setBackgroundTintColor(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    :cond_1
    return-void
.end method

.method private setContentAlpha(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private startActivateAnimation(Z)V
    .locals 14

    const-wide/16 v12, 0xdc

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isDimmable()Z

    move-result v9

    if-nez v9, :cond_1

    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v9

    div-int/lit8 v6, v9, 0x2

    iget-object v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getActualHeight()I

    move-result v9

    div-int/lit8 v3, v9, 0x2

    mul-int v9, v6, v6

    mul-int v10, v3, v3

    add-int/2addr v9, v10

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v5, v10

    if-eqz p1, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-static {v9, v6, v3, v5, v7}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    :goto_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    if-nez p1, :cond_3

    sget-object v4, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    iget-object v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    new-instance v9, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v2, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v9, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-static {v9, v6, v3, v7, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_5
    move v7, v8

    goto :goto_3
.end method

.method private startAppearAnimation(ZFJJLjava/lang/Runnable;)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelAppearAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    long-to-float v2, p5

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;

    invoke-direct {v2, p0, p7, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Ljava/lang/Runnable;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAppearAnimationAlpha()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    div-float/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setContentAlpha(F)V

    return-void
.end method

.method private updateAppearRect()V
    .locals 15

    const v14, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float v3, v13, v10

    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float v7, v8, v10

    iput v7, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    sub-float v10, v3, v12

    const v11, 0x3f4ccccd    # 0.8f

    div-float v9, v10, v11

    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ef33333    # 0.475f

    mul-float/2addr v10, v11

    mul-float v4, v10, v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v5, v10, v4

    sub-float v10, v3, v12

    div-float v2, v10, v13

    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v0

    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_0

    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float/2addr v11, v2

    mul-float/2addr v11, v14

    sub-float/2addr v10, v11

    sub-float v1, v10, v7

    mul-float v6, v1, v2

    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v4, v6, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v10, v6

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v11, v1

    invoke-virtual {p0, v4, v10, v5, v11}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineRect(FFFF)V

    return-void

    :cond_0
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    add-float/2addr v10, v11

    mul-float/2addr v10, v2

    mul-float/2addr v10, v14

    sub-float v6, v10, v7

    int-to-float v10, v0

    sub-float v11, v13, v2

    mul-float/2addr v10, v11

    mul-float v11, v6, v2

    add-float v1, v10, v11

    goto :goto_0
.end method

.method private updateBackgroundTint(Z)V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getRippleColor()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor()I

    move-result v0

    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq v0, v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mStartTint:I

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTargetTint:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x168

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_ActivatableNotificationView-mthref-0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->handleSlideBack()Z

    move-result v0

    return v0
.end method

.method public calculateBgColor()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result v0

    return v0
.end method

.method protected changeBGAlphaWhileSwiping(F)V
    .locals 7

    const/16 v6, 0x14

    const/high16 v5, 0x437f0000    # 255.0f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldUpdateNotificationContentColor()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnKeyguard:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getLockNoticardOpacity()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentWhiteKeyguard:Z

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/NotificationColorUtil;->getOpacityOnKeyguard(FIZ)F

    move-result v0

    mul-float v2, v0, v5

    float-to-int v2, v2

    if-le v2, v6, :cond_1

    return-void

    :cond_1
    mul-float v2, v0, v5

    float-to-int v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v3, p1

    const/high16 v4, 0x44870000    # 1080.0f

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setDrawableAlpha(I)V

    :cond_2
    return-void
.end method

.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->drawableHotspotChanged(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->drawableStateChanged()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    goto :goto_0
.end method

.method public getBackgroundColorWithoutTint()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor(ZZ)I

    move-result v0

    return v0
.end method

.method protected abstract getContentView()Landroid/view/View;
.end method

.method public getDimmed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    return v0
.end method

.method protected getRippleColor()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    return v0
.end method

.method protected handleSlideBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isActivated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    return v0
.end method

.method public isBelowSpeedBump()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    return v0
.end method

.method public isDimmable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isInteractive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowingLayoutCustomNotification()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_ActivatableNotificationView_9127(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeActive()V

    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->performClick()Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_ActivatableNotificationView_9731()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->NOTI_SUPPORT_DOUBLETAP_ON_LOCKSCREEN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onDoubleTapped(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->performClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public makeInactive(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateNotificationContentColor(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method protected onAppearAnimationFinished(Z)V
    .locals 0

    return-void
.end method

.method protected onBelowSpeedBumpChanged()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onFinishInflate()V

    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v0, 0x7f0a01ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowHidden:Z

    const v0, 0x7f0a006e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setOpacityTarget(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setOpacityTarget(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f080488

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f080489

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mContext:Landroid/content/Context;

    const v1, 0x7f060128

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedAlpha:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotX(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mWasActivatedOnDown:Z

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->handleTouchEventDimmed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performAddAnimation(JJ)V
    .locals 9

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mWasActivatedOnDown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->performClick()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 9

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p3

    move-wide v6, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public resetActiveTime()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected resetBackgroundAlpha()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundAlpha(F)V

    return-void
.end method

.method protected resetDimmedBGAlpha()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldUpdateNotificationContentColor()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getLockNoticardOpacity()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentWhiteKeyguard:Z

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/NotificationColorUtil;->getOpacityOnKeyguard(FIZ)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setDrawableAlpha(I)V

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setActualHeight(IZ)V

    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setBelowSpeedBump(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onBelowSpeedBumpChanged()V

    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipBottomAmount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipBottomAmount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipBottomAmount(I)V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipTopAmount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setDark(ZZJ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint(Z)V

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeInFromDark(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isDimmable()Z

    move-result v0

    and-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->resetBackgroundAlpha()V

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeDimmedBackground()V

    :goto_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateNotificationContentColor(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowHidden:Z

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowHidden:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowHidden:Z

    if-eqz v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getTranslationZ()F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v3

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->setFakeShadowTranslationZ(FFII)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNormalBackgroundVisibilityAmount(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    return-void
.end method

.method public setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    return-void
.end method

.method public setOverrideTintColor(IF)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideTint:I

    iput p2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOverrideAmount:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isDimmable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNeedsDimming:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedAlpha:I

    int-to-float v3, v3

    invoke-static {v2, v3, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setDrawableAlpha(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setDrawableAlpha(I)V

    goto :goto_0
.end method

.method public setShadowAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    :cond_0
    return-void
.end method

.method public setTintColor(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTintColor(IZ)V

    return-void
.end method

.method public setTintColor(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint(Z)V

    :cond_0
    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    return v0
.end method

.method public shouldUpdateNotificationContentColor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateBackground()V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelFadeAnimations()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    move v1, v4

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setNormalBackgroundVisibilityAmount(F)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isGroupExpansionChanging()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isChildInGroup()Z

    move-result v0

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz v0, :cond_5

    move v3, v2

    :goto_4
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-nez v5, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    move v3, v1

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected updateBackgroundAlpha(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_1

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    return-void

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public updateBackgroundForWhiteLockScreen(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentWhiteKeyguard:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentWhiteKeyguard:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setWhiteWallpaper(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setOpacityTarget(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isShowingLayoutCustomNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setIsCustomNotification(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setWhiteWallpaper(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setOpacityTarget(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isShowingLayoutCustomNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setIsCustomNotification(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    :cond_0
    return-void
.end method

.method protected updateBackgroundTint()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint(Z)V

    return-void
.end method

.method public updateNotificationBGAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setOpacityTarget(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setOpacityTarget(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isShowingLayoutCustomNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setIsCustomNotification(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isShowingLayoutCustomNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setIsCustomNotification(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setBackgroundAlpha()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setBackgroundAlpha()V

    return-void
.end method

.method public updateNotificationContentColor(Z)V
    .locals 0

    return-void
.end method

.method protected updateOutlineAlpha()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnKeyguard:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    xor-int/lit8 v1, v2, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineAlpha(F)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const v0, 0x3f333333    # 0.7f

    const v2, 0x3e99999a    # 0.3f

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    mul-float/2addr v2, v3

    const v3, 0x3f333333    # 0.7f

    add-float v0, v3, v2

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v0, v2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineAlpha(F)V

    return-void
.end method
