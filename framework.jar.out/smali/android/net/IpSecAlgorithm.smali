.class public final Landroid/net/IpSecAlgorithm;
.super Ljava/lang/Object;
.source "IpSecAlgorithm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecAlgorithm$1;
    }
.end annotation


# static fields
.field public static final AUTH_HMAC_MD5:Ljava/lang/String; = "hmac(md5)"

.field public static final AUTH_HMAC_SHA1:Ljava/lang/String; = "hmac(sha1)"

.field public static final AUTH_HMAC_SHA256:Ljava/lang/String; = "hmac(sha256)"

.field public static final AUTH_HMAC_SHA384:Ljava/lang/String; = "hmac(sha384)"

.field public static final AUTH_HMAC_SHA512:Ljava/lang/String; = "hmac(sha512)"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/IpSecAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final CRYPT_AES_CBC:Ljava/lang/String; = "cbc(aes)"


# instance fields
.field private final mKey:[B

.field private final mName:Ljava/lang/String;

.field private final mTruncLenBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/IpSecAlgorithm$1;

    invoke-direct {v0}, Landroid/net/IpSecAlgorithm$1;-><init>()V

    sput-object v0, Landroid/net/IpSecAlgorithm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecAlgorithm;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/IpSecAlgorithm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, p2, v0}, Landroid/net/IpSecAlgorithm;-><init>(Ljava/lang/String;[BI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p3}, Landroid/net/IpSecAlgorithm;->isTruncationLengthValid(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown algorithm or invalid length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    return-void
.end method

.method private static isTruncationLengthValid(Ljava/lang/String;I)Z
    .locals 6

    const/16 v5, 0x80

    const/16 v4, 0x100

    const/16 v3, 0x60

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "cbc(aes)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq p1, v5, :cond_0

    const/16 v2, 0xc0

    if-ne p1, v2, :cond_b

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "hmac(md5)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-lt p1, v3, :cond_2

    if-gt p1, v5, :cond_2

    move v1, v0

    :cond_2
    return v1

    :cond_3
    const-string/jumbo v2, "hmac(sha1)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-lt p1, v3, :cond_4

    const/16 v2, 0xa0

    if-gt p1, v2, :cond_4

    move v1, v0

    :cond_4
    return v1

    :cond_5
    const-string/jumbo v2, "hmac(sha256)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-lt p1, v3, :cond_6

    if-gt p1, v4, :cond_6

    move v1, v0

    :cond_6
    return v1

    :cond_7
    const-string/jumbo v2, "hmac(sha384)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0xc0

    if-lt p1, v2, :cond_8

    const/16 v2, 0x180

    if-gt p1, v2, :cond_8

    move v1, v0

    :cond_8
    return v1

    :cond_9
    const-string/jumbo v2, "hmac(sha512)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-lt p1, v4, :cond_a

    const/16 v2, 0x200

    if-gt p1, v2, :cond_a

    move v1, v0

    :cond_a
    return v1

    :cond_b
    if-eq p1, v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_c
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getKey()[B
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTruncationLengthBits()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
