.class public Lcom/android/keyguard/KeyguardTextView;
.super Landroid/widget/TextView;
.source "KeyguardTextView.java"


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mFontScale:F

.field private mOriginalFontSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    sput-object p1, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    sput-object p1, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    sput-object p1, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    sput-object p1, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getFontScaleInKeyguardBoundary(F)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->isSViewCovered()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    const v0, 0x3f99999a    # 1.2f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public getKeyguardFontScale()F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary(F)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mOriginalFontSize:F

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary(F)V

    return-void
.end method

.method public updateFontSizeInKeyguardBoundary()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary(F)V

    return-void
.end method

.method public updateFontSizeInKeyguardBoundary(F)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    iget v1, p0, Lcom/android/keyguard/KeyguardTextView;->mOriginalFontSize:F

    iget v2, p0, Lcom/android/keyguard/KeyguardTextView;->mFontScale:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/KeyguardTextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
