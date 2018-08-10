.class Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;
.super Ljava/lang/Object;
.source "UsbProfileGroupSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbProfileGroupSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceFilter"
.end annotation


# instance fields
.field public final mClass:I

.field public final mManufacturerName:Ljava/lang/String;

.field public final mProductId:I

.field public final mProductName:Ljava/lang/String;

.field public final mProtocol:I

.field public final mSerialNumber:Ljava/lang/String;

.field public final mSubclass:I

.field public final mVendorId:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    iput p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    iput p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    iput p4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    iput p5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    iput-object p6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    return-void
.end method

.method private matches(III)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    if-ne p1, v2, :cond_4

    :cond_0
    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    if-ne p2, v2, :cond_4

    :cond_1
    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    if-ne p3, v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_a

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v1, "manufacturer-name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v7, v16

    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "product-name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v8, v16

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "serial-number"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v9, v16

    goto :goto_1

    :cond_3
    const/4 v13, -0x1

    const/16 v15, 0xa

    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v1, v0, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v17, 0x30

    move/from16 v0, v17

    if-ne v1, v0, :cond_5

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v17, 0x78

    move/from16 v0, v17

    if-eq v1, v0, :cond_4

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v17, 0x58

    move/from16 v0, v17

    if-ne v1, v0, :cond_5

    :cond_4
    const/16 v15, 0x10

    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :cond_5
    :try_start_0
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    const-string/jumbo v1, "vendor-id"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v13

    goto :goto_1

    :catch_0
    move-exception v11

    invoke-static {}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "invalid number for field "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v1, "product-id"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v3, v13

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v1, "class"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v4, v13

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v1, "subclass"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v5, v13

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v1, "protocol"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v6, v13

    goto/16 :goto_1

    :cond_a
    new-instance v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public contains(Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;)Z
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_0

    iget v0, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v0, v3, :cond_1

    iget v0, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    return v2

    :cond_4
    iget v0, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    iget v1, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    iget v2, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->matches(III)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-ne v2, v3, :cond_1

    :cond_0
    return v4

    :cond_1
    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v2, v3, :cond_0

    instance-of v2, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;

    if-eqz v2, :cond_f

    move-object v1, p1

    check-cast v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;

    iget v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v2, v3, :cond_3

    :cond_2
    return v4

    :cond_3
    iget v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_4
    return v4

    :cond_5
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_7
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_8
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_9
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_a
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_d

    :cond_b
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_d

    :cond_c
    iget-object v2, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e

    :cond_d
    return v4

    :cond_e
    return v5

    :cond_f
    instance-of v2, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v2, :cond_1d

    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-ne v2, v3, :cond_10

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v2, v3, :cond_11

    :cond_10
    return v4

    :cond_11
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    if-ne v2, v3, :cond_10

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    if-ne v2, v3, :cond_10

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    :cond_12
    return v4

    :cond_13
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v2, :cond_14

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    :cond_14
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    :cond_15
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v2, :cond_16

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    :cond_16
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    :cond_17
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v2, :cond_18

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    :cond_18
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1b

    :cond_19
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1b

    :cond_1a
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1c

    :cond_1b
    return v4

    :cond_1c
    return v5

    :cond_1d
    return v4
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public matches(Landroid/hardware/usb/UsbDevice;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v3, v5, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    iget v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v3, v4, :cond_0

    return v6

    :cond_0
    iget v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v3, v5, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    iget v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v3, v4, :cond_1

    return v6

    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    return v6

    :cond_2
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    return v6

    :cond_3
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    return v6

    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    return v6

    :cond_5
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    return v6

    :cond_6
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    return v6

    :cond_7
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->matches(III)Z

    move-result v3

    if-eqz v3, :cond_8

    return v7

    :cond_8
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_a

    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->matches(III)Z

    move-result v3

    if-eqz v3, :cond_9

    return v7

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    return v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeviceFilter[mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mSubclass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mManufacturerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mProductName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mSerialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "usb-device"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_0

    const-string/jumbo v0, "vendor-id"

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mVendorId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    if-eq v0, v3, :cond_1

    const-string/jumbo v0, "product-id"

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    if-eq v0, v3, :cond_2

    const-string/jumbo v0, "class"

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mClass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v0, v3, :cond_3

    const-string/jumbo v0, "subclass"

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSubclass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v0, v3, :cond_4

    const-string/jumbo v0, "protocol"

    iget v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "manufacturer-name"

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "product-name"

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "serial-number"

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    const-string/jumbo v0, "usb-device"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
