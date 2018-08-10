.class Landroid/media/Cea708CCWidget$ScaledLayout;
.super Landroid/view/ViewGroup;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaledLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCWidget$ScaledLayout$1;,
        Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScaledLayout"

.field private static final mRectTopLeftSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRectArray:[Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$1;

    invoke-direct {v0}, Landroid/media/Cea708CCWidget$ScaledLayout$1;-><init>()V

    sput-object v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p0, v4}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    array-length v8, v8

    if-lt v4, v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v8, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int v1, v5, v8

    iget-object v8, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int v2, v6, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    int-to-float v8, v1

    int-to-float v9, v2

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-virtual {p0, v6}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int v2, v7, v9

    iget-object v9, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int v4, v8, v9

    iget-object v9, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v1, v7, v9

    iget-object v9, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 29

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v23

    sub-int v23, v22, v23

    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingRight()I

    move-result v24

    sub-int v21, v23, v24

    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v23

    sub-int v23, v9, v23

    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingBottom()I

    move-result v24

    sub-int v8, v23, v24

    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v7

    new-array v0, v7, [Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    instance-of v0, v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    move/from16 v23, v0

    if-nez v23, :cond_0

    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v24, "A child of ScaledLayout cannot have the UNSPECIFIED scale factors"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_0
    move-object/from16 v23, v13

    check-cast v23, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    move/from16 v17, v0

    move-object/from16 v23, v13

    check-cast v23, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    move-object/from16 v0, v23

    iget v15, v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    move-object/from16 v23, v13

    check-cast v23, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    move/from16 v16, v0

    check-cast v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v14, v13, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    const/16 v23, 0x0

    cmpg-float v23, v17, v23

    if-ltz v23, :cond_1

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v23, v17, v23

    if-lez v23, :cond_2

    :cond_1
    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v24, "A child of ScaledLayout should have a range of scaleStartRow between 0 and 1"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_2
    cmpg-float v23, v15, v17

    if-ltz v23, :cond_3

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v23, v17, v23

    if-lez v23, :cond_4

    :cond_3
    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v24, "A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_4
    const/16 v23, 0x0

    cmpg-float v23, v14, v23

    if-ltz v23, :cond_5

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v23, v14, v23

    if-lez v23, :cond_6

    :cond_5
    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v24, "A child of ScaledLayout should have a range of scaleStartCol between 0 and 1"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_6
    cmpg-float v23, v14, v16

    if-ltz v23, :cond_7

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v23, v14, v23

    if-lez v23, :cond_8

    :cond_7
    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v24, "A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    new-instance v24, Landroid/graphics/Rect;

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v16

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    int-to-float v0, v8

    move/from16 v26, v0

    mul-float v26, v26, v17

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v14

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    int-to-float v0, v8

    move/from16 v28, v0

    mul-float v28, v28, v15

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    invoke-direct/range {v24 .. v28}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v24, v23, v10

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v14, v16

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    sub-int v12, v23, v24

    add-int/lit8 v23, v12, 0x1

    div-int/lit8 v12, v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v24, v24, v12

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v24, v24, v12

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    if-gez v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    aget-object v25, v25, v10

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v8, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    aget-object v25, v25, v10

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v25, v25, v8

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    move-object/from16 v0, v23

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    :cond_a
    int-to-float v0, v8

    move/from16 v23, v0

    sub-float v24, v15, v17

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_b
    const/16 v19, 0x0

    new-array v0, v7, [I

    move-object/from16 v20, v0

    new-array v0, v7, [Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    if-nez v23, :cond_c

    aput v19, v20, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    aput-object v23, v18, v19

    add-int/lit8 v19, v19, 0x1

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_d
    sget-object v23, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v19

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v10, 0x0

    :goto_2
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v23

    if-ge v10, v0, :cond_10

    add-int/lit8 v11, v10, 0x1

    :goto_3
    move/from16 v0, v19

    if-ge v11, v0, :cond_f

    aget-object v23, v18, v10

    aget-object v24, v18, v11

    invoke-static/range {v23 .. v24}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v23

    if-eqz v23, :cond_e

    aget v23, v20, v10

    aput v23, v20, v11

    aget-object v23, v18, v11

    aget-object v24, v18, v11

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    aget-object v25, v18, v10

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    aget-object v26, v18, v11

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    aget-object v27, v18, v10

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    aget-object v28, v18, v11

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v28

    add-int v27, v27, v28

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/Rect;->set(IIII)V

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_10
    add-int/lit8 v10, v19, -0x1

    :goto_4
    if-ltz v10, :cond_13

    aget-object v23, v18, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v8, :cond_12

    aget-object v23, v18, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v12, v23, v8

    const/4 v11, 0x0

    :goto_5
    if-gt v11, v10, :cond_12

    aget v23, v20, v10

    aget v24, v20, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    aget-object v23, v18, v11

    aget-object v24, v18, v11

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    aget-object v25, v18, v11

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v25, v25, v12

    aget-object v26, v18, v11

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    aget-object v27, v18, v11

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v27, v27, v12

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/Rect;->set(IIII)V

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_12
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/media/Cea708CCWidget$ScaledLayout;->setMeasuredDimension(II)V

    return-void
.end method
