.class public Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;
.super Ljava/lang/Object;


# static fields
.field private static final GENERIC_COMPUTER:S = 0x80s

.field private static final GENERIC_PHONE:S = 0x40s

.field private static final GENERIC_TAG:S = 0x200s

.field private static final GENERIC_WATCH:S = 0xc0s

.field private static final LOG_TAG:Ljava/lang/String; = "BTPreferenceWrapper"

.field protected static final MANUFACTURER_DEVICE_ID_SLD:B = -0x1t

.field protected static final MANUFACTURER_DEVICE_TYPE_SLD_L:B = 0x3t

.field protected static final MANUFACTURER_DEVICE_TYPE_SLD_R:B = 0x4t

.field protected static final MANUFACTURER_OFFSET_CONTACT_DEVICE_TYPE:I = 0xa

.field protected static final MANUFACTURER_OFFSET_CONTACT_SERVICE_ID:I = 0x5

.field protected static final MANUFACTURER_OFFSET_DEVICE_ICON:I = 0xb

.field protected static final MANUFACTURER_OFFSET_DEVICE_ID:I = 0x7

.field protected static final MANUFACTURER_OFFSET_DEVICE_TYPE:I = 0xa

.field private static final SPORT_WATCH:S = 0xc1s

.field private static final UUIDS_A2DP_SINK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private static final UUIDS_HFP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Landroid/os/ParcelUuid;

    const-string v1, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->UUIDS_HFP:Ljava/util/List;

    new-array v0, v4, [Landroid/os/ParcelUuid;

    const-string v1, "0000110B-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0000110D-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->UUIDS_A2DP_SINK:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppearanceDrawable(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 3

    const v0, 0x7f0201d4

    sparse-switch p1, :sswitch_data_0

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getAppearanceDrawable -> null resource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GALAXY Gear ("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getAppearanceDrawable -> list_ic_wearable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getAppearanceDrawable -> list_ic_mobile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201cf

    goto :goto_0

    :sswitch_1
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getAppearanceDrawable -> list_ic_laptop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201ce

    goto :goto_0

    :sswitch_2
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getAppearanceDrawable -> list_ic_wearable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getAppearanceDrawable -> list_ic_dongle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201c9

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_2
        0x200 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getBtClassDrawable(Landroid/bluetooth/BluetoothDevice;)I
    .locals 9

    const v1, 0x7f0201d3

    const v2, 0x7f0201d1

    const/16 v8, 0xa

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDeviceWrapper;->getAppearance(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDeviceWrapper;->GetManufacturerData(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_1

    array-length v0, v5

    if-le v0, v8, :cond_1

    invoke-static {v5}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->isContactType([B)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-byte v0, v5, v8

    if-lez v0, :cond_1

    invoke-static {v5}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->getDeviceTypeIndex([B)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v5, :cond_2

    array-length v0, v5

    if-le v0, v8, :cond_2

    const/4 v0, 0x5

    aget-byte v0, v5, v0

    const/16 v7, 0x9

    if-ne v0, v7, :cond_2

    aget-byte v0, v5, v8

    if-lez v0, :cond_2

    invoke-static {v5}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->getDeviceTypeIndex([B)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_3
    invoke-static {p0, v4}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->getAppearanceDrawable(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->PROFILE_A2DP:I

    invoke-static {v3, v0}, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getBtClassDrawable -> list_ic_sound_accessory_default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v2, 0x704

    if-ne v0, v2, :cond_4

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getBtClassDrawable -> list_ic_wearable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201d4

    goto :goto_0

    :cond_4
    :sswitch_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sget v2, Lcom/android/incallui/wrapper/BluetoothClassWrapper$Device;->COMPUTER_TABLET:I

    if-ne v0, v2, :cond_5

    const-string v0, "BTPreferenceWrapper"

    const-string v2, "getBtClassDrawable -> list_ic_tablet"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getBtClassDrawable -> list_ic_laptop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201ce

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->isTablet(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "BTPreferenceWrapper"

    const-string v2, "getBtClassDrawable -> list_ic_tablet"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_6
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getBtClassDrawable -> list_ic_mobile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201cf

    goto :goto_0

    :sswitch_3
    if-eqz v6, :cond_7

    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->getHeadsetDrawableByDeviceName(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->isSLDDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getBtClassDrawable -> list_ic_earpiece"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201ca

    goto/16 :goto_0

    :cond_8
    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->isGearCircle(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getBtClassDrawable -> list_ic_gear_circle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201cb

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v0, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->UUIDS_HFP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->UUIDS_A2DP_SINK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getBtClassDrawable UUIDS_HFP -> list_ic_sound_accessory_default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :cond_c
    sget v0, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->PROFILE_HEADSET:I

    invoke-static {v3, v0}, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getBtClassDrawable -> list_ic_mono_headset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201d0

    goto/16 :goto_0

    :cond_d
    if-eqz v4, :cond_f

    invoke-static {p0, v4}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->getAppearanceDrawable(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_e
    :goto_1
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getBtClassDrawable -> Invalid Bluetooth Device type!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :cond_f
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "BtClass is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
        0x400 -> :sswitch_3
        0x700 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDeviceTypeIndex([B)I
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/16 v2, 0xb

    if-eqz p0, :cond_b

    const/16 v1, 0xa

    aget-byte v1, p0, v1

    sparse-switch v1, :sswitch_data_0

    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> null resource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_mobile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201cf

    goto :goto_0

    :sswitch_1
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_tablet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201d3

    goto :goto_0

    :sswitch_2
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_wearable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201d4

    goto :goto_0

    :sswitch_3
    aget-byte v1, p0, v2

    if-ne v1, v3, :cond_1

    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> No resource available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    aget-byte v0, p0, v2

    if-ne v0, v4, :cond_2

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_laptop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201ce

    goto :goto_0

    :cond_2
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_laptop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201ce

    goto :goto_0

    :sswitch_4
    aget-byte v1, p0, v2

    if-eq v1, v3, :cond_0

    aget-byte v1, p0, v2

    if-eq v1, v4, :cond_0

    aget-byte v1, p0, v2

    if-eq v1, v5, :cond_0

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_accessory_default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201c5

    goto :goto_0

    :sswitch_5
    aget-byte v0, p0, v2

    if-ne v0, v3, :cond_3

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_soundbar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201d2

    goto :goto_0

    :cond_3
    aget-byte v0, p0, v2

    if-ne v0, v4, :cond_4

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_av360r7"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201c6

    goto :goto_0

    :cond_4
    aget-byte v0, p0, v2

    if-ne v0, v5, :cond_5

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_dlna_audio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201c8

    goto/16 :goto_0

    :cond_5
    aget-byte v0, p0, v2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_blueray_player"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201c7

    goto/16 :goto_0

    :cond_6
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_dlna_audio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201c8

    goto/16 :goto_0

    :sswitch_6
    aget-byte v0, p0, v2

    if-ne v0, v3, :cond_7

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_headset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201cc

    goto/16 :goto_0

    :cond_7
    aget-byte v0, p0, v2

    if-ne v0, v4, :cond_8

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_mono_headset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201d0

    goto/16 :goto_0

    :cond_8
    aget-byte v0, p0, v2

    if-ne v0, v5, :cond_9

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_iconx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201cd

    goto/16 :goto_0

    :cond_9
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_headset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201cc

    goto/16 :goto_0

    :sswitch_7
    aget-byte v0, p0, v2

    if-ne v0, v3, :cond_a

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_dlna_audio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201c8

    goto/16 :goto_0

    :cond_a
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getDeviceTypeIndex -> list_ic_sound_accessory_default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201d1

    goto/16 :goto_0

    :cond_b
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> null resource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x7 -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
    .end sparse-switch
.end method

.method private static getHeadsetDrawableByDeviceName(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTPreferenceWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeadsetDrawableByDeviceName - device Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SAMSUNG LEVEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getHeadsetDrawableByDeviceName -> list_ic_dlna_audio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201c8

    :goto_0
    return v0

    :cond_0
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getHeadsetDrawableByDeviceName -> list_ic_headset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201cc

    goto :goto_0

    :cond_1
    const-string v1, "GEAR ICONX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->isGearCircle(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getHeadsetDrawableByDeviceName -> list_ic_iconx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0201cd

    goto :goto_0

    :cond_2
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getHeadsetDrawableByDeviceName -> Cannot recognize BT type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContactType([B)Z
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGearCircle(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDeviceWrapper;->GetManufacturerData(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    array-length v4, v2

    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x7

    aget-byte v4, v2, v4

    if-nez v4, :cond_1

    const/16 v4, 0x8

    aget-byte v2, v2, v4

    if-ne v2, v1, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x404

    if-ne v2, v3, :cond_1

    const-string v0, "BTPreferenceWrapper"

    const-string v2, "isGearCircle :: true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "isGearCircle :: false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isSLDDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/16 v3, 0xa

    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDeviceWrapper;->GetManufacturerData(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    aget-byte v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    aget-byte v0, v0, v3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "fetchIsSLDDevice :: true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "fetchIsSLDDevice :: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTablet(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "fetchIsTablet ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDeviceWrapper;->GetManufacturerData(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    aget-byte v1, v0, v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "BTPreferenceWrapper"

    const-string v1, "fetchIsTablet :: true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "fetchIsTablet :: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
