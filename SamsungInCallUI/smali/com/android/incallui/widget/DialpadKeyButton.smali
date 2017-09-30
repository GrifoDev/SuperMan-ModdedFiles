.class public Lcom/android/incallui/widget/DialpadKeyButton;
.super Lcom/android/phone/common/dialpad/DialpadKeyButton;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;
    }
.end annotation


# instance fields
.field private mHoverBounds:Landroid/graphics/Rect;

.field private mOnPressedListener:Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/common/dialpad/DialpadKeyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/DialpadKeyButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/DialpadKeyButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0354

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mRippleEffectHeight:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mRippleEffectWidth:I

    iget v1, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;II)V

    invoke-super {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/incallui/widget/DialpadKeyButton;->getPaddingStart()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/incallui/widget/DialpadKeyButton;->getPaddingEnd()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/incallui/widget/DialpadKeyButton;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/incallui/widget/DialpadKeyButton;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setOnPressedListener(Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mOnPressedListener:Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mOnPressedListener:Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mOnPressedListener:Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;->onPressed(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
