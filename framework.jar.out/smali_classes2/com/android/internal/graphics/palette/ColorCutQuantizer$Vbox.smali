.class Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vbox"
.end annotation


# instance fields
.field private mLowerIndex:I

.field private mMaxBlue:I

.field private mMaxGreen:I

.field private mMaxRed:I

.field private mMinBlue:I

.field private mMinGreen:I

.field private mMinRed:I

.field private mPopulation:I

.field private mUpperIndex:I

.field final synthetic this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;


# direct methods
.method constructor <init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iput p3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->fitBox()V

    return-void
.end method


# virtual methods
.method final canSplit()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final findSplitPoint()I
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v4

    iget-object v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v0, v6, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    iget-object v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v2, v6, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v0, v4, v6, v7}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->sort([III)V

    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v0, v4, v6, v7}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    div-int/lit8 v5, v6, 0x2

    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const/4 v1, 0x0

    :goto_0
    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v3, v6, :cond_1

    aget v6, v0, v3

    aget v6, v2, v6

    add-int/2addr v1, v6

    if-lt v1, v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    return v6
.end method

.method final fitBox()V
    .locals 15

    iget-object v14, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v2, v14, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    iget-object v14, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v5, v14, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const/high16 v7, -0x80000000

    const/high16 v8, -0x80000000

    const/high16 v9, -0x80000000

    const/4 v3, 0x0

    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    :goto_0
    iget v14, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v6, v14, :cond_6

    aget v1, v2, v6

    aget v14, v5, v1

    add-int/2addr v3, v14

    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v13

    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v4

    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v0

    if-le v13, v9, :cond_0

    move v9, v13

    :cond_0
    if-ge v13, v12, :cond_1

    move v12, v13

    :cond_1
    if-le v4, v8, :cond_2

    move v8, v4

    :cond_2
    if-ge v4, v11, :cond_3

    move v11, v4

    :cond_3
    if-le v0, v7, :cond_4

    move v7, v0

    :cond_4
    if-ge v0, v10, :cond_5

    move v10, v0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    iput v12, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    iput v9, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iput v11, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    iput v8, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iput v10, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    iput v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iput v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    return-void
.end method

.method final getAverageColor()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 14

    iget-object v12, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v4, v12, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    iget-object v12, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v7, v12, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    iget v8, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    :goto_0
    iget v12, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v8, v12, :cond_0

    aget v2, v4, v8

    aget v3, v7, v2

    add-int/2addr v11, v3

    invoke-static {v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v12

    mul-int/2addr v12, v3

    add-int/2addr v10, v12

    invoke-static {v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v12

    mul-int/2addr v12, v3

    add-int/2addr v6, v12

    invoke-static {v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v12

    mul-int/2addr v12, v3

    add-int/2addr v1, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    int-to-float v12, v10

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v12, v6

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v12, v1

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v12, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {v9, v5, v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v13

    invoke-direct {v12, v13, v11}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    return-object v12
.end method

.method final getColorCount()I
    .locals 2

    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final getLongestColorDimension()I
    .locals 5

    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int v2, v3, v4

    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int v1, v3, v4

    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int v0, v3, v4

    if-lt v2, v1, :cond_0

    if-lt v2, v0, :cond_0

    const/4 v3, -0x3

    return v3

    :cond_0
    if-lt v1, v2, :cond_1

    if-lt v1, v0, :cond_1

    const/4 v3, -0x2

    return v3

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method final getVolume()I
    .locals 3

    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method final splitBox()Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Can not split a box with only 1 color"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v1

    new-instance v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V

    iput v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->fitBox()V

    return-object v0
.end method
