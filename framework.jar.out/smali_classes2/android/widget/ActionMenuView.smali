.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"

.field private static mIsThemeDeviceDefaultFamily:Z


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mOriginalEndPadding:I

.field private mOriginalOverflowEndPadding:I

.field private mOriginalOverflowStartPadding:I

.field private mOriginalStartPadding:I

.field private mOverflowBadgeText:Ljava/lang/String;

.field private mOverflowButtonMinWidth:I

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method static synthetic -get0(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/16 v8, 0x45

    const/16 v7, 0x44

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v4}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42600000    # 56.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    iput v4, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1110082

    invoke-virtual {v5, v6, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v2, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_0

    :goto_0
    sput-boolean v3, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v5, 0x10102d8

    invoke-virtual {p1, p2, v3, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOriginalStartPadding:I

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v5, 0x10102f6

    invoke-virtual {p1, p2, v3, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    const/16 v3, 0x24

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/ActionMenuView;->mOverflowBadgeText:Ljava/lang/String;

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private getNumericValue(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    return v2
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v7, p0

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v6

    :goto_1
    const/4 v0, 0x0

    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int v0, v9, p1

    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    :cond_2
    iget-boolean v11, v8, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    move v5, v6

    :goto_2
    iput-boolean v5, v8, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    iput v0, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v10, v0, p1

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    return v0

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 42

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    const/16 v38, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v22

    sub-int v37, v37, v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    if-nez v4, :cond_0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    move v8, v4

    const/16 v25, 0x0

    const/16 v24, 0x0

    const/4 v14, 0x0

    const/16 v34, 0x0

    const/16 v16, 0x0

    const-wide/16 v32, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v12

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    if-ge v0, v12, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    add-int/lit8 v34, v34, 0x1

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v39

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    if-eqz v21, :cond_7

    move-object/from16 v38, v11

    check-cast v38, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    :goto_2
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    sget-boolean v38, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v38, :cond_4

    move/from16 v0, v21

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    :cond_4
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_8

    const/4 v7, 0x1

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    add-int/lit8 v14, v14, 0x1

    :cond_5
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_6

    const/16 v16, 0x1

    :cond_6
    sub-int/2addr v8, v9

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_1

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_1

    :cond_7
    const/16 v38, 0x0

    goto :goto_2

    :cond_8
    move v7, v8

    goto :goto_3

    :cond_9
    if-eqz v16, :cond_b

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    :goto_4
    const/16 v30, 0x0

    :goto_5
    if-lez v14, :cond_f

    if-lez v8, :cond_f

    const v26, 0x7fffffff

    const-wide/16 v28, 0x0

    const/16 v27, 0x0

    const/16 v20, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v0, v12, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_c

    :cond_a
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    goto :goto_4

    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v27, 0x1

    goto :goto_7

    :cond_d
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v28, v28, v38

    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    :cond_e
    or-long v32, v32, v28

    move/from16 v0, v27

    if-le v0, v8, :cond_14

    :cond_f
    if-nez v16, :cond_19

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_19

    const/16 v31, 0x1

    :goto_8
    if-lez v8, :cond_21

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_21

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_10

    if-nez v31, :cond_10

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_21

    :cond_10
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    if-nez v31, :cond_12

    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    :cond_11
    add-int/lit8 v38, v12, -0x1

    const/16 v39, 0x1

    shl-int v38, v39, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_12

    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_12

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    :cond_12
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_1a

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    :goto_9
    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    if-ge v0, v12, :cond_20

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1b

    :cond_13
    :goto_b
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    :cond_14
    add-int/lit8 v26, v26, 0x1

    const/16 v20, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v0, v12, :cond_18

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v28

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_16

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    :cond_15
    :goto_d
    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    :cond_16
    if-eqz v10, :cond_17

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_17

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_17

    sget-boolean v38, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v38, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v39

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_17
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_d

    :cond_18
    const/16 v30, 0x1

    goto/16 :goto_5

    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_8

    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_9

    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    move-object/from16 v0, v23

    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v20, :cond_1c

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    xor-int/lit8 v38, v38, 0x1

    if-eqz v38, :cond_1c

    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_1c
    const/16 v30, 0x1

    goto/16 :goto_b

    :cond_1d
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1e

    move-object/from16 v0, v23

    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    const/16 v30, 0x1

    goto/16 :goto_b

    :cond_1e
    if-eqz v20, :cond_1f

    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_1f
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_13

    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_b

    :cond_20
    const/4 v8, 0x0

    :cond_21
    if-eqz v30, :cond_23

    const/16 v20, 0x0

    :goto_e
    move/from16 v0, v20

    if-ge v0, v12, :cond_23

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_22

    :goto_f
    add-int/lit8 v20, v20, 0x1

    goto :goto_e

    :cond_22
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_f

    :cond_23
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_24

    move/from16 v19, v25

    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    :goto_0
    iget v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$MenuBuilderCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v1

    :cond_1
    new-instance v1, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;)V

    goto :goto_0
.end method

.method public getOverflowBadgeText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mOverflowBadgeText:Ljava/lang/String;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v2

    :cond_1
    if-lez p1, :cond_2

    instance-of v3, v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_2
    return v2
.end method

.method public hideOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const/16 v7, 0x45

    const/16 v6, 0x44

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p1}, Landroid/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, v4}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    const v3, 0x10102d8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mOriginalStartPadding:I

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    const v3, 0x10102f6

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    const/16 v1, 0x24

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    move/from16 v30, v0

    if-nez v30, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v6

    sub-int v30, p5, p3

    div-int/lit8 v15, v30, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    move-result v7

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    sub-int v30, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v31

    sub-int v29, v30, v31

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    move-result v11

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/ActionMenuView$LayoutParams;

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_2

    add-int v18, v18, v7

    :cond_2
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-eqz v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v12, v30, v31

    add-int v20, v12, v18

    :goto_2
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    add-int v5, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    sub-int v29, v29, v18

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v20, v30, v31

    sub-int v12, v20, v18

    goto :goto_2

    :cond_4
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v21, v30, v31

    add-int v17, v17, v21

    sub-int v29, v29, v21

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_5

    add-int v17, v17, v7

    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_6
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_7

    xor-int/lit8 v30, v8, 0x1

    if-eqz v30, :cond_7

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v30, p4, p2

    div-int/lit8 v14, v30, 0x2

    div-int/lit8 v30, v28, 0x2

    sub-int v12, v14, v30

    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    add-int v30, v12, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_7
    if-eqz v8, :cond_9

    const/16 v30, 0x0

    :goto_3
    sub-int v22, v16, v30

    if-lez v22, :cond_a

    div-int v30, v29, v22

    :goto_4
    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    if-eqz v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v25, v30, v31

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_8

    iget-boolean v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_b

    :cond_8
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_9
    const/16 v30, 0x1

    goto :goto_3

    :cond_a
    const/16 v30, 0x0

    goto :goto_4

    :cond_b
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v25, v25, v30

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    sub-int v30, v25, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    sub-int v25, v25, v30

    goto :goto_6

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v24

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v6, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_d

    iget-boolean v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_e

    :cond_d
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_e
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v24, v24, v30

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    add-int v30, v24, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    add-int v24, v24, v30

    goto :goto_8

    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-boolean v5, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v7, v10, :cond_2

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    iget-boolean v7, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eq v5, v7, :cond_0

    iput v9, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget-boolean v7, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v7, :cond_1

    iget v7, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v6, v7, :cond_1

    iput v6, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    iget-object v7, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v2

    iget-boolean v7, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v7, :cond_3

    if-lez v2, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    :goto_1
    return-void

    :cond_2
    move v7, v9

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_a

    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuView$LayoutParams;

    iput v9, v4, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v9, v4, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    instance-of v7, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v7, :cond_8

    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalStartPadding:I

    iget v10, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    invoke-virtual {v0, v7, v9, v10, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    sget-boolean v7, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v7, :cond_4

    add-int/lit8 v7, v2, -0x1

    if-ne v3, v7, :cond_7

    const-string/jumbo v7, "2018A"

    const-string/jumbo v10, "ro.build.scafe.version"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v0

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getLayoutDirection()I

    move-result v7

    if-nez v7, :cond_5

    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    iput v7, v4, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    iput v7, v4, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_6
    move-object v7, v0

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/ActionMenuItemView;->setIsLastItem(Z)V

    move-object v7, v0

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    iget v10, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v7, v10}, Lcom/android/internal/view/menu/ActionMenuItemView;->setMinWidth(I)V

    move-object v7, v0

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v7, v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    iget v10, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v0, v7, v9, v10, v9}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPaddingRelative(IIII)V

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v2, -0x1

    if-ge v3, v7, :cond_4

    move-object v7, v0

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v7

    if-nez v7, :cond_4

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v0, v9}, Lcom/android/internal/view/menu/ActionMenuItemView;->setIsLastItem(Z)V

    goto :goto_3

    :cond_8
    iget-boolean v7, v4, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_4

    instance-of v7, v0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    if-eqz v7, :cond_9

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    iget v10, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v1, v7, v9, v10, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget v7, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v1, v7}, Landroid/view/View;->setMinimumWidth(I)V

    check-cast v1, Landroid/widget/TextView;

    iget v7, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_3

    :cond_9
    iget v7, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    iget v10, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v0, v7, v9, v10, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget v7, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_3

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/16 :goto_1
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method semGetSumOfDigitsInBadges()I
    .locals 4

    iget-object v3, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getBadgeText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/ActionMenuView;->getNumericValue(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    :cond_0
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowBadgeText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOverflowBadgeText:Ljava/lang/String;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
