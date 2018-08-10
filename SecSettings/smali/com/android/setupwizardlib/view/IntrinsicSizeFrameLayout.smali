.class public Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "IntrinsicSizeFrameLayout.java"


# instance fields
.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    iput v1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getIntrinsicMeasureSpec(II)I
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    if-gtz p2, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-nez v0, :cond_1

    iget v2, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    :cond_1
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    :cond_2
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwMaxSizeFrameLayout:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwMaxSizeFrameLayout_android_height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwMaxSizeFrameLayout_android_width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    invoke-direct {p0, p1, v0}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->getIntrinsicMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    invoke-direct {p0, p2, v1}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->getIntrinsicMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
