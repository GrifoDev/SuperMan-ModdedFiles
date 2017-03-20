.class public Lcom/android/incallui/widget/SecVoiceConferenceButton;
.super Landroid/widget/Button;
.source "SecVoiceConferenceButton.java"


# static fields
.field private static final SHOW_BTN_BG:Z


# instance fields
.field private mAlpha:F

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SHOW_BUTTON_BG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->SHOW_BTN_BG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mAlpha:F

    .line 53
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mAlpha:F

    .line 58
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mAlpha:F

    .line 63
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0a03f1

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->semSetHoverPopupType(I)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mRippleEffectWidth:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mRippleEffectHeight:I

    .line 72
    iput v1, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mMeasuredWidth:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mMeasuredHeight:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 76
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->updateButtonBackground()V

    .line 80
    :cond_0
    return-void
.end method

.method private updateButtonBackground()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const v0, 0x7f0202d4

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->setBackgroundResource(I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mMeasuredWidth:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mMeasuredWidth:I

    .line 90
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mMeasuredHeight:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->getMeasuredHeight()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mMeasuredHeight:I

    .line 91
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    .line 93
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->updateButtonBackground()V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    return-void

    .line 89
    :cond_1
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mMeasuredWidth:I

    goto :goto_0

    .line 90
    :cond_2
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mMeasuredHeight:I

    goto :goto_1
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 110
    iget v1, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 111
    iput p1, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mAlpha:F

    .line 112
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceConferenceButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public setMeasuredSizeForRipple(II)V
    .locals 0
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mMeasuredWidth:I

    .line 84
    iput p2, p0, Lcom/android/incallui/widget/SecVoiceConferenceButton;->mMeasuredHeight:I

    .line 85
    return-void
.end method
