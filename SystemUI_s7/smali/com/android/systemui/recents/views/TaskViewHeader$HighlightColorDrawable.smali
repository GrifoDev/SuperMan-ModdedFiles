.class Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TaskViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskViewHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightColorDrawable"
.end annotation


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mDimAlpha:F

.field private mHighlightPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewHeader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHighlightHeight:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHighlightHeight:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v4, v4, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorAndDim(IF)V
    .locals 6

    const/4 v5, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mDimAlpha:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mColor:I

    iput p2, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mDimAlpha:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->-get0(Lcom/android/systemui/recents/views/TaskViewHeader;)[F

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->-get0(Lcom/android/systemui/recents/views/TaskViewHeader;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->-get0(Lcom/android/systemui/recents/views/TaskViewHeader;)[F

    move-result-object v1

    aget v1, v1, v5

    sub-float v2, v4, p2

    const v3, 0x3d99999a    # 0.075f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->-get0(Lcom/android/systemui/recents/views/TaskViewHeader;)[F

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
