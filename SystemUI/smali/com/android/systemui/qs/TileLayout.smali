.class public Lcom/android/systemui/qs/TileLayout;
.super Landroid/view/ViewGroup;
.source "TileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# instance fields
.field protected mCellHeight:I

.field protected mCellHorizontalMargin:I

.field protected mCellMargin:I

.field private mCellMarginBottom:I

.field private mCellMarginTop:I

.field protected mCellVerticalMargin:I

.field protected mCellWidth:I

.field protected mColumns:I

.field protected mListening:Z

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mSidePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->setFocusability()V

    return-void
.end method

.method private static exactly(I)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getColumnStart(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellHorizontalMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getRowTop(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellVerticalMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getTop()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v0, v9, :cond_0

    add-int/lit8 v6, v6, 0x1

    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    sub-int/2addr v0, v9

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/TileLayout;->getColumnStart(I)I

    move-result v3

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/TileLayout;->getRowTop(I)I

    move-result v7

    if-eqz v2, :cond_2

    sub-int v5, v8, v3

    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    sub-int v3, v5, v9

    :goto_2
    iget-object v9, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v10, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v10}, Lcom/android/systemui/plugins/qs/QSTileView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v9, v3, v7, v5, v10}, Lcom/android/systemui/plugins/qs/QSTileView;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    add-int v5, v3, v9

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    iget-object v7, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    div-int v5, v7, v8

    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/lit8 v8, v8, -0x1

    div-int/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/qs/TileLayout;->mCellHorizontalMargin:I

    move-object v2, p0

    iget-object v7, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v7, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v7}, Lcom/android/systemui/plugins/qs/QSTileView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    iget-object v7, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-static {v8}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    invoke-static {v9}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/plugins/qs/QSTileView;->measure(II)V

    iget-object v7, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v7, v2}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mCellVerticalMargin:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v5

    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellVerticalMargin:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginBottom:I

    add-int v0, v7, v8

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0, v6, v0}, Lcom/android/systemui/qs/TileLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllViews()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method setFocusability()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->setFocusable(Z)V

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->setDescendantFocusability(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->setFocusable(Z)V

    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->setDescendantFocusability(I)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->setFocusability()V

    return-void
.end method

.method public updateResources()Z
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "qs_tile_column"

    iget-object v4, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0060

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070520

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    const v2, 0x7f070523

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMargin:I

    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f070527

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f070525

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginBottom:I

    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f070534

    :goto_3
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellVerticalMargin:I

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-eq v2, v0, :cond_3

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->requestLayout()V

    const/4 v2, 0x1

    return v2

    :pswitch_1
    const v2, 0x7f070535

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    const v2, 0x7f07052c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    goto :goto_0

    :pswitch_2
    const v2, 0x7f070536

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    const v2, 0x7f07052d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    goto/16 :goto_0

    :pswitch_3
    const v2, 0x7f070537

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    const v2, 0x7f07052e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    goto/16 :goto_0

    :pswitch_4
    const v2, 0x7f070538

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    const v2, 0x7f07052f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    goto/16 :goto_0

    :pswitch_5
    const v2, 0x7f070539

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    const v2, 0x7f070530

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    goto/16 :goto_0

    :cond_0
    const v2, 0x7f070526

    goto/16 :goto_1

    :cond_1
    const v2, 0x7f070524

    goto/16 :goto_2

    :cond_2
    const v2, 0x7f070533

    goto/16 :goto_3

    :cond_3
    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
