.class public Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;
.super Landroid/view/View;
.source "DragGuideLineView.java"


# instance fields
.field private mCellCount:I

.field private mCellHeight:I

.field private mCellLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

.field private mCellWidth:I

.field private mCrossBitmap:Landroid/graphics/Bitmap;

.field private mCrossGuideStartPosX:I

.field private mCrossGuideStartPosY:I

.field private mCurrentCursorPos:I

.field private mCursorBitmap:Landroid/graphics/Bitmap;

.field private mCursorGuideStartPosX:I

.field private mCursorGuideStartPosY:I

.field private mDrawCrossGuide:Z

.field private mDrawCursorGuide:Z

.field private mGapX:I

.field private mGapY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCrossGuideStartPosX:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCrossGuideStartPosY:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCursorGuideStartPosX:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCursorGuideStartPosY:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08079d

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCrossBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08079e

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCursorBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private drawCrossGuide(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "[DS]DragGuideLineView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "drawGuideCursor mCellCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCellCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCellCount:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCrossGuideStartPosX:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCellLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->getMeasuredWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCrossBitmap:Landroid/graphics/Bitmap;

    sub-int v5, v2, v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCrossBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCrossGuideStartPosY:I

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCellWidth:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mGapX:I

    add-int v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCrossBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCrossGuideStartPosY:I

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawGuideCursor(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "[DS]DragGuideLineView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "drawGuideCursor mCurrentCursorPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCurrentCursorPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCursorGuideStartPosX:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCellWidth:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mGapX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCurrentCursorPos:I

    mul-int/2addr v3, v4

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCellLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCursorBitmap:Landroid/graphics/Bitmap;

    sub-int v3, v0, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCursorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCursorGuideStartPosY:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCursorBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCursorGuideStartPosY:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mDrawCrossGuide:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->drawCrossGuide(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mDrawCursorGuide:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->drawGuideCursor(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setCellDimensions(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCellWidth:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCellHeight:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mGapX:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mGapY:I

    return-void
.end method

.method public setCellLayout(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCellLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    return-void
.end method

.method public setChildCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCellCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mDrawCrossGuide:Z

    return-void
.end method

.method public udpateGuideCursor(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mCurrentCursorPos:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mDrawCursorGuide:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DragGuideLineView;->mDrawCursorGuide:Z

    goto :goto_0
.end method
