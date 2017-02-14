.class public Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
.super Lcom/android/keyguard/KeyguardTextView;
.source "KeyguardIndicationTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;


# instance fields
.field private mPlayingShortcutAffordance:Z

.field private mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    return-object v0
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
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mPlayingShortcutAffordance:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mPlayingShortcutAffordance:Z

    if-nez v0, :cond_0

    const v0, 0x3f333333    # 0.7f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardTextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setAlphaByAffordance(F)V
    .locals 1

    const v0, 0x3f333333    # 0.7f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardTextView;->setAlpha(F)V

    return-void
.end method

.method public setPlayingAlphaAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mPlayingShortcutAffordance:Z

    return-void
.end method

.method public startHideHelpTextAnimation()V
    .locals 7

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

    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    return-void
.end method

.method public startShowHelpTextAnimation()V
    .locals 7

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
