.class public Lcom/android/internal/widget/MediaNotificationView;
.super Landroid/widget/FrameLayout;
.source "MediaNotificationView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mActions:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mMainColumn:Landroid/view/View;

.field private final mNotificationContentImageMarginEnd:I

.field private final mNotificationContentMarginEnd:I

.field private mRightIcon:Landroid/widget/ImageView;

.field private final mSmallImageSize:I


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
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mSmallImageSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    return-void
.end method

.method private resetHeaderIndention()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    iget-object v5, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x102043e

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    const v0, 0x1020372

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    const v0, 0x10203bd

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    const v0, 0x10203be

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 15

    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_7

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/MediaNotificationView;->resetHeaderIndention()V

    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    if-eqz v6, :cond_5

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    sub-int/2addr v9, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/MediaNotificationView;->getMeasuredHeight()I

    move-result v0

    if-ge v9, v0, :cond_8

    iget v9, p0, Lcom/android/internal/widget/MediaNotificationView;->mSmallImageSize:I

    :goto_1
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v10, v9, :cond_1

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v10, v9, :cond_2

    :cond_1
    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x1

    :cond_2
    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v10, v9, v3

    iget v11, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    add-int v5, v10, v11

    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v10

    if-eq v5, v10, :cond_3

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x1

    :cond_3
    add-int v2, v9, v3

    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v10

    if-eq v10, v2, :cond_4

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x1

    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingEnd()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    iget-object v11, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    iget v13, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    iget-object v14, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/view/View;->setPaddingRelative(IIII)V

    const/4 v8, 0x1

    :cond_5
    if-eqz v8, :cond_6

    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_6
    return-void

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    move v9, v0

    goto :goto_1
.end method
