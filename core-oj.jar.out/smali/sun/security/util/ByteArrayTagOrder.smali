.class public Lsun/security/util/ByteArrayTagOrder;
.super Ljava/lang/Object;
.source "ByteArrayTagOrder.java"

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

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "bytes1"    # Ljava/lang/Object;
    .param p2, "bytes2"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, [B

    .end local p1    # "bytes1":Ljava/lang/Object;
    check-cast p2, [B

    .end local p2    # "bytes2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lsun/security/util/ByteArrayTagOrder;->compare([B[B)I

    move-result v0

    return v0
.end method

.method public final compare([B[B)I
    .locals 2
    .param p1, "bytes1"    # [B
    .param p2, "bytes2"    # [B

    .prologue
    const/4 v1, 0x0

    .line 57
    aget-byte v0, p1, v1

    or-int/lit8 v0, v0, 0x20

    aget-byte v1, p2, v1

    or-int/lit8 v1, v1, 0x20

    sub-int/2addr v0, v1

    return v0
.end method
