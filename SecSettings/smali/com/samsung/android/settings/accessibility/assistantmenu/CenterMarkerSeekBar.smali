.class public Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;
.super Landroid/widget/SeekBar;
.source "CenterMarkerSeekBar.java"


# instance fields
.field private mMarkerPaint:Landroid/graphics/Paint;

.field private mRectMarker:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    const v3, 0x7f070975

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f070974

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mRectMarker:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    const v4, 0x7f060203

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mRectMarker:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070973

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    const/high16 v6, 0x40e00000    # 7.0f

    div-float v1, v5, v6

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x7

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mRectMarker:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mRectMarker:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setEnableColor(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060203

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060204

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
