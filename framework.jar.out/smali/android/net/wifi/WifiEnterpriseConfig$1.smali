.class final Landroid/net/wifi/WifiEnterpriseConfig$1;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
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
        "Landroid/net/wifi/WifiEnterpriseConfig;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 9

    const/4 v8, 0x1

    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->-get0(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->-set3(Landroid/net/wifi/WifiEnterpriseConfig;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->-set4(Landroid/net/wifi/WifiEnterpriseConfig;I)I

    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->-set0(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readPrivateKey(Landroid/os/Parcel;)Ljava/security/PrivateKey;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->-set2(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->-set1(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v8, :cond_3

    move v7, v8

    :goto_1
    invoke-static {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->-set5(Landroid/net/wifi/WifiEnterpriseConfig;Z)Z

    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->-set6(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->-set7(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v8, :cond_1

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v8, :cond_2

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    :cond_2
    return-object v1

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/WifiEnterpriseConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object v0

    return-object v0
.end method
