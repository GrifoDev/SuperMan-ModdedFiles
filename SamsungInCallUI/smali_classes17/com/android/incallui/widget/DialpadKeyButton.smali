.class public Lcom/android/incallui/widget/DialpadKeyButton;
.super Lcom/android/phone/common/dialpad/DialpadKeyButton;
.source "DialpadKeyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mHoverBounds:Landroid/graphics/Rect;

.field private mOnPressedListener:Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/phone/common/dialpad/DialpadKeyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/DialpadKeyButton;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/DialpadKeyButton;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mRippleEffectWidth:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mRippleEffectHeight:I

    .line 73
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mRippleEffectWidth:I

    iget v1, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;II)V

    .line 101
    invoke-super {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->onSizeChanged(IIII)V

    .line 87
    iget-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/incallui/widget/DialpadKeyButton;->getPaddingStart()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 88
    iget-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/incallui/widget/DialpadKeyButton;->getPaddingEnd()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 89
    iget-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/incallui/widget/DialpadKeyButton;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 90
    iget-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/incallui/widget/DialpadKeyButton;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 91
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setOnPressedListener(Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;)V
    .locals 0
    .param p1, "onPressedListener"    # Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mOnPressedListener:Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;

    .line 57
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mOnPressedListener:Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/incallui/widget/DialpadKeyButton;->mOnPressedListener:Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/incallui/widget/DialpadKeyButton$OnPressedListener;->onPressed(Landroid/view/View;Z)V

    .line 81
    :cond_0
    return-void
.end method
