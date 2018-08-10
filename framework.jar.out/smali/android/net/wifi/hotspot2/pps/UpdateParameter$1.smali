.class final Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;
.super Ljava/lang/Object;
.source "UpdateParameter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/UpdateParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/hotspot2/pps/UpdateParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 4

    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateIntervalInMinutes(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setRestriction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setServerUri(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setBase64EncodedPassword(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertSha256Fingerprint([B)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v0

    return-object v0
.end method
