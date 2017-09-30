.class public Lcom/samsung/android/c/a/a;
.super Lcom/samsung/android/c/a/a/a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/samsung/android/c/a/a/b;

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:[F

.field private u:I

.field private v:[I

.field private w:I

.field private x:Landroid/graphics/Paint;

.field private y:Landroid/graphics/Paint;

.field private z:Ljava/lang/String;


# direct methods
.method private a(Landroid/graphics/Canvas;F)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/c/a/a;->q:F

    iget v1, p0, Lcom/samsung/android/c/a/a;->p:F

    sub-float/2addr v0, v1

    sub-float v1, v0, p2

    iget v0, p0, Lcom/samsung/android/c/a/a;->r:F

    iget v2, p0, Lcom/samsung/android/c/a/a;->p:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/samsung/android/c/a/a;->q:F

    iget v3, p0, Lcom/samsung/android/c/a/a;->p:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/samsung/android/c/a/a;->r:F

    iget v4, p0, Lcom/samsung/android/c/a/a;->p:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/samsung/android/c/a/a;->p:F

    iget v6, p0, Lcom/samsung/android/c/a/a;->p:F

    iget-object v7, p0, Lcom/samsung/android/c/a/a;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/c/a/a;->q:F

    iget v1, p0, Lcom/samsung/android/c/a/a;->r:F

    iget v2, p0, Lcom/samsung/android/c/a/a;->p:F

    iget-object v3, p0, Lcom/samsung/android/c/a/a;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/c/a/a/a;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/c/a/a;->f:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/c/a/a/a;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/samsung/android/c/a/a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/c/a/a;->B:Lcom/samsung/android/c/a/a/b;

    iget v1, p0, Lcom/samsung/android/c/a/a;->b:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/c/a/a/b;->a(I)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/samsung/android/c/a/a;->w:I

    if-gez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/c/a/a;->g:Z

    if-nez v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/samsung/android/c/a/a;->w:I

    if-ne v1, v6, :cond_6

    :cond_3
    iget v1, p0, Lcom/samsung/android/c/a/a;->d:F

    iget v2, p0, Lcom/samsung/android/c/a/a;->c:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/c/a/a;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/samsung/android/c/a/a;->b:I

    iget v1, p0, Lcom/samsung/android/c/a/a;->a:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/samsung/android/c/a/a;->f:F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/c/a/a;->a(Landroid/graphics/Canvas;F)V

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/samsung/android/c/a/a;->b:I

    iget-object v1, p0, Lcom/samsung/android/c/a/a;->B:Lcom/samsung/android/c/a/a/b;

    invoke-virtual {v1}, Lcom/samsung/android/c/a/a/b;->a()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/c/a/a;->u:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/c/a/a;->B:Lcom/samsung/android/c/a/a/b;

    invoke-virtual {v0}, Lcom/samsung/android/c/a/a/b;->a()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/c/a/a;->b:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/samsung/android/c/a/a;->t:[F

    aget v0, v0, v1

    iget v2, p0, Lcom/samsung/android/c/a/a;->e:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/samsung/android/c/a/a;->q:F

    sub-float/2addr v2, v3

    sub-float v0, v2, v0

    iget v2, p0, Lcom/samsung/android/c/a/a;->w:I

    if-gez v2, :cond_a

    iget-boolean v2, p0, Lcom/samsung/android/c/a/a;->g:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/samsung/android/c/a/a;->d:F

    sub-float v0, v2, v0

    :cond_5
    :goto_2
    iget v2, p0, Lcom/samsung/android/c/a/a;->c:F

    iget v3, p0, Lcom/samsung/android/c/a/a;->r:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/c/a/a;->x:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/c/a/a;->x:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/c/a/a;->x:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/c/a/a;->v:[I

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/samsung/android/c/a/a;->z:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/c/a/a;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/samsung/android/c/a/a;->b:I

    iget-object v1, p0, Lcom/samsung/android/c/a/a;->B:Lcom/samsung/android/c/a/a/b;

    invoke-virtual {v1}, Lcom/samsung/android/c/a/a/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/c/a/a;->w:I

    if-gez v0, :cond_c

    iget-boolean v0, p0, Lcom/samsung/android/c/a/a;->g:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/samsung/android/c/a/a;->d:F

    iget v1, p0, Lcom/samsung/android/c/a/a;->o:F

    sub-float/2addr v0, v1

    :goto_3
    iget v1, p0, Lcom/samsung/android/c/a/a;->s:F

    iget-object v2, p0, Lcom/samsung/android/c/a/a;->y:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/c/a/a;->y:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/c/a/a;->A:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/c/a/a;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/samsung/android/c/a/a;->w:I

    if-gez v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/c/a/a;->g:Z

    if-eqz v1, :cond_8

    :cond_7
    iget v1, p0, Lcom/samsung/android/c/a/a;->w:I

    if-nez v1, :cond_9

    :cond_8
    iget v1, p0, Lcom/samsung/android/c/a/a;->c:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p1, v1, v2, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "visualeffectScroll"

    const-string v1, "handleMode Parameter Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Lcom/samsung/android/c/a/a;->w:I

    if-ne v2, v6, :cond_5

    iget v2, p0, Lcom/samsung/android/c/a/a;->d:F

    sub-float v0, v2, v0

    goto :goto_2

    :cond_b
    iget v0, p0, Lcom/samsung/android/c/a/a;->o:F

    goto :goto_3

    :cond_c
    iget v0, p0, Lcom/samsung/android/c/a/a;->w:I

    if-ne v0, v6, :cond_d

    iget v0, p0, Lcom/samsung/android/c/a/a;->d:F

    iget v1, p0, Lcom/samsung/android/c/a/a;->o:F

    sub-float/2addr v0, v1

    goto :goto_3

    :cond_d
    iget v0, p0, Lcom/samsung/android/c/a/a;->o:F

    goto :goto_3
.end method

.method public setBigTextColor(I)V
    .locals 3

    const-string v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBigTextColor : color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/c/a/a;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBigTextSize(F)V
    .locals 3

    const-string v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBigTextSize : textSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/c/a/a;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setSmallTextColor(I)V
    .locals 3

    const-string v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmallTextColor : color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/c/a/a;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSmallTextSize(F)V
    .locals 3

    const-string v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmallTextSize : textSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/c/a/a;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
