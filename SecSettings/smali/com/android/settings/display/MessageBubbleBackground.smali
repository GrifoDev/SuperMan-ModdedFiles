.class public Lcom/android/settings/display/MessageBubbleBackground;
.super Landroid/widget/LinearLayout;
.source "MessageBubbleBackground.java"


# instance fields
.field private final mSnapWidthPixels:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/MessageBubbleBackground;->mSnapWidthPixels:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/settings/display/MessageBubbleBackground;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/display/MessageBubbleBackground;->getPaddingRight()I

    move-result v4

    add-int v2, v3, v4

    invoke-virtual {p0}, Lcom/android/settings/display/MessageBubbleBackground;->getMeasuredWidth()I

    move-result v3

    sub-int v0, v3, v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v1, v3, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/android/settings/display/MessageBubbleBackground;->mSnapWidthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iget v3, p0, Lcom/android/settings/display/MessageBubbleBackground;->mSnapWidthPixels:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
