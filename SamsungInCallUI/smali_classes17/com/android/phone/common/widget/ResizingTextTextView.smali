.class public Lcom/android/phone/common/widget/ResizingTextTextView;
.super Landroid/widget/TextView;
.source "ResizingTextTextView.java"


# instance fields
.field private final mMinTextSize:I

.field private final mOriginalTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/phone/common/widget/ResizingTextTextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mOriginalTextSize:I

    .line 38
    sget-object v1, Lcom/android/incallui/R$styleable;->ResizingText:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mOriginalTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mMinTextSize:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 53
    iget v0, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mOriginalTextSize:I

    iget v1, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mMinTextSize:I

    invoke-static {p0, v0, v1}, Lcom/android/phone/common/util/ViewUtil;->resizeText(Landroid/widget/TextView;II)V

    .line 54
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 47
    iget v0, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mOriginalTextSize:I

    iget v1, p0, Lcom/android/phone/common/widget/ResizingTextTextView;->mMinTextSize:I

    invoke-static {p0, v0, v1}, Lcom/android/phone/common/util/ViewUtil;->resizeText(Landroid/widget/TextView;II)V

    .line 48
    return-void
.end method
