.class final Lcom/a/a/d/d/a/f$2;
.super Lcom/a/a/d/d/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/d/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/d/d/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(IIII)I
    .locals 4

    const/4 v0, 0x1

    int-to-float v1, p2

    int-to-float v2, p4

    div-float/2addr v1, v2

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v2, v1, :cond_0

    :goto_0
    shl-int v0, v2, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "AT_MOST.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method
