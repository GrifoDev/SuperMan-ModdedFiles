.class public final Lcom/android/systemui/recents/misc/HelpHubImageSpan;
.super Landroid/text/style/ImageSpan;
.source "HelpHubImageSpan.java"


# instance fields
.field private finalScale:F

.field public fontScale:F

.field public imageSideMargin:F

.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private spanWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput v0, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->fontScale:F

    iput v0, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->imageSideMargin:F

    iput v0, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->spanWidth:F

    return-void
.end method

.method private calculateFinalScale(FLandroid/graphics/drawable/Drawable;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 4

    iget v2, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-lt v2, v3, :cond_0

    iget v2, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-le v2, v3, :cond_2

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->fontScale:F

    mul-float v1, v2, v3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    div-float v0, p1, v1

    :cond_1
    iget v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->fontScale:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->fontScale:F

    iput v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    goto :goto_0
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    move/from16 v0, p7

    int-to-float v9, v0

    iget v10, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v10, v10

    add-float v6, v9, v10

    iget v9, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v9, v9

    iget v10, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v10, v10

    sub-float v5, v9, v10

    invoke-direct {p0, v5, v1, v4}, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->calculateFinalScale(FLandroid/graphics/drawable/Drawable;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    mul-float v2, v9, v10

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    mul-float v3, v9, v10

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v5, v9

    add-float/2addr v9, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v2, v10

    sub-float v8, v9, v10

    iget v9, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->spanWidth:F

    sub-float/2addr v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v7, p5, v9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget v9, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    iget v10, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->imageSideMargin:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->imageSideMargin:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->fontScale:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->spanWidth:F

    iget v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->spanWidth:F

    float-to-int v2, v2

    return v2
.end method
