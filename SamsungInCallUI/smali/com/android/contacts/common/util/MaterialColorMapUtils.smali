.class public Lcom/android/contacts/common/util/MaterialColorMapUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    }
.end annotation


# instance fields
.field private final sPrimaryColors:Landroid/content/res/TypedArray;

.field private final sSecondaryColors:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0c0029

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    const v0, 0x7f0c002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    return-void
.end method

.method public static getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 3

    const v0, 0x7f0e0110

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f0e0111

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    new-instance v2, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    invoke-direct {v2, v0, v1}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object v2
.end method

.method public static hue(I)F
    .locals 8

    const/4 v0, 0x0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p0, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ne v4, v5, :cond_0

    :goto_0
    return v0

    :cond_0
    sub-int v5, v4, v5

    int-to-float v5, v5

    sub-int v6, v4, v1

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-int v7, v4, v2

    int-to-float v7, v7

    div-float/2addr v7, v5

    sub-int v3, v4, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    if-ne v1, v4, :cond_1

    sub-float v1, v3, v7

    :goto_1
    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v1, v6

    sub-float/2addr v1, v3

    goto :goto_1

    :cond_2
    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v1, v7

    sub-float/2addr v1, v6

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 7

    const/4 v1, 0x0

    const-string v0, "calculatePrimaryAndSecondaryColor"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->hue(I)F

    move-result v5

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    move v2, v1

    move v3, v0

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-static {v4}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->hue(I)F

    move-result v4

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v6, v4, v3

    if-gez v6, :cond_0

    move v2, v0

    move v3, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget-object v3, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object v0
.end method
