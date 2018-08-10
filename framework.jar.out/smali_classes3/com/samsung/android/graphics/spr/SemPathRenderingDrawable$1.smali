.class final Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$1;
.super Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;
.source "SemPathRenderingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;-><init>(Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$1;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$1;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
