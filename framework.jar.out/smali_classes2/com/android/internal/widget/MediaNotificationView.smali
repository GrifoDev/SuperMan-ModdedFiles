.class public Lcom/android/internal/widget/MediaNotificationView;
.super Landroid/widget/FrameLayout;
.source "MediaNotificationView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mActions:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private final mImageMinTopMargin:I

.field private mMainColumn:Landroid/view/View;

.field private final mMaxImageSize:I

.field private final mNotificationContentImageMarginEnd:I

.field private final mNotificationContentMarginEnd:I

.field private mRightIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mMaxImageSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MediaNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mImageMinTopMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    return-void
.end method

.method private resetHeaderIndention()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    iget-object v6, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x1020044

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    const v0, 0x1020438

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    const v0, 0x102042d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    const v0, 0x1020436

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 22

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    const/4 v9, 0x1

    :goto_0
    if-eqz v9, :cond_0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/MediaNotificationView;->measureChild(Landroid/view/View;II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v20, v20, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v13}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v12

    sub-int v20, v20, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mMaxImageSize:I

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMinimumWidth()I

    move-result v3

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v0, v20

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v3, v20, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    add-int v15, v3, v4

    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-eq v15, v3, :cond_0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MediaNotificationView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v21, v3, v4

    const/16 v19, 0x0

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mImageMinTopMargin:I

    move/from16 v0, v21

    if-lt v0, v3, :cond_5

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MediaNotificationView;->resetHeaderIndention()Z

    move-result v19

    :cond_2
    :goto_1
    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/MediaNotificationView;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_3
    return-void

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v4

    add-int v17, v3, v4

    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    move/from16 v0, v17

    if-eq v3, v0, :cond_6

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v19, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    move/from16 v0, v18

    if-eq v3, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    move/from16 v0, v18

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    const/16 v19, 0x1

    goto :goto_1
.end method
