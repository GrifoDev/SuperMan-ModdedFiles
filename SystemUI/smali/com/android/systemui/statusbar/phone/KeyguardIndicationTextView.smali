.class public Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "KeyguardIndicationTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;


# static fields
.field private static final mSineInOut33:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAppearAnimator:Landroid/animation/ObjectAnimator;

.field private mIsPlayingHideIconAnimaion:Z

.field private mPlayingShortcutAffordance:Z

.field private mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e2e147b    # 0.17f

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mPlayingShortcutAffordance:Z

    const-string/jumbo v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    :cond_0
    const-string/jumbo v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mOriginalFontSizeDp:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mOriginalFontSizeDp:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mOriginalFontSizeDp:F

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v2

    mul-float/2addr v1, v2

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextSize(IF)V

    return-void
.end method

.method public resetHideAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mIsPlayingHideIconAnimaion:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mPlayingShortcutAffordance:Z

    if-nez v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setAlphaByAffordance(F)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    return-void
.end method

.method public setPlayingAlphaAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mPlayingShortcutAffordance:Z

    return-void
.end method

.method public startHideHelpTextAnimation()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mIsPlayingHideIconAnimaion:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->cancelAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    return-void
.end method

.method public startShortcutHintAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    return-void
.end method

.method public startShowHelpTextAnimation()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mIsPlayingHideIconAnimaion:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0xc8

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x96

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    return-void
.end method

.method public startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 7

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->cancelAnimator()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setAlphaByAffordance(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x96

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public switchIndication(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public switchIndication(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public switchIndication(Ljava/lang/CharSequence;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->cancelAnimation()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mIsPlayingHideIconAnimaion:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
