.class public final Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiAwareNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_SPECIFIER_TYPE_IB:I = 0x0

.field public static final NETWORK_SPECIFIER_TYPE_IB_ANY_PEER:I = 0x1

.field public static final NETWORK_SPECIFIER_TYPE_MAX_VALID:I = 0x3

.field public static final NETWORK_SPECIFIER_TYPE_OOB:I = 0x2

.field public static final NETWORK_SPECIFIER_TYPE_OOB_ANY_PEER:I = 0x3


# instance fields
.field public final clientId:I

.field public final passphrase:Ljava/lang/String;

.field public final peerId:I

.field public final peerMac:[B

.field public final pmk:[B

.field public final role:I

.field public final sessionId:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII[B[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    iput p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    iput p3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    iput p4, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    iput p5, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    iput-object p6, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    iput-object p7, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    iput-object p8, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    iget v3, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    iget v3, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    iget v3, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    iget v3, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    iget v3, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    iget-object v3, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    iget-object v3, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    iget-object v2, v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public satisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WifiAwareNetworkSpecifier ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", role="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", clientId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", peerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", peerMac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    if-nez v1, :cond_0

    const-string/jumbo v1, "<null>"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pmk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    if-nez v1, :cond_1

    const-string/jumbo v1, "<null>"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", passphrase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string/jumbo v1, "<null>"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "<non-null>"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "<non-null>"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "<non-null>"

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
