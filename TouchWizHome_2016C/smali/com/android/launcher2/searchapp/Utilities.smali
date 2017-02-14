.class final Lcom/android/launcher2/searchapp/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final DEBUG_VIEWS_AND_SIZES:Z

.field private static mBgPaint:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private static sBlackPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher2/searchapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/searchapp/Utilities;->mBgPaint:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/searchapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DEBUGGABLE()Z
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    return v0
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static convertVietnamese(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x37

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "\u1ea2"

    aput-object v3, v2, v5

    const-string v3, "\u00c1"

    aput-object v3, v2, v6

    const-string v3, "\u00c0"

    aput-object v3, v2, v7

    const-string v3, "\u1ea0"

    aput-object v3, v2, v8

    const-string v3, "\u00c3"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u1eae"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u1eb2"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\u1eb0"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\u1eb6"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "\u1eaa"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "\u1ea4"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "\u1ea8"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "\u1ea6"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "\u1eac"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "\u1eaa"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "\u1eba"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "\u00c9"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "\u00c8"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "\u1eb8"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "\u1ebc"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "\u1ec2"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "\u1ebe"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "\u1ec0"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "\u1ec6"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "\u1ec4"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "\u1ec8"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "\u00cd"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "\u00cc"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "\u1eca"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "\u0128"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "\u1ee6"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "\u00d9"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "\u00da"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "\u1ee4"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "\u0168"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "\u1eea"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "\u1eec"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "\u1ee8"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "\u1ef0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "\u1eee"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "\u1ece"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "\u00d2"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "\u00d3"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "\u1ecc"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "\u00d5"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "\u1ed4"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "\u1ed2"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "\u1ed0"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "\u1ed8"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "\u1ed6"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "\u1ede"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "\u1eda"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "\u1edc"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "\u1ee2"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "\u1ee0"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "A"

    aput-object v3, v0, v5

    const-string v3, "\u0102"

    aput-object v3, v0, v6

    const-string v3, "\u00c2"

    aput-object v3, v0, v7

    const-string v3, "E"

    aput-object v3, v0, v8

    const-string v3, "\u00ca"

    aput-object v3, v0, v9

    const/4 v3, 0x5

    const-string v4, "I"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "U"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "\u01af"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "O"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "\u00d4"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "\u01a0"

    aput-object v4, v0, v3

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x37

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    div-int/lit8 v3, v1, 0x5

    aget-object v3, v0, v3

    invoke-virtual {p0, p0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static ensureBlackPaint()V
    .locals 2

    sget-object v0, Lcom/android/launcher2/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/launcher2/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private static ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/searchapp/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0x7f

    const/16 v3, 0x9b

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/searchapp/Utilities;->getRandomColor(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lcom/android/launcher2/searchapp/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getChosung(C)Ljava/lang/String;
    .locals 7

    const v0, 0xac00

    const/16 v1, 0x24c

    const/16 v5, 0x13

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "\u3131"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "\u3132"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "\u3134"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "\u3137"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "\u3138"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "\u3139"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    const-string v6, "\u3141"

    aput-object v6, v2, v5

    const/4 v5, 0x7

    const-string v6, "\u3142"

    aput-object v6, v2, v5

    const/16 v5, 0x8

    const-string v6, "\u3143"

    aput-object v6, v2, v5

    const/16 v5, 0x9

    const-string v6, "\u3145"

    aput-object v6, v2, v5

    const/16 v5, 0xa

    const-string v6, "\u3146"

    aput-object v6, v2, v5

    const/16 v5, 0xb

    const-string v6, "\u3147"

    aput-object v6, v2, v5

    const/16 v5, 0xc

    const-string v6, "\u3148"

    aput-object v6, v2, v5

    const/16 v5, 0xd

    const-string v6, "\u3149"

    aput-object v6, v2, v5

    const/16 v5, 0xe

    const-string v6, "\u314a"

    aput-object v6, v2, v5

    const/16 v5, 0xf

    const-string v6, "\u314b"

    aput-object v6, v2, v5

    const/16 v5, 0x10

    const-string v6, "\u314c"

    aput-object v6, v2, v5

    const/16 v5, 0x11

    const-string v6, "\u314d"

    aput-object v6, v2, v5

    const/16 v5, 0x12

    const-string v6, "\u314e"

    aput-object v6, v2, v5

    const v5, 0xac00

    sub-int v3, p0, v5

    div-int/lit16 v4, v3, 0x24c

    aget-object v5, v2, v4

    return-object v5
.end method

.method private static getRandomColor(III)I
    .locals 4

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v2, v3, p1

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v1, v3, p1

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v0, v3, p1

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/searchapp/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method private static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Z)V
    .locals 13

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {p0}, Lcom/android/launcher2/searchapp/Utilities;->ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;

    move-result-object v5

    int-to-float v1, v11

    int-to-float v2, v12

    add-int v0, v11, v10

    int-to-float v3, v0

    add-int v0, v12, v7

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/android/launcher2/searchapp/Utilities;->ensureBlackPaint()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/android/launcher2/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    sget-object v1, Lcom/android/launcher2/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    add-float v8, v0, v1

    sget-object v0, Lcom/android/launcher2/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    int-to-float v0, v11

    int-to-float v1, v10

    sub-float/2addr v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int v1, v12, v7

    int-to-float v1, v1

    sub-float/2addr v1, v8

    sget-object v2, Lcom/android/launcher2/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
