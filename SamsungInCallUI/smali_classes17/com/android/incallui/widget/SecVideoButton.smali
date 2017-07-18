.class public Lcom/android/incallui/widget/SecVideoButton;
.super Landroid/widget/Button;
.source "SecVideoButton.java"


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

    sput-boolean v0, Lcom/android/incallui/widget/SecVideoButton;->SHOW_BTN_BG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVideoButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVideoButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVideoButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    const v6, 0x7f0a0397

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectHeight:I

    :goto_0
    iput v5, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    :goto_1
    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101039c

    aput v3, v0, v5

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/incallui/widget/SecVideoButton;->updateButtonBackground(Lcom/android/incallui/Call;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectHeight:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0166

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectHeight:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    goto :goto_1
.end method

.method private updateButtonBackground(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0202dc

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVideoButton;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0202de

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVideoButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/SecVideoButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVideoButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVideoButton;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    if-nez v3, :cond_3

    move v3, v2

    :goto_0
    iput v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    iget v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    if-le v3, v2, :cond_0

    iput v2, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVideoButton;->getMeasuredHeight()I

    move-result v1

    iget v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    if-nez v3, :cond_4

    move v3, v1

    :goto_1
    iput v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    iget v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    if-le v3, v1, :cond_1

    iput v1, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    :cond_1
    iget v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    iget v4, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    iget v5, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectWidth:I

    iget v6, p0, Lcom/android/incallui/widget/SecVideoButton;->mRippleEffectHeight:I

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    iget-object v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/SecVideoButton;->updateButtonBackground(Lcom/android/incallui/Call;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    iget v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    goto :goto_1
.end method

.method public setMeasuredSizeForRipple(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredWidth:I

    iput p2, p0, Lcom/android/incallui/widget/SecVideoButton;->mMeasuredHeight:I

    return-void
.end method
