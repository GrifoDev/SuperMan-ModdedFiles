.class public final Lcom/android/incallui/help/HelpHubImageSpan;
.super Landroid/text/style/ImageSpan;


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpHubImageSpan"


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

    iput v0, p0, Lcom/android/incallui/help/HelpHubImageSpan;->fontScale:F

    iput v0, p0, Lcom/android/incallui/help/HelpHubImageSpan;->imageSideMargin:F

    iput v0, p0, Lcom/android/incallui/help/HelpHubImageSpan;->finalScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/help/HelpHubImageSpan;->spanWidth:F

    return-void
.end method

.method private calculateFinalScale(FLandroid/graphics/drawable/Drawable;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 3

    iget v0, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-lt v0, v1, :cond_0

    iget v0, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-le v0, v1, :cond_2

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/help/HelpHubImageSpan;->fontScale:F

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    div-float v0, p1, v1

    :cond_1
    iget v1, p0, Lcom/android/incallui/help/HelpHubImageSpan;->fontScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/help/HelpHubImageSpan;->finalScale:F

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/incallui/help/HelpHubImageSpan;->fontScale:F

    iput v0, p0, Lcom/android/incallui/help/HelpHubImageSpan;->finalScale:F

    goto :goto_0
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/help/HelpHubImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/help/HelpHubImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/incallui/help/HelpHubImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 7

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/help/HelpHubImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-float v2, p7

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v3, v1, v0}, Lcom/android/incallui/help/HelpHubImageSpan;->calculateFinalScale(FLandroid/graphics/drawable/Drawable;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/incallui/help/HelpHubImageSpan;->finalScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/incallui/help/HelpHubImageSpan;->finalScale:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v3, v6

    add-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v4, v6

    sub-float/2addr v2, v6

    iget v6, p0, Lcom/android/incallui/help/HelpHubImageSpan;->spanWidth:F

    sub-float v5, v6, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, p5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lcom/android/incallui/help/HelpHubImageSpan;->finalScale:F

    iget v5, p0, Lcom/android/incallui/help/HelpHubImageSpan;->finalScale:F

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string v1, "HelpHubImageSpan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fontScale : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/incallui/help/HelpHubImageSpan;->fontScale:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", finalScale : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/incallui/help/HelpHubImageSpan;->finalScale:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " , image height : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , text_area_height : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "HelpHubImageSpan"

    invoke-virtual {v0}, Landroid/graphics/Paint$FontMetricsInt;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/help/HelpHubImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/help/HelpHubImageSpan;->imageSideMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/help/HelpHubImageSpan;->imageSideMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/help/HelpHubImageSpan;->fontScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/help/HelpHubImageSpan;->spanWidth:F

    iget v0, p0, Lcom/android/incallui/help/HelpHubImageSpan;->spanWidth:F

    float-to-int v0, v0

    goto :goto_0
.end method
