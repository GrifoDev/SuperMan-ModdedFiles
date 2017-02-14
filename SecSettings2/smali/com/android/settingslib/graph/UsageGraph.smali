.class public Lcom/android/settingslib/graph/UsageGraph;
.super Landroid/view/View;
.source "UsageGraph.java"


# instance fields
.field private mAccentColor:I

.field private final mCornerRadius:I

.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mDividerSize:I

.field private final mDottedPaint:Landroid/graphics/Paint;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private final mLinePaint:Landroid/graphics/Paint;

.field private final mLocalPaths:Landroid/util/SparseIntArray;

.field private mMaxX:F

.field private mMaxY:F

.field private mMiddleDividerLoc:F

.field private mMiddleDividerTint:I

.field private final mPath:Landroid/graphics/Path;

.field private final mPaths:Landroid/util/SparseIntArray;

.field private mProjectUp:Z

.field private mShowProjection:Z

.field private final mTintedDivider:Landroid/graphics/drawable/Drawable;

.field private mTopDividerTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v6, -0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iput v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mMaxX:F

    iput v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mMaxY:F

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mMiddleDividerLoc:F

    iput v6, p0, Lcom/android/settingslib/graph/UsageGraph;->mMiddleDividerTint:I

    iput v6, p0, Lcom/android/settingslib/graph/UsageGraph;->mTopDividerTint:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v4, Lcom/android/settingslib/R$dimen;->usage_graph_line_corner_radius:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mCornerRadius:I

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/CornerPathEffect;

    iget v6, p0, Lcom/android/settingslib/graph/UsageGraph;->mCornerRadius:I

    int-to-float v6, v6

    invoke-direct {v5, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget v5, Lcom/android/settingslib/R$dimen;->usage_graph_line_width:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v4, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v4, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget v4, Lcom/android/settingslib/R$dimen;->usage_graph_dot_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    sget v4, Lcom/android/settingslib/R$dimen;->usage_graph_dot_interval:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v1, v4

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    aput v1, v6, v8

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    sget v5, Lcom/android/settingslib/R$color;->usage_graph_dots:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010214

    invoke-virtual {v4, v5, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/android/settingslib/R$dimen;->usage_graph_divider_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mDividerSize:I

    return-void
.end method

.method private calculateLocalPaths()V
    .locals 12

    const/4 v11, -0x1

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->getWidth()I

    move-result v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    if-ne v8, v11, :cond_2

    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v0, v9, :cond_1

    if-eq v6, v11, :cond_1

    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    const/4 v6, -0x1

    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    int-to-float v9, v7

    invoke-direct {p0, v9}, Lcom/android/settingslib/graph/UsageGraph;->getX(F)I

    move-result v3

    int-to-float v9, v8

    invoke-direct {p0, v9}, Lcom/android/settingslib/graph/UsageGraph;->getY(F)I

    move-result v4

    move v5, v3

    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-lez v9, :cond_3

    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v10, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v10, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-eq v2, v11, :cond_3

    invoke-direct {p0, v1, v3}, Lcom/android/settingslib/graph/UsageGraph;->hasDiff(II)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2, v4}, Lcom/android/settingslib/graph/UsageGraph;->hasDiff(II)Z

    move-result v9

    if-nez v9, :cond_3

    move v6, v4

    goto :goto_1

    :cond_5
    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mDividerSize:I

    add-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawFilledPath(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v1, v4

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v1, v4

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLinePath(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawProjection(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-boolean v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mProjectUp:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method private getColor(IF)I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    or-int/2addr v0, v1

    and-int/2addr v0, p1

    return v0
.end method

.method private getX(F)I
    .locals 2

    iget v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mMaxX:F

    div-float v0, p1, v0

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getY(F)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mMaxY:F

    div-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private hasDiff(II)Z
    .locals 2

    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mCornerRadius:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateGradient()V
    .locals 9

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/settingslib/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mAccentColor:I

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, v2, v3}, Lcom/android/settingslib/graph/UsageGraph;->getColor(IF)I

    move-result v5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct {p0}, Lcom/android/settingslib/graph/UsageGraph;->calculateLocalPaths()V

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->postInvalidate()V

    return-void
.end method

.method clearPaths()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mMiddleDividerLoc:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mTopDividerTint:I

    invoke-direct {p0, v2, p1, v0}, Lcom/android/settingslib/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mDividerSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mMiddleDividerLoc:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mMiddleDividerTint:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settingslib/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mDividerSize:I

    sub-int/2addr v0, v1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settingslib/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    iget-object v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mShowProjection:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/UsageGraph;->drawProjection(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/UsageGraph;->drawFilledPath(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/UsageGraph;->drawLinePath(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/android/settingslib/graph/UsageGraph;->updateGradient()V

    invoke-direct {p0}, Lcom/android/settingslib/graph/UsageGraph;->calculateLocalPaths()V

    return-void
.end method

.method setAccentColor(I)V
    .locals 2

    iput p1, p0, Lcom/android/settingslib/graph/UsageGraph;->mAccentColor:I

    iget-object v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mAccentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/android/settingslib/graph/UsageGraph;->updateGradient()V

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->postInvalidate()V

    return-void
.end method

.method setDividerColors(II)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/graph/UsageGraph;->mMiddleDividerTint:I

    iput p2, p0, Lcom/android/settingslib/graph/UsageGraph;->mTopDividerTint:I

    return-void
.end method

.method setDividerLoc(I)V
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mMaxY:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mMiddleDividerLoc:F

    return-void
.end method

.method setMax(II)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mMaxX:F

    int-to-float v0, p2

    iput v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mMaxY:F

    return-void
.end method

.method setShowProjection(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/graph/UsageGraph;->mShowProjection:Z

    iput-boolean p2, p0, Lcom/android/settingslib/graph/UsageGraph;->mProjectUp:Z

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->postInvalidate()V

    return-void
.end method
