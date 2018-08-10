.class public Landroid/widget/TableLayout;
.super Landroid/widget/LinearLayout;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableLayout$LayoutParams;,
        Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;
    }
.end annotation


# instance fields
.field private mCollapsedColumns:Landroid/util/SparseBooleanArray;

.field private mInitialized:Z

.field private mMaxWidths:[I

.field private mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

.field private mShrinkAllColumns:Z

.field private mShrinkableColumns:Landroid/util/SparseBooleanArray;

.field private mStretchAllColumns:Z

.field private mStretchableColumns:Landroid/util/SparseBooleanArray;


# direct methods
.method static synthetic -wrap0(Landroid/widget/TableLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->trackCollapsedColumns(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/16 v7, 0x2a

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v4, Lcom/android/internal/R$styleable;->TableLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_3

    iput-boolean v6, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    :cond_0
    :goto_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_4

    iput-boolean v6, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    :cond_1
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    return-void

    :cond_3
    invoke-static {v3}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    goto :goto_0

    :cond_4
    invoke-static {v2}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    goto :goto_1
.end method

.method private findLargestCells(II)V
    .locals 21

    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, v4, Landroid/widget/TableRow;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v15, v4

    check-cast v15, Landroid/widget/TableRow;

    invoke-virtual {v15}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    const/16 v17, -0x2

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Landroid/widget/TableRow;->getColumnsWidths(II)[I

    move-result-object v16

    move-object/from16 v0, v16

    array-length v13, v0

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v13, :cond_3

    :cond_2
    new-array v0, v13, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TableLayout;->mMaxWidths:[I

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v13}, Ljava/lang/System;->arraycopy([II[III)V

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v11, v0

    sub-int v6, v13, v11

    if-lez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    new-array v0, v13, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v17, v0

    array-length v0, v14

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-static {v14, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    array-length v0, v14

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v11, :cond_0

    aget v17, v12, v9

    aget v18, v16, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    aput v17, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private initTableLayout()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/TableLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/TableLayout;Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;)V

    iput-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    iput-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    return-void
.end method

.method private mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V
    .locals 12

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v5, v6

    if-eqz p2, :cond_1

    move v2, v5

    :goto_0
    sub-int v9, p3, p4

    div-int v3, v9, v2

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_2

    invoke-virtual {p0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v10, v0, Landroid/widget/TableRow;

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_7

    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_3

    if-ge v1, v5, :cond_4

    aget v10, v6, v1

    add-int/2addr v10, v3

    aput v10, v6, v1

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_6

    aget v10, v6, v4

    add-int/2addr v10, v3

    aput v10, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    return-void

    :cond_7
    if-lez v8, :cond_a

    if-ge v8, v2, :cond_a

    mul-int v10, v8, v3

    sub-int v11, v2, v8

    div-int v3, v10, v11

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_a

    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_8

    if-ge v1, v5, :cond_8

    aget v10, v6, v1

    if-le v3, v10, :cond_9

    const/4 v10, 0x0

    aput v10, v6, v1

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    aget v10, v6, v1

    add-int/2addr v10, v3

    aput v10, v6, v1

    goto :goto_6

    :cond_a
    return-void
.end method

.method private static parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 9

    const/4 v6, 0x0

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    const-string/jumbo v7, "\\s*,\\s*"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v0, v6

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v8, 0x1

    invoke-virtual {v3, v2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private requestRowsLayout()V
    .locals 3

    iget-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shrinkAndStretchColumns(I)V
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v4, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget v2, v4, v3

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v4, p0, Landroid/widget/TableLayout;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/TableLayout;->mPaddingRight:I

    sub-int v0, v3, v4

    if-le v1, v0, :cond_4

    iget-boolean v3, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_4

    :cond_2
    iget-object v3, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v4, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    invoke-direct {p0, v3, v4, v0, v1}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-ge v1, v0, :cond_3

    iget-boolean v3, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    :cond_5
    iget-object v3, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v4, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    invoke-direct {p0, v3, v4, v0, v1}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    goto :goto_1
.end method

.method private trackCollapsedColumns(Landroid/view/View;)V
    .locals 7

    instance-of v6, p1, Landroid/widget/TableRow;

    if-eqz v6, :cond_1

    move-object v5, p1

    check-cast v5, Landroid/widget/TableRow;

    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5, v1, v4}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/TableLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TableLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/TableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isColumnCollapsed(I)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isColumnShrinkable(I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isColumnStretchable(I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShrinkAllColumns()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return v0
.end method

.method public isStretchAllColumns()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2

    instance-of v0, p1, Landroid/widget/TableRow;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TableRow;

    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setColumnsWidthConstraints([I)V

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    return-void
.end method

.method measureVertical(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;->findLargestCells(II)V

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->shrinkAndStretchColumns(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TableLayout;->layoutVertical(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/TableLayout;->measureVertical(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 3

    iget-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setColumnCollapsed(IZ)V
    .locals 4

    iget-object v3, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TableRow;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/widget/TableRow;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public setColumnShrinkable(IZ)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public setColumnStretchable(IZ)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->-set0(Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setShrinkAllColumns(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return-void
.end method

.method public setStretchAllColumns(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return-void
.end method
