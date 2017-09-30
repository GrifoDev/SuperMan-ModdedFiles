.class public Lcom/android/incallui/InCallUIMaterialColorMapUtils;
.super Lcom/android/contacts/common/util/MaterialColorMapUtils;


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final sPrimaryColors:Landroid/content/res/TypedArray;

.field private final sSecondaryColors:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils;-><init>(Landroid/content/res/Resources;)V

    const v0, 0x7f0c0011

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    const v0, 0x7f0c0012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    iput-object p1, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public static getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 3

    const v0, 0x7f0e007a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f0e007b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    new-instance v2, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    invoke-direct {v2, v0, v1}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    if-ne v2, p1, :cond_1

    new-instance v2, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget-object v3, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    goto :goto_0
.end method
