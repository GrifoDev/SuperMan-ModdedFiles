.class public Lcom/android/keyguard/KeyguardTextClock;
.super Landroid/widget/TextClock;
.source "KeyguardTextClock.java"


# instance fields
.field private mDensityDpi:I

.field private mFontScale:F

.field private mOriginalFontSize:F

.field private mOriginalFontSizeDp:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextClock;->mFontScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextClock;->mDensityDpi:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextClock;->mOriginalFontSizeDp:F

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextClock;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextClock;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextClock;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextClock;->mOriginalFontSize:F

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardTextClock;->mOriginalFontSize:F

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/KeyguardTextClock;->mOriginalFontSizeDp:F

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateFontSizeInKeyguardBoundary()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/KeyguardTextClock;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/android/keyguard/KeyguardTextClock;->mFontScale:F

    iget v1, p0, Lcom/android/keyguard/KeyguardTextClock;->mOriginalFontSize:F

    iget v2, p0, Lcom/android/keyguard/KeyguardTextClock;->mFontScale:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/KeyguardTextClock;->setTextSize(IF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p0, Lcom/android/keyguard/KeyguardTextClock;->mDensityDpi:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/keyguard/KeyguardTextClock;->mDensityDpi:I

    iget v1, p0, Lcom/android/keyguard/KeyguardTextClock;->mOriginalFontSizeDp:F

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/KeyguardTextClock;->setTextSize(IF)V

    goto :goto_0
.end method
