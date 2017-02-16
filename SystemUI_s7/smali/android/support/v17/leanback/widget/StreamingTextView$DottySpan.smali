.class Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;
.super Landroid/text/style/ReplacementSpan;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/StreamingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DottySpan"
.end annotation


# instance fields
.field private final mPosition:I

.field private final mSeed:I

.field final synthetic this$0:Landroid/support/v17/leanback/widget/StreamingTextView;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/StreamingTextView;II)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput p2, p0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->mSeed:I

    iput p3, p0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->mPosition:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 18

    move-object/from16 v0, p9

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v15

    float-to-int v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-static {v15}, Landroid/support/v17/leanback/widget/StreamingTextView;->-get0(Landroid/support/v17/leanback/widget/StreamingTextView;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/lit8 v13, v5, 0x2

    div-int v12, v14, v13

    rem-int v6, v14, v13

    div-int/lit8 v10, v6, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-static {v15}, Landroid/support/v17/leanback/widget/StreamingTextView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-static {v15}, Landroid/support/v17/leanback/widget/StreamingTextView;->-get1(Landroid/support/v17/leanback/widget/StreamingTextView;)Ljava/util/Random;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->mSeed:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/util/Random;->setSeed(J)V

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v12, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->mPosition:I

    add-int/2addr v15, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/support/v17/leanback/widget/StreamingTextView;->-get2(Landroid/support/v17/leanback/widget/StreamingTextView;)I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    :cond_0
    move-object/from16 v0, p9

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_1
    mul-int v15, v7, v13

    add-int/2addr v15, v10

    div-int/lit8 v16, v5, 0x2

    add-int v15, v15, v16

    int-to-float v8, v15

    if-eqz v11, :cond_2

    int-to-float v15, v14

    add-float v15, v15, p5

    sub-float/2addr v15, v8

    int-to-float v0, v5

    move/from16 v16, v0

    sub-float v4, v15, v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-static {v15}, Landroid/support/v17/leanback/widget/StreamingTextView;->-get1(Landroid/support/v17/leanback/widget/StreamingTextView;)Ljava/util/Random;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    mul-int/lit8 v15, v15, 0x3f

    move-object/from16 v0, p9

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-static {v15}, Landroid/support/v17/leanback/widget/StreamingTextView;->-get1(Landroid/support/v17/leanback/widget/StreamingTextView;)Ljava/util/Random;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Random;->nextBoolean()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-static {v15}, Landroid/support/v17/leanback/widget/StreamingTextView;->-get3(Landroid/support/v17/leanback/widget/StreamingTextView;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/support/v17/leanback/widget/StreamingTextView;->-get3(Landroid/support/v17/leanback/widget/StreamingTextView;)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    sub-int v16, p7, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, p9

    invoke-virtual {v0, v15, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    add-float v4, p5, v8

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-static {v15}, Landroid/support/v17/leanback/widget/StreamingTextView;->-get0(Landroid/support/v17/leanback/widget/StreamingTextView;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/support/v17/leanback/widget/StreamingTextView;->-get0(Landroid/support/v17/leanback/widget/StreamingTextView;)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    sub-int v16, p7, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, p9

    invoke-virtual {v0, v15, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
