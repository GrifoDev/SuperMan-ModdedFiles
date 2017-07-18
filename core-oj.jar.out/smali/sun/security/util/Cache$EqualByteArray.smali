.class public Lsun/security/util/Cache$EqualByteArray;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EqualByteArray"
.end annotation


# instance fields
.field private final b:[B

.field private volatile hash:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v1, p1, Lsun/security/util/Cache$EqualByteArray;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lsun/security/util/Cache$EqualByteArray;

    iget-object v1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    iget-object v2, v0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lsun/security/util/Cache$EqualByteArray;->hash:I

    if-nez v0, :cond_1

    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    array-length v2, v2

    add-int/lit8 v0, v2, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lsun/security/util/Cache$EqualByteArray;->hash:I

    :cond_1
    return v0
.end method
