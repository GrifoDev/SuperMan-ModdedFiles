.class final Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
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
        "Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertSha256Fingerprint([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setSecHS20Managed(Z)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v0

    return-object v0
.end method
