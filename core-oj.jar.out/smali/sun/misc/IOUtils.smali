.class public Lsun/misc/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFully(Ljava/io/InputStream;IZ)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-array v2, v4, [B

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    const p1, 0x7fffffff

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_4

    array-length v4, v2

    if-lt v3, v4, :cond_2

    sub-int v4, p1, v3

    array-length v5, v2

    add-int/lit16 v5, v5, 0x400

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v4, v2

    add-int v5, v3, v0

    if-ge v4, v5, :cond_1

    add-int v4, v3, v0

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_5

    if-eqz p2, :cond_3

    const v4, 0x7fffffff

    if-eq p1, v4, :cond_3

    new-instance v4, Ljava/io/EOFException;

    const-string/jumbo v5, "Detect premature EOF"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    array-length v4, v2

    sub-int v0, v4, v3

    goto :goto_1

    :cond_3
    array-length v4, v2

    if-eq v4, v3, :cond_4

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    :cond_4
    return-object v2

    :cond_5
    add-int/2addr v3, v1

    goto :goto_0
.end method
