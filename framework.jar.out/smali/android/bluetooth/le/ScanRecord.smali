.class public final Landroid/bluetooth/le/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# static fields
.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA:I = 0x16

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecord"


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private mManuDatalist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[BLjava/util/ArrayList;)V
    .locals 0
    .param p4, "advertiseFlags"    # I
    .param p5, "txPowerLevel"    # I
    .param p6, "localName"    # Ljava/lang/String;
    .param p7, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p3, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local p8, "manuDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 161
    iput-object p2, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 162
    iput-object p3, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 163
    iput-object p6, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 164
    iput p4, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    .line 165
    iput p5, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    .line 166
    iput-object p7, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    .line 167
    iput-object p8, p0, Landroid/bluetooth/le/ScanRecord;->mManuDatalist:Ljava/util/ArrayList;

    .line 159
    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 312
    new-array v0, p2, [B

    .line 313
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 314
    return-object v0
.end method

.method public static parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;
    .locals 35
    .param p0, "scanRecord"    # [B

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    const/4 v3, 0x0

    return-object v3

    .line 185
    :cond_0
    const-string/jumbo v3, "ScanRecord"

    const-string/jumbo v10, "parseFromBytes"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/16 v21, 0x0

    .line 187
    .local v21, "currentPos":I
    const/4 v7, -0x1

    .line 188
    .local v7, "advertiseFlag":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v9, 0x0

    .line 190
    .local v9, "localName":Ljava/lang/String;
    const/high16 v8, -0x80000000

    .line 191
    .local v8, "txPowerLevel":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v11, "manuDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 194
    .local v5, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .local v6, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    move/from16 v22, v21

    .line 197
    .end local v9    # "localName":Ljava/lang/String;
    .end local v21    # "currentPos":I
    .local v22, "currentPos":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v22

    if-ge v0, v3, :cond_4

    .line 199
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "currentPos":I
    .restart local v21    # "currentPos":I
    :try_start_1
    aget-byte v3, p0, v22

    and-int/lit16 v0, v3, 0xff

    move/from16 v27, v0

    .line 200
    .local v27, "length":I
    if-nez v27, :cond_2

    .line 276
    .end local v27    # "length":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    const/4 v4, 0x0

    .line 279
    .end local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_1
    new-instance v3, Landroid/bluetooth/le/ScanRecord;

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v11}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[BLjava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 204
    .restart local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v27    # "length":I
    :cond_2
    add-int/lit8 v23, v27, -0x1

    .line 206
    .local v23, "dataLength":I
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "currentPos":I
    .restart local v22    # "currentPos":I
    :try_start_2
    aget-byte v3, p0, v21

    and-int/lit16 v0, v3, 0xff

    move/from16 v25, v0

    .line 207
    .local v25, "fieldType":I
    sparse-switch v25, :sswitch_data_0

    .line 273
    :goto_2
    add-int v21, v22, v23

    .end local v22    # "currentPos":I
    .restart local v21    # "currentPos":I
    move/from16 v22, v21

    .end local v21    # "currentPos":I
    .restart local v22    # "currentPos":I
    goto :goto_0

    .line 209
    :sswitch_0
    aget-byte v3, p0, v22

    and-int/lit16 v7, v3, 0xff

    .line 210
    goto :goto_2

    .line 214
    :sswitch_1
    const/4 v3, 0x2

    .line 213
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 281
    .end local v23    # "dataLength":I
    .end local v25    # "fieldType":I
    .end local v27    # "length":I
    :catch_0
    move-exception v24

    .local v24, "e":Ljava/lang/Exception;
    move/from16 v21, v22

    .line 282
    .end local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v22    # "currentPos":I
    .restart local v21    # "currentPos":I
    :goto_3
    const-string/jumbo v3, "ScanRecord"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to parse scan record: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v12, Landroid/bluetooth/le/ScanRecord;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x80000000

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, p0

    invoke-direct/range {v12 .. v20}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[BLjava/util/ArrayList;)V

    return-object v12

    .line 219
    .end local v21    # "currentPos":I
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v22    # "currentPos":I
    .restart local v23    # "dataLength":I
    .restart local v25    # "fieldType":I
    .restart local v27    # "length":I
    :sswitch_2
    const/4 v3, 0x4

    .line 218
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_2

    .line 224
    :sswitch_3
    const/16 v3, 0x10

    .line 223
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_2

    .line 228
    :sswitch_4
    new-instance v9, Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v3

    .line 228
    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    .line 230
    .local v9, "localName":Ljava/lang/String;
    goto :goto_2

    .line 232
    .end local v9    # "localName":Ljava/lang/String;
    :sswitch_5
    aget-byte v8, p0, v22

    .line 233
    goto :goto_2

    .line 237
    :sswitch_6
    const/16 v34, 0x2

    .line 238
    .local v34, "serviceUuidLength":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v33

    .line 240
    .local v33, "serviceDataUuidBytes":[B
    invoke-static/range {v33 .. v33}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v32

    .line 243
    .local v32, "serviceDataUuid":Landroid/os/ParcelUuid;
    add-int/lit8 v3, v22, 0x2

    add-int/lit8 v10, v23, -0x2

    .line 242
    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v31

    .line 244
    .local v31, "serviceDataArray":[B
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 249
    .end local v31    # "serviceDataArray":[B
    .end local v32    # "serviceDataUuid":Landroid/os/ParcelUuid;
    .end local v33    # "serviceDataUuidBytes":[B
    .end local v34    # "serviceUuidLength":I
    :sswitch_7
    add-int/lit8 v3, v22, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 250
    aget-byte v10, p0, v22

    and-int/lit16 v10, v10, 0xff

    .line 249
    add-int v29, v3, v10

    .line 251
    .local v29, "manufacturerId":I
    add-int/lit8 v3, v22, 0x2

    .line 252
    add-int/lit8 v10, v23, -0x2

    .line 251
    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v28

    .line 253
    .local v28, "manufacturerDataBytes":[B
    const/16 v30, 0x0

    .line 254
    .local v30, "previousManuDataBytes":[B
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30    # "previousManuDataBytes":[B
    check-cast v30, [B

    .line 256
    .local v30, "previousManuDataBytes":[B
    if-eqz v30, :cond_3

    .line 257
    const-string/jumbo v3, "ScanRecord"

    const-string/jumbo v10, "same manuId data exists, combine both data and store"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    move-object/from16 v0, v28

    array-length v3, v0

    move-object/from16 v0, v30

    array-length v10, v0

    add-int/2addr v3, v10

    new-array v0, v3, [B

    move-object/from16 v26, v0

    .line 261
    .local v26, "fullManufacturerDataBytes":[B
    move-object/from16 v0, v30

    array-length v3, v0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-static {v0, v10, v1, v12, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 262
    move-object/from16 v0, v30

    array-length v3, v0

    move-object/from16 v0, v28

    array-length v10, v0

    const/4 v12, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v12, v1, v3, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 263
    move/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 265
    .end local v26    # "fullManufacturerDataBytes":[B
    :cond_3
    const-string/jumbo v3, "ScanRecord"

    const-string/jumbo v10, "first manudata for manu ID"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 281
    .end local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v22    # "currentPos":I
    .end local v23    # "dataLength":I
    .end local v25    # "fieldType":I
    .end local v27    # "length":I
    .end local v28    # "manufacturerDataBytes":[B
    .end local v29    # "manufacturerId":I
    .end local v30    # "previousManuDataBytes":[B
    .restart local v21    # "currentPos":I
    :catch_1
    move-exception v24

    .restart local v24    # "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .end local v21    # "currentPos":I
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v22    # "currentPos":I
    :cond_4
    move/from16 v21, v22

    .end local v22    # "currentPos":I
    .restart local v21    # "currentPos":I
    goto/16 :goto_1

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0x16 -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 300
    .local p4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 301
    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 303
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    sub-int/2addr p2, p3

    .line 305
    add-int/2addr p1, p3

    goto :goto_0

    .line 307
    .end local v0    # "uuidBytes":[B
    :cond_0
    return p1
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManudataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManuDatalist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 2
    .param p1, "manufacturerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 105
    return-object v1

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v1, 0x0

    .line 123
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 124
    :cond_0
    return-object v1

    .line 126
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public isMultiManudata()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mManuDatalist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 322
    .local v0, "listSize":I
    if-lez v0, :cond_0

    .line 323
    const-string/jumbo v1, "ScanRecord"

    const-string/jumbo v2, "It\'s a Multi Manu data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, 0x1

    return v1

    .line 327
    :cond_0
    const-string/jumbo v1, "ScanRecord"

    const-string/jumbo v2, "Not a Multi Manu data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string/jumbo v1, ", mManufacturerSpecificData="

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    const-string/jumbo v1, ", mServiceData="

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    const-string/jumbo v1, ", mTxPowerLevel="

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    const-string/jumbo v1, ", mDeviceName="

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    const-string/jumbo v1, "]"

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
