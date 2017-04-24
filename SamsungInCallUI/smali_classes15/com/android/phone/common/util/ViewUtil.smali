.class public Lcom/android/phone/common/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static final OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/common/util/ViewUtil$1;

    invoke-direct {v0}, Lcom/android/phone/common/util/ViewUtil$1;-><init>()V

    sput-object v0, Lcom/android/phone/common/util/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBottomPaddingToListViewForFab(Landroid/widget/ListView;Landroid/content/res/Resources;)V
    .locals 5

    const v1, 0x7f0a0447

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    return-void
.end method

.method public static getConstantPreLayoutWidth(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expecting view\'s width to be a constant rather than a result of the layout pass"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v1
.end method

.method public static isViewLayoutRtl(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resizeText(Landroid/widget/TextView;II)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    int-to-float v3, p1

    invoke-virtual {p0, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    int-to-float v3, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    div-float v1, v3, v4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    int-to-float v3, p2

    int-to-float v4, p1

    mul-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public static setupFloatingActionButton(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 1

    sget-object v0, Lcom/android/phone/common/util/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const v0, 0x7f0a044b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method
