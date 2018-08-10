.class Lcom/samsung/android/widget/SemColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "SemColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PickedColor"
.end annotation


# instance fields
.field private mAlpha:I

.field private mColor:I

.field private mHsv:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mAlpha:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mAlpha:I

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    return v0
.end method

.method public getV()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mAlpha:I

    iget v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mAlpha:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    return-void
.end method

.method public setColor(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    iget v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mAlpha:I

    iget v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-void
.end method

.method public setHS(FF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mAlpha:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    return-void
.end method

.method public setV(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mAlpha:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mHsv:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->mColor:I

    return-void
.end method
