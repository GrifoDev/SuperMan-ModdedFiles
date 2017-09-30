.class public Lcom/android/phone/common/widget/ResizingTextEditText;
.super Landroid/widget/EditText;


# instance fields
.field private final mMinTextSize:I

.field private final mOriginalTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/phone/common/widget/ResizingTextEditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mOriginalTextSize:I

    sget-object v0, Lcom/android/incallui/R$styleable;->ResizingText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mOriginalTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mMinTextSize:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    iget v0, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mOriginalTextSize:I

    iget v1, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mMinTextSize:I

    invoke-static {p0, v0, v1}, Lcom/android/phone/common/util/ViewUtil;->resizeText(Landroid/widget/TextView;II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget v0, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mOriginalTextSize:I

    iget v1, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mMinTextSize:I

    invoke-static {p0, v0, v1}, Lcom/android/phone/common/util/ViewUtil;->resizeText(Landroid/widget/TextView;II)V

    return-void
.end method
