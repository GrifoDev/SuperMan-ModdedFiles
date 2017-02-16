.class final Landroid/bluetooth/le/AdvertiseData$1;
.super Ljava/lang/Object;
.source "AdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseData;
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
        "Landroid/bluetooth/le/AdvertiseData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;
    .locals 16
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 184
    new-instance v1, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 186
    .local v1, "builder":Landroid/bluetooth/le/AdvertiseData$Builder;
    const-class v14, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v13

    .line 187
    .local v13, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    if-eqz v13, :cond_0

    .line 188
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "uuid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    .line 189
    .local v11, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v1, v11}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    goto :goto_0

    .line 192
    .end local v11    # "uuid":Landroid/os/ParcelUuid;
    .end local v12    # "uuid$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 193
    .local v6, "manufacturerSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 195
    .local v5, "manufacturerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 197
    .local v4, "manufacturerDataLength":I
    new-array v3, v4, [B

    .line 198
    .local v3, "manufacturerData":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 199
    invoke-virtual {v1, v5, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 193
    .end local v3    # "manufacturerData":[B
    .end local v4    # "manufacturerDataLength":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    .end local v5    # "manufacturerId":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 203
    .local v9, "serviceDataSize":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v9, :cond_4

    .line 205
    const-class v14, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 204
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .line 206
    .local v10, "serviceDataUuid":Landroid/os/ParcelUuid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 208
    .local v8, "serviceDataLength":I
    new-array v7, v8, [B

    .line 209
    .local v7, "serviceData":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 210
    invoke-virtual {v1, v10, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 203
    .end local v7    # "serviceData":[B
    .end local v8    # "serviceDataLength":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 213
    .end local v10    # "serviceDataUuid":Landroid/os/ParcelUuid;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v1, v14}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    const/4 v14, 0x1

    :goto_4
    invoke-virtual {v1, v14}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 215
    invoke-virtual {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v14

    return-object v14

    .line 213
    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    .line 214
    :cond_6
    const/4 v14, 0x0

    goto :goto_4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/le/AdvertiseData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 179
    new-array v0, p1, [Landroid/bluetooth/le/AdvertiseData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->newArray(I)[Landroid/bluetooth/le/AdvertiseData;

    move-result-object v0

    return-object v0
.end method
