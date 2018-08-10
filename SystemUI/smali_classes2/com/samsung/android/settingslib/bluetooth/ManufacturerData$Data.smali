.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mBluetoothType:B

.field private mContactCrc:[B

.field private mContactHash:[B

.field private mDeviceCategory:B

.field private mDeviceCategoryPrefix:Ljava/lang/String;

.field private mDeviceIconIndex:B

.field private mDeviceId:[B

.field private mTxPower:I

.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;)B
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    return v0
.end method

.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    aput-byte v1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    aput-byte v1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    aput-byte v1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    aput-byte v1, v0, v2

    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    return-void
.end method


# virtual methods
.method public getBluetoothType()B
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    return v0
.end method

.method public getContactCrc()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    return-object v0
.end method

.method public getContactHash()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    return-object v0
.end method

.method public getDeviceCategory()B
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    return v0
.end method

.method public getDeviceIconIndex()B
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    return v0
.end method

.method public getDeviceId()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    return-object v0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTxPower()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    return v0
.end method

.method protected setBluetoothType(B)V
    .locals 0

    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    return-void
.end method

.method protected setContactCrc([BI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method protected setContactHash([BI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method protected setDeviceCategory(B)V
    .locals 0

    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    return-void
.end method

.method protected setDeviceIconIndex(B)V
    .locals 0

    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    return-void
.end method

.method protected setDeviceId([BI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method protected setPrefixName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    return-void
.end method

.method protected setTxPower(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    return-void
.end method
