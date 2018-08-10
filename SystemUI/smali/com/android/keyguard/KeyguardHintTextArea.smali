.class public Lcom/android/keyguard/KeyguardHintTextArea;
.super Landroid/widget/RelativeLayout;
.source "KeyguardHintTextArea.java"


# instance fields
.field private mHintText:Lcom/android/systemui/widget/SystemUITextView;

.field private mLineHintext:Landroid/text/SpannableString;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPasswordHintText:Ljava/lang/String;

.field private mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

.field private mSineOut33:Landroid/view/animation/PathInterpolator;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardHintTextArea;)Lcom/android/systemui/widget/SystemUITextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardHintTextArea;)Lcom/android/systemui/widget/SystemUITextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardHintTextArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v3, 0x3e2e147b    # 0.17f

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method protected getPasswordHintText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardHintTextArea_2581(Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0xe9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUITextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardHintTextArea$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardHintTextArea$1;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUITextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardHintTextArea_3150(Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0xe9

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUITextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardHintTextArea$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardHintTextArea$2;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUITextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const-string/jumbo v0, "102"

    const-string/jumbo v1, "1034"

    invoke-static {v0, v1}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f0a0214

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a04c4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mContext:Landroid/content/Context;

    const v2, 0x7f120604

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mLineHintext:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mLineHintext:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mLineHintext:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mLineHintext:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f120605

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v1, Lcom/android/keyguard/-$Lambda$Wo8bkoCEEBdz4_LhsIBmaEtXbbw;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$Lambda$Wo8bkoCEEBdz4_LhsIBmaEtXbbw;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v1, Lcom/android/keyguard/-$Lambda$Wo8bkoCEEBdz4_LhsIBmaEtXbbw$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$Lambda$Wo8bkoCEEBdz4_LhsIBmaEtXbbw$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateHintButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method

.method protected updateHintTextSize()V
    .locals 5

    const v4, 0x7f070262

    const v2, 0x7f070239

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHintTextArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/widget/SystemUITextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHintTextArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/widget/SystemUITextView;->setTextSize(IF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHintTextArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2}, Lcom/android/systemui/widget/SystemUITextView;->getKeyguardFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/widget/SystemUITextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHintTextArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2}, Lcom/android/systemui/widget/SystemUITextView;->getKeyguardFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/widget/SystemUITextView;->setTextSize(IF)V

    goto :goto_0
.end method
