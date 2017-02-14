.class public Lsun/security/util/ByteArrayLexOrder;
.super Ljava/lang/Object;
.source "ByteArrayLexOrder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lsun/security/util/ByteArrayLexOrder;->compare([B[B)I

    move-result v0

    return v0
.end method

.method public final compare([B[B)I
    .locals 4

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    sub-int v0, v2, v3

    if-eqz v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v2, p1

    array-length v3, p2

    sub-int/2addr v2, v3

    return v2
.end method
