.class Landroid/media/Cea608CCParser$PAC;
.super Landroid/media/Cea608CCParser$StyleCode;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PAC"
.end annotation


# instance fields
.field final mCol:I

.field final mRow:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p3, p4}, Landroid/media/Cea608CCParser$StyleCode;-><init>(II)V

    iput p1, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    iput p2, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    return-void
.end method

.method static fromBytes(BB)Landroid/media/Cea608CCParser$PAC;
    .locals 8

    const/4 v7, 0x0

    const/16 v5, 0x8

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    and-int/lit8 v5, p0, 0x7

    aget v5, v3, v5

    and-int/lit8 v6, p1, 0x20

    shr-int/lit8 v6, v6, 0x5

    add-int v2, v5, v6

    const/4 v4, 0x0

    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    :cond_0
    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_1

    shr-int/lit8 v5, p1, 0x1

    and-int/lit8 v1, v5, 0x7

    new-instance v5, Landroid/media/Cea608CCParser$PAC;

    mul-int/lit8 v6, v1, 0x4

    invoke-direct {v5, v2, v6, v4, v7}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    return-object v5

    :cond_1
    shr-int/lit8 v5, p1, 0x1

    and-int/lit8 v0, v5, 0x7

    const/4 v5, 0x7

    if-ne v0, v5, :cond_2

    const/4 v0, 0x0

    or-int/lit8 v4, v4, 0x1

    :cond_2
    new-instance v5, Landroid/media/Cea608CCParser$PAC;

    const/4 v6, -0x1

    invoke-direct {v5, v2, v6, v4, v0}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    return-object v5

    nop

    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data
.end method


# virtual methods
.method getCol()I
    .locals 1

    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    return v0
.end method

.method getRow()I
    .locals 1

    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    return v0
.end method

.method isIndentPAC()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "{%d, %d}, %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-super {p0}, Landroid/media/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
