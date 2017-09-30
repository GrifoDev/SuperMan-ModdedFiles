.class public Lcom/android/contacts/common/widget/ProportionalLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/ProportionalLayout$Direction;
    }
.end annotation


# instance fields
.field private a:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/widget/ProportionalLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/widget/ProportionalLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lcom/android/incallui/R$styleable;->ProportionalLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->a(Ljava/lang/String;)Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->a:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->b:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDirection()Lcom/android/contacts/common/widget/ProportionalLayout$Direction;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->a:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->b:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/ProportionalLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ProportionalLayout requires exactly one child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/widget/ProportionalLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/ProportionalLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ProportionalLayout requires exactly one child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/widget/ProportionalLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/contacts/common/widget/ProportionalLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v3, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->a:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    sget-object v4, Lcom/android/contacts/common/widget/ProportionalLayout$Direction;->b:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    if-ne v3, v4, :cond_1

    int-to-float v1, v0

    iget v3, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->b:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/contacts/common/widget/ProportionalLayout;->measureChild(Landroid/view/View;II)V

    invoke-static {v1, p1}, Lcom/android/contacts/common/widget/ProportionalLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/android/contacts/common/widget/ProportionalLayout;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/widget/ProportionalLayout;->setMeasuredDimension(II)V

    return-void

    :cond_1
    int-to-float v0, v1

    iget v3, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->b:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method public setDirection(Lcom/android/contacts/common/widget/ProportionalLayout$Direction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->a:Lcom/android/contacts/common/widget/ProportionalLayout$Direction;

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/widget/ProportionalLayout;->b:F

    return-void
.end method
