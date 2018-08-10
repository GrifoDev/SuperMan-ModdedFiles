.class public Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;
.super Lcom/android/systemui/recents/views/TaskViewThumbnail;
.source "GridTaskViewThumbnail.java"


# instance fields
.field private mRestBackgroundOutline:Landroid/graphics/Path;

.field private mThumbnailOutline:Landroid/graphics/Path;

.field private mUpdateThumbnailOutline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070568

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    return-void
.end method

.method private updateThumbnailOutline()V
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070567

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v21, v2, v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v18

    const/4 v13, 0x0

    const/4 v15, 0x0

    add-int/lit8 v14, v19, 0x0

    add-int/lit8 v12, v18, 0x0

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    int-to-float v5, v14

    int-to-float v6, v12

    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    int-to-float v4, v12

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    int-to-float v6, v12

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_1

    if-lez v19, :cond_1

    if-lez v18, :cond_1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v14, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    move/from16 v16, v14

    const/16 v17, 0x0

    move v10, v12

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v11

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    int-to-float v5, v14

    int-to-float v6, v12

    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v11

    int-to-float v4, v12

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v11

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    :cond_0
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    const/4 v11, 0x0

    move/from16 v16, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v18, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    move v10, v12

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v17

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    move/from16 v0, v17

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    int-to-float v5, v14

    int-to-float v6, v12

    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    int-to-float v4, v12

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    int-to-float v6, v12

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v17

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070567

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v3, v5, v2

    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->updateThumbnailOutline()V

    iput-boolean v7, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUserLocked:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_4

    if-lez v1, :cond_4

    if-lez v0, :cond_4

    if-ge v1, v4, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    if-ge v0, v3, :cond_3

    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    return-void
.end method

.method public updateThumbnailMatrix()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    invoke-super {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    return-void
.end method
