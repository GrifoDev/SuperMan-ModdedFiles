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

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecPopupButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecPopupButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecPopupButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/SecPopupButton;->semSetHoverPopupType(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0531

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/SecPopupButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0530

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/SecPopupButton;->mRippleEffectHeight:I

    const/4 v1, 0x1

    new-array v0, v1, [I

    const v1, 0x101039c

    aput v1, v0, v3

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/widget/SecPopupButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/widget/SecPopupButton;->updateButtonBackground()V

    return-void
.end method

.method private updateButtonBackground()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0202cc

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecPopupButton;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecPopupButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupButton;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredWidth:I

    iget v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredHeight:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupButton;->getMeasuredHeight()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredHeight:I

    iget v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/widget/SecPopupButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/widget/SecPopupButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    invoke-direct {p0}, Lcom/android/incallui/widget/SecPopupButton;->updateButtonBackground()V

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredHeight:I

    goto :goto_1
.end method

.method public setMeasuredSizeForRipple(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredWidth:I

    iput p2, p0, Lcom/android/incallui/widget/SecPopupButton;->mMeasuredHeight:I

    return-void
.end method
