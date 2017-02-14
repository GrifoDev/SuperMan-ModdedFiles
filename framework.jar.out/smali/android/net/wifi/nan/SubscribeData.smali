.class public Landroid/net/wifi/nan/SubscribeData;
.super Ljava/lang/Object;
.source "SubscribeData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/SubscribeData$1;,
        Landroid/net/wifi/nan/SubscribeData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/nan/SubscribeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mRxFilter:[B

.field public final mRxFilterLength:I

.field public final mServiceName:Ljava/lang/String;

.field public final mServiceSpecificInfo:[B

.field public final mServiceSpecificInfoLength:I

.field public final mTxFilter:[B

.field public final mTxFilterLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/nan/SubscribeData$1;

    invoke-direct {v0}, Landroid/net/wifi/nan/SubscribeData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nan/SubscribeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BI[BI[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceName:Ljava/lang/String;

    iput p3, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfoLength:I

    iput-object p2, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfo:[B

    iput p5, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    iput-object p4, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilter:[B

    iput p7, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    iput-object p6, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilter:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[BI[BI[BILandroid/net/wifi/nan/SubscribeData;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/net/wifi/nan/SubscribeData;-><init>(Ljava/lang/String;[BI[BI[BI)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    instance-of v2, p1, Landroid/net/wifi/nan/SubscribeData;

    if-nez v2, :cond_1

    return v4

    :cond_1
    move-object v1, p1

    nop

    nop

    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceName:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/wifi/nan/SubscribeData;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfoLength:I

    iget v3, v1, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfoLength:I

    if-eq v2, v3, :cond_3

    :cond_2
    return v4

    :cond_3
    iget v2, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    iget v3, v1, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    iget v3, v1, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfo:[B

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfo:[B

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfoLength:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfo:[B

    aget-byte v2, v2, v0

    iget-object v3, v1, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfo:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget v2, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfoLength:I

    if-eqz v2, :cond_6

    return v4

    :cond_6
    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilter:[B

    if-eqz v2, :cond_8

    iget-object v2, v1, Landroid/net/wifi/nan/SubscribeData;->mTxFilter:[B

    if-eqz v2, :cond_8

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilter:[B

    aget-byte v2, v2, v0

    iget-object v3, v1, Landroid/net/wifi/nan/SubscribeData;->mTxFilter:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_7

    return v4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget v2, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    if-eqz v2, :cond_9

    return v4

    :cond_9
    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilter:[B

    if-eqz v2, :cond_b

    iget-object v2, v1, Landroid/net/wifi/nan/SubscribeData;->mRxFilter:[B

    if-eqz v2, :cond_b

    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    if-ge v0, v2, :cond_c

    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilter:[B

    aget-byte v2, v2, v0

    iget-object v3, v1, Landroid/net/wifi/nan/SubscribeData;->mRxFilter:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_a

    return v4

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    iget v2, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    if-eqz v2, :cond_c

    return v4

    :cond_c
    return v5
.end method

.method public hashCode()I
    .locals 3

    iget-object v1, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfoLength:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfo:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilter:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilter:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SubscribeData [mServiceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', mServiceSpecificInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfo:[B

    iget v3, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfoLength:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', mTxFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilter:[B

    iget v3, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;-><init>(II[BI)V

    invoke-virtual {v1}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRxFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    iget-object v2, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilter:[B

    iget v3, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;-><init>(II[BI)V

    invoke-virtual {v1}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfoLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfoLength:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfo:[B

    iget v1, p0, Landroid/net/wifi/nan/SubscribeData;->mServiceSpecificInfoLength:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    :cond_0
    iget v0, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilter:[B

    iget v1, p0, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    :cond_1
    iget v0, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilter:[B

    iget v1, p0, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    :cond_2
    return-void
.end method
