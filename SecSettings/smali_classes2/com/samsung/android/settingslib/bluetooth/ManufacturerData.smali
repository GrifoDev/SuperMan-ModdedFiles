.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;,
        Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;
    }
.end annotation


# instance fields
.field public final MANUFACTURER_DEVICE_ID_GEAR:I

.field public final MANUFACTURER_DEVICE_ID_GEAR_360:I

.field public final MANUFACTURER_DEVICE_ID_GEAR_VR_CONTROLLER:I

.field public final MANUFACTURER_DEVICE_ID_GLOBE:I

.field public final MANUFACTURER_DEVICE_ID_WEARABLE_MAX:I

.field public final MANUFACTURER_DEVICE_ID_WEARABLE_MIN:I

.field public final MANUFACTURER_DEVICE_TYPE_BLE:B

.field public final MANUFACTURER_DEVICE_TYPE_CLASSIC:B

.field public final MANUFACTURER_DEVICE_TYPE_DEFAULT:B

.field public final MANUFACTURER_DEVICE_TYPE_HF_ROLE_SUPPORTED:B

.field public final MANUFACTURER_DEVICE_TYPE_HIDDEN_CONDITION:B

.field public final MANUFACTURER_DEVICE_TYPE_NONE:B

.field public final MANUFACTURER_DEVICE_TYPE_SLD_L:B

.field public final MANUFACTURER_DEVICE_TYPE_SLD_R:B

.field private MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

.field private MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

.field private MANUFACTURER_LENGTH_SS_LE_DEVICE:I

.field private MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

.field private MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

.field private MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

.field private MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

.field private MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_ICON:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_INFO:I

.field private MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

.field private MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

.field private MANUFACTURER_OFFSET_SS_LE_DEVICE_ICON:I

.field private MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_FEATURES:I

.field private MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

.field private MANUFACTURER_OFFSET_SS_LE_PROXIMITY_INFO:I

.field private MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

.field private MANUFACTURER_OFFSET_SS_SERVICE_ID:I

.field private final MANUFACTURER_SS_LE_ASSOCIATED_SERVICE_DATA_FIELD:B

.field private final MANUFACTURER_SS_LE_CONNECTIVITY_FIELD:B

.field private final MANUFACTURER_SS_LE_DEVICE_FIELD:B

.field private final MANUFACTURER_SS_LE_PACKET_NUMBER_FIELD:B

.field private final MANUFACTURER_SS_LE_PROXIMITY_FIELD:B

.field public final MANUFACTURER_TYPE_DEFAULT:I

.field public final MANUFACTURER_TYPE_OLD:I

.field public final MANUFACTURER_TYPE_SS_BREDR:I

.field public final MANUFACTURER_TYPE_SS_LE:I

.field private mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

.field private mManufacturerRawData:[B

.field private mManufacturerType:I

.field private mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;


# direct methods
.method public constructor <init>([B)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_DEFAULT:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_OLD:I

    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_SS_BREDR:I

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_SS_LE:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_GEAR:I

    const/16 v0, 0x90

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_WEARABLE_MIN:I

    const/16 v0, 0xfb

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_GEAR_VR_CONTROLLER:I

    const/16 v0, 0xfe

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_GEAR_360:I

    const/16 v0, 0xdb

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_GLOBE:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_WEARABLE_MAX:I

    iput-byte v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_DEFAULT:B

    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_CLASSIC:B

    iput-byte v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_BLE:B

    iput-byte v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_SLD_L:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_SLD_R:B

    iput-byte v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_NONE:B

    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_HIDDEN_CONDITION:B

    iput-byte v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_HF_ROLE_SUPPORTED:B

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_TYPE:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_INFO:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_TYPE:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_ICON:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

    const/16 v0, 0x1f

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_INFO:I

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_ICON:I

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_DEVICE:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_PACKET_NUMBER_FIELD:B

    iput-byte v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_PROXIMITY_FIELD:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_DEVICE_FIELD:B

    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_CONNECTIVITY_FIELD:B

    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_ASSOCIATED_SERVICE_DATA_FIELD:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->updateDeviceInfo([B)V

    return-void
.end method

.method private setBluetoothType([B)V
    .locals 6

    const/4 v4, 0x0

    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v4, v5

    aget-byte v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object v2

    aget-byte v3, v2, v4

    if-nez v3, :cond_0

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v1, v3, 0xff

    const/16 v3, 0x90

    if-lt v1, v3, :cond_0

    const/16 v3, 0xff

    if-gt v1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    array-length v3, v3

    iget v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    aget-byte v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    goto :goto_0

    :pswitch_2
    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    if-lez v0, :cond_0

    array-length v3, p1

    iget v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v4, v0

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v4, v5

    aget-byte v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setContactCrc([B)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactCrc([BI)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

    add-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactCrc([BI)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setContactHash([B)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactHash([BI)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactHash([BI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDeviceCategory([B)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_TYPE:I

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceCategory(B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceCategory(B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDeviceCategoryPrefix([B)V
    .locals 8

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v2, ""

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v5, v0

    add-int/lit8 v3, v5, 0x1

    array-length v5, p1

    if-le v5, v3, :cond_1

    aget-byte v5, p1, v3

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    return-void

    :cond_2
    array-length v5, p1

    sub-int/2addr v5, v3

    new-array v4, v5, [B

    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    add-int v5, v1, v3

    aget-byte v5, p1, v5

    aput-byte v5, v4, v1

    aget-byte v5, v4, v1

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_4

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget-object v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    iget-object v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-static {v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->-get0(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;)B

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->getCategoryPrefix(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDeviceIconIndex([B)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_ICON:I

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceIconIndex(B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_ICON:I

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceIconIndex(B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDeviceId([B)V
    .locals 4

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v1, p1, v1

    and-int/lit16 v0, v1, 0xff

    if-lez v0, :cond_0

    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v2, v0

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setManufacturerRawData([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    return-void
.end method

.method private setManufacturerType([B)V
    .locals 10

    const/4 v9, 0x1

    const/16 v8, 0x9

    const/4 v7, 0x2

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    array-length v5, p1

    if-ge v5, v8, :cond_1

    :cond_0
    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    return-void

    :cond_1
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    aget-byte v5, p1, v5

    if-nez v5, :cond_3

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    if-ne v5, v7, :cond_3

    iput v9, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    aget-byte v5, p1, v5

    if-ne v5, v8, :cond_4

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v5, p1, v5

    if-nez v5, :cond_4

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    aget-byte v5, p1, v5

    if-ne v5, v8, :cond_5

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v5, p1, v5

    if-ne v5, v7, :cond_5

    const/4 v5, 0x3

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    aget-byte v0, p1, v5

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    add-int/lit8 v4, v5, 0x1

    const/4 v1, 0x0

    :goto_1
    const/4 v5, 0x5

    if-ge v1, v5, :cond_2

    shl-int v5, v9, v1

    int-to-byte v2, v5

    and-int v5, v0, v2

    int-to-byte v3, v5

    sparse-switch v3, :sswitch_data_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

    add-int/2addr v4, v5

    goto :goto_2

    :sswitch_1
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

    add-int/2addr v4, v5

    goto :goto_2

    :sswitch_2
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_DEVICE:I

    add-int/2addr v4, v5

    goto :goto_2

    :sswitch_3
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

    add-int/2addr v4, v5

    goto :goto_2

    :sswitch_4
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    aget-byte v5, p1, v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    iget v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v4, v5

    goto :goto_2

    :cond_5
    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private setTxPower([B)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_TYPE:I

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_INFO:I

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    aget-byte v0, p1, v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_INFO:I

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public byteToString([B)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const-string/jumbo v0, "0123456789abcdef"

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v1, p1, v3

    const-string/jumbo v5, "0123456789abcdef"

    and-int/lit16 v6, v1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "0123456789abcdef"

    and-int/lit8 v7, v1, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public describe()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ManufacturerType] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", [TxPower] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getTxPower()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", [DeviceCategory] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", [DeviceIconIndex] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceIconIndex()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", [DevicePrefix] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getPrefixName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", [Contact] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactHash()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactCrc()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", [Device ID] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", [BT Type] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getBluetoothType()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBluetoothType()B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getBluetoothType()B

    move-result v0

    return v0
.end method

.method public getContactCrc()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactCrc()[B

    move-result-object v0

    return-object v0
.end method

.method public getContactHash()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactHash()[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCategory()B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result v0

    return v0
.end method

.method public getDeviceIcon()I
    .locals 5

    const/4 v3, 0x0

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    return v3

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceIconIndex()B

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->getDeviceIcon(BB)I

    move-result v2

    return v2

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object v0

    aget-byte v2, v0, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    const/16 v2, 0xfb

    if-ne v1, v2, :cond_1

    sget v2, Lcom/android/settingslib/R$drawable;->list_ic_vr_controller:I

    return v2

    :cond_1
    const/16 v2, 0xfe

    if-eq v1, v2, :cond_2

    const/16 v2, 0xdb

    if-ne v1, v2, :cond_0

    :cond_2
    sget v2, Lcom/android/settingslib/R$drawable;->list_ic_gear_camera:I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDeviceId()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerRawData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    return-object v0
.end method

.method public getManufacturerType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    return v0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSSManufacturerType()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public isSupportFeature(B)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    aget-byte v0, v0, v1

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateDeviceInfo([B)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setManufacturerRawData([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setManufacturerType([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setTxPower([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceCategory([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceIconIndex([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceCategoryPrefix([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setContactHash([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setContactCrc([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceId([B)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setBluetoothType([B)V

    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ManufacturerData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceInfo :: describe data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->describe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
