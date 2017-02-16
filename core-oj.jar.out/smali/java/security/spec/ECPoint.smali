.class public Ljava/security/spec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# static fields
.field public static final POINT_INFINITY:Ljava/security/spec/ECPoint;


# instance fields
.field private final x:Ljava/math/BigInteger;

.field private final y:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-direct {v0}, Ljava/security/spec/ECPoint;-><init>()V

    sput-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    .line 52
    iput-object v0, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "affine coordinate x or y is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iput-object p1, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    .line 68
    iput-object p2, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 97
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 98
    :cond_0
    sget-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    if-ne p0, v0, :cond_1

    return v1

    .line 99
    :cond_1
    instance-of v0, p1, Ljava/security/spec/ECPoint;

    if-eqz v0, :cond_3

    .line 100
    iget-object v2, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECPoint;

    iget-object v0, v0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    check-cast p1, Ljava/security/spec/ECPoint;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    move v0, v1

    goto :goto_0

    .line 103
    :cond_3
    return v1
.end method

.method public getAffineX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getAffineY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 111
    sget-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    iget-object v0, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    shl-int/2addr v0, v1

    return v0
.end method
