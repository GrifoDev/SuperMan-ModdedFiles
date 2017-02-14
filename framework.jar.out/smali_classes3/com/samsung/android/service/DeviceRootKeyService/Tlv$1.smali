.class final Lcom/samsung/android/service/DeviceRootKeyService/Tlv$1;
.super Ljava/lang/Object;
.source "Tlv.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
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
        "Lcom/samsung/android/service/DeviceRootKeyService/Tlv;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    .locals 6

    new-instance v3, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-direct {v3}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-array v4, v5, [B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv$1;->newArray(I)[Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    move-result-object v0

    return-object v0
.end method
