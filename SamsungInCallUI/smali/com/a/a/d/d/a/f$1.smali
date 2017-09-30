.class final Lcom/a/a/d/d/a/f$1;
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
    .locals 2

    div-int v0, p2, p4

    div-int v1, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "AT_LEAST.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method
