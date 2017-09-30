.class public Lcom/android/incallui/widget/SecVideoToggleButton;
.super Landroid/widget/ToggleButton;


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

    sput-boolean v0, Lcom/android/incallui/widget/SecVideoToggleButton;->SHOW_BTN_BG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVideoToggleButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVideoToggleButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVideoToggleButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mRippleEffectHeight:I

    :goto_0
    iput v3, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredHeight:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101039c

    aput v2, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/SecVideoToggleButton;->updateButtonBackground(Lcom/android/incallui/Call;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mRippleEffectHeight:I

    goto :goto_0
.end method

.method private updateButtonBackground(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020379

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVideoToggleButton;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f02037d

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVideoToggleButton;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVideoToggleButton;->getMeasuredWidth()I

    move-result v1

    iget v0, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredWidth:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredWidth:I

    iget v0, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredWidth:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredWidth:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVideoToggleButton;->getMeasuredHeight()I

    move-result v1

    iget v0, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredHeight:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredHeight:I

    iget v0, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredHeight:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredHeight:I

    :cond_1
    iget v0, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredHeight:I

    iget v3, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mRippleEffectWidth:I

    iget v4, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1, v3, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/incallui/widget/SecVideoToggleButton;->updateButtonBackground(Lcom/android/incallui/Call;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    iget v0, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredWidth:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredHeight:I

    goto :goto_1
.end method

.method public setMeasuredSizeForRipple(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredWidth:I

    iput p2, p0, Lcom/android/incallui/widget/SecVideoToggleButton;->mMeasuredHeight:I

    return-void
.end method
