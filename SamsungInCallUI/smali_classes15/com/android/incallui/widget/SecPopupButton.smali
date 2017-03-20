.class public Lcom/android/incallui/widget/SecPopupButton;
.super Landroid/widget/Button;
.source "SecPopupButton.java"


# static fields
.field private static final SHOW_BTN_BG:Z


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SHOW_BUTTON_BG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/widget/SecPopupButton;->SHOW_BTN_BG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecPopupButton;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecPopupButton;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecPopupButton;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/SecPopupButton;->semSetHoverPopupType(I)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a052a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/SecPopupButton;->mRippleEffectWidth:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0529

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/SecPopupButton;->mRippleEffectHeight:I

    .line 66
    const/4 v1, 0x1

    new-array v0, v1, [I

    const v1, 0x101039c

    aput v1, v0, v3

    .line 69
    .local v0, "BG_ATTRS":[I
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/widget/SecPopupButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/widget/SecPopupButton;->updateButtonBackground()V

    .line 73
    return-void
.end method

.method private updateButtonBackground()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const v0, 0x7f0202c4

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecPopupButton;->setBackgroundResource(I)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecPopupButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupButton;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredWidth:I

    .line 83
    iget v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredHeight:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupButton;->getMeasuredHeight()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredHeight:I

    .line 84
    iget v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/widget/SecPopupButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/widget/SecPopupButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    .line 85
    invoke-direct {p0}, Lcom/android/incallui/widget/SecPopupButton;->updateButtonBackground()V

    .line 86
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    return-void

    .line 82
    :cond_0
    iget v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredWidth:I

    goto :goto_0

    .line 83
    :cond_1
    iget v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredHeight:I

    goto :goto_1
.end method

.method public setMeasuredSizeForRipple(II)V
    .locals 0
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredWidth:I

    .line 77
    iput p2, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredHeight:I

    .line 78
    return-void
.end method
