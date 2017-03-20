.class public Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;
.super Ljava/lang/Object;
.source "BluetoothDevicePreferenceWrapper.java"


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

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-array v0, v4, [Landroid/os/ParcelUuid;

    const-string v1, "00001108-0000-1000-8000-00805F9B34FB"

    .line 64
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0000111E-0000-1000-8000-00805F9B34FB"

    .line 65
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    aput-object v1, v0, v3

    .line 63
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->UUIDS_HFP:Ljava/util/List;

    .line 71
    new-array v0, v4, [Landroid/os/ParcelUuid;

    const-string v1, "0000110B-0000-1000-8000-00805F9B34FB"

    .line 72
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0000110D-0000-1000-8000-00805F9B34FB"

    .line 73
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    aput-object v1, v0, v3

    .line 71
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->UUIDS_A2DP_SINK:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppearanceDrawable(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "appearance"    # I

    .prologue
    const v0, 0x7f02015d

    .line 306
    sparse-switch p1, :sswitch_data_0

    .line 330
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getAppearanceDrawable -> null resource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 308
    :sswitch_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GALAXY Gear ("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getAppearanceDrawable -> list_ic_wearable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_0
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getAppearanceDrawable -> list_ic_mobile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const v0, 0x7f020158

    goto :goto_0

    .line 316
    :sswitch_1
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getAppearanceDrawable -> list_ic_laptop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const v0, 0x7f020157

    goto :goto_0

    .line 321
    :sswitch_2
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getAppearanceDrawable -> list_ic_wearable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :sswitch_3
    const-string v0, "BTPreferenceWrapper"

    const-string v1, "getAppearanceDrawable -> list_ic_dongle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const v0, 0x7f020152

    goto :goto_0

    .line 306
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
    .locals 13
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const v7, 0x7f02015c

    const v9, 0x7f02015a

    const/16 v12, 0xa

    .line 81
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 82
    .local v1, "btClass":Landroid/bluetooth/BluetoothClass;
    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDeviceWrapper;->getAppearance(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 83
    .local v0, "appearance":I
    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDeviceWrapper;->GetManufacturerData(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    .line 84
    .local v5, "manufacturerData":[B
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "mDeviceName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 87
    .local v6, "resIcon":I
    if-eqz v5, :cond_1

    array-length v10, v5

    if-le v10, v12, :cond_1

    invoke-static {v5}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->isContactType([B)Z

    move-result v10

    if-eqz v10, :cond_1

    aget-byte v10, v5, v12

    if-lez v10, :cond_1

    .line 89
    invoke-static {v5}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->getDeviceTypeIndex([B)I

    move-result v6

    .line 90
    if-eqz v6, :cond_1

    move v7, v6

    .line 181
    :cond_0
    :goto_0
    return v7

    .line 93
    :cond_1
    if-eqz v5, :cond_2

    array-length v10, v5

    if-le v10, v12, :cond_2

    const/4 v10, 0x5

    aget-byte v10, v5, v10

    const/16 v11, 0x9

    if-ne v10, v11, :cond_2

    aget-byte v10, v5, v12

    if-lez v10, :cond_2

    .line 96
    invoke-static {v5}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->getDeviceTypeIndex([B)I

    move-result v6

    .line 97
    if-eqz v6, :cond_2

    move v7, v6

    goto :goto_0

    .line 100
    :cond_2
    if-eqz v1, :cond_e

    .line 101
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 157
    :cond_3
    invoke-static {p0, v0}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->getAppearanceDrawable(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v6

    .line 158
    if-eqz v6, :cond_c

    move v7, v6

    .line 159
    goto :goto_0

    .line 103
    :sswitch_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v9

    const/16 v10, 0x704

    if-ne v9, v10, :cond_4

    .line 104
    const-string v9, "BTPreferenceWrapper"

    const-string v10, "getBtClassDrawable -> list_ic_wearable"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const v7, 0x7f02015d

    goto :goto_0

    .line 108
    :cond_4
    :sswitch_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v9

    sget v10, Lcom/android/incallui/wrapper/BluetoothClassWrapper$Device;->COMPUTER_TABLET:I

    if-ne v9, v10, :cond_5

    .line 109
    const-string v9, "BTPreferenceWrapper"

    const-string v10, "getBtClassDrawable -> list_ic_tablet"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_5
    const-string v9, "BTPreferenceWrapper"

    const-string v10, "getBtClassDrawable -> list_ic_laptop"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const v7, 0x7f020157

    goto :goto_0

    .line 116
    :sswitch_2
    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->isTablet(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 117
    const-string v9, "BTPreferenceWrapper"

    const-string v10, "getBtClassDrawable -> list_ic_tablet"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_6
    const-string v9, "BTPreferenceWrapper"

    const-string v10, "getBtClassDrawable -> list_ic_mobile"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const v7, 0x7f020158

    goto :goto_0

    .line 124
    :sswitch_3
    if-eqz v4, :cond_7

    .line 125
    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->getHeadsetDrawableByDeviceName(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 126
    if-eqz v6, :cond_7

    move v7, v6

    .line 127
    goto :goto_0

    .line 130
    :cond_7
    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->isSLDDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 131
    const-string v9, "BTPreferenceWrapper"

    const-string v10, "getBtClassDrawable -> list_ic_earpiece"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const v7, 0x7f020153

    goto/16 :goto_0

    .line 133
    :cond_8
    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->isGearCircle(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 134
    const-string v9, "BTPreferenceWrapper"

    const-string v10, "getBtClassDrawable -> list_ic_gear_circle"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const v7, 0x7f020154

    goto/16 :goto_0

    .line 141
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 142
    .local v8, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    sget-object v10, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->UUIDS_HFP:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 143
    .local v3, "isHFP":Landroid/os/ParcelUuid;
    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 144
    sget-object v11, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->UUIDS_A2DP_SINK:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 145
    .local v2, "isA2DP":Landroid/os/ParcelUuid;
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 146
    const-string v10, "BTPreferenceWrapper"

    const-string v11, "getBtClassDrawable UUIDS_HFP -> list_ic_sound_accessory_default"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 147
    goto/16 :goto_0

    .line 162
    .end local v2    # "isA2DP":Landroid/os/ParcelUuid;
    .end local v3    # "isHFP":Landroid/os/ParcelUuid;
    .end local v8    # "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_c
    sget v10, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->PROFILE_A2DP:I

    invoke-static {v1, v10}, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 163
    const-string v10, "BTPreferenceWrapper"

    const-string v11, "getBtClassDrawable -> list_ic_sound_accessory_default"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 164
    goto/16 :goto_0

    .line 165
    :cond_d
    sget v10, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->PROFILE_HEADSET:I

    invoke-static {v1, v10}, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 166
    const-string v9, "BTPreferenceWrapper"

    const-string v10, "getBtClassDrawable -> list_ic_mono_headset"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const v7, 0x7f020159

    goto/16 :goto_0

    .line 170
    :cond_e
    if-eqz v0, :cond_10

    .line 171
    invoke-static {p0, v0}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->getAppearanceDrawable(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v7

    .line 172
    .local v7, "ret":I
    if-nez v7, :cond_0

    .line 180
    .end local v7    # "ret":I
    :cond_f
    :goto_1
    const-string v10, "BTPreferenceWrapper"

    const-string v11, "getBtClassDrawable -> Invalid Bluetooth Device type!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 181
    goto/16 :goto_0

    .line 176
    :cond_10
    const-string v10, "BTPreferenceWrapper"

    const-string v11, "BtClass is null"

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
        0x400 -> :sswitch_3
        0x700 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDeviceTypeIndex([B)I
    .locals 7
    .param p0, "mdType"    # [B

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v3, 0xb

    .line 211
    if-eqz p0, :cond_b

    .line 212
    const/16 v0, 0xa

    .line 214
    .local v0, "deviceType":I
    aget-byte v2, p0, v0

    sparse-switch v2, :sswitch_data_0

    .line 293
    const-string v2, "BTPreferenceWrapper"

    const-string v3, "getDeviceTypeIndex -> null resource"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v0    # "deviceType":I
    :cond_0
    :goto_0
    return v1

    .line 216
    .restart local v0    # "deviceType":I
    :sswitch_0
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_mobile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const v1, 0x7f020158

    goto :goto_0

    .line 220
    :sswitch_1
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_tablet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const v1, 0x7f02015c

    goto :goto_0

    .line 224
    :sswitch_2
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_wearable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const v1, 0x7f02015d

    goto :goto_0

    .line 228
    :sswitch_3
    aget-byte v2, p0, v3

    if-ne v2, v4, :cond_1

    .line 229
    const-string v2, "BTPreferenceWrapper"

    const-string v3, "getDeviceTypeIndex -> No resource available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_1
    aget-byte v1, p0, v3

    if-ne v1, v5, :cond_2

    .line 232
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_laptop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const v1, 0x7f020157

    goto :goto_0

    .line 235
    :cond_2
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_laptop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const v1, 0x7f020157

    goto :goto_0

    .line 240
    :sswitch_4
    aget-byte v2, p0, v3

    if-eq v2, v4, :cond_0

    .line 242
    aget-byte v2, p0, v3

    if-eq v2, v5, :cond_0

    .line 244
    aget-byte v2, p0, v3

    if-eq v2, v6, :cond_0

    .line 247
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_accessory_default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const v1, 0x7f02014e

    goto :goto_0

    .line 252
    :sswitch_5
    aget-byte v1, p0, v3

    if-ne v1, v4, :cond_3

    .line 253
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_soundbar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const v1, 0x7f02015b

    goto :goto_0

    .line 255
    :cond_3
    aget-byte v1, p0, v3

    if-ne v1, v5, :cond_4

    .line 256
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_av360r7"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const v1, 0x7f02014f

    goto :goto_0

    .line 258
    :cond_4
    aget-byte v1, p0, v3

    if-ne v1, v6, :cond_5

    .line 259
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_dlna_audio"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const v1, 0x7f020151

    goto/16 :goto_0

    .line 261
    :cond_5
    aget-byte v1, p0, v3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 262
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_blueray_player"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const v1, 0x7f020150

    goto/16 :goto_0

    .line 265
    :cond_6
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_dlna_audio"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const v1, 0x7f020151

    goto/16 :goto_0

    .line 270
    :sswitch_6
    aget-byte v1, p0, v3

    if-ne v1, v4, :cond_7

    .line 271
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_headset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const v1, 0x7f020155

    goto/16 :goto_0

    .line 273
    :cond_7
    aget-byte v1, p0, v3

    if-ne v1, v5, :cond_8

    .line 274
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_mono_headset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const v1, 0x7f020159

    goto/16 :goto_0

    .line 276
    :cond_8
    aget-byte v1, p0, v3

    if-ne v1, v6, :cond_9

    .line 277
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_iconx"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const v1, 0x7f020156

    goto/16 :goto_0

    .line 280
    :cond_9
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_headset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const v1, 0x7f020155

    goto/16 :goto_0

    .line 285
    :sswitch_7
    aget-byte v1, p0, v3

    if-ne v1, v4, :cond_a

    .line 286
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_dlna_audio"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const v1, 0x7f020151

    goto/16 :goto_0

    .line 289
    :cond_a
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getDeviceTypeIndex -> list_ic_sound_accessory_default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const v1, 0x7f02015a

    goto/16 :goto_0

    .line 297
    .end local v0    # "deviceType":I
    :cond_b
    const-string v2, "BTPreferenceWrapper"

    const-string v3, "getDeviceTypeIndex -> null resource"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
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
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "deviceName":Ljava/lang/String;
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

    .line 191
    const-string v1, "SAMSUNG LEVEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    const-string v1, "BOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getHeadsetDrawableByDeviceName -> list_ic_dlna_audio"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const v1, 0x7f020151

    .line 203
    :goto_0
    return v1

    .line 196
    :cond_0
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getHeadsetDrawableByDeviceName -> list_ic_headset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const v1, 0x7f020155

    goto :goto_0

    .line 198
    :cond_1
    const-string v1, "GEAR ICONX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDevicePreferenceWrapper;->isGearCircle(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getHeadsetDrawableByDeviceName -> list_ic_iconx"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const v1, 0x7f020156

    goto :goto_0

    .line 202
    :cond_2
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "getHeadsetDrawableByDeviceName -> Cannot recognize BT type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isContactType([B)Z
    .locals 2
    .param p0, "gm"    # [B

    .prologue
    .line 398
    if-eqz p0, :cond_0

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 399
    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGearCircle(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDeviceWrapper;->GetManufacturerData(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    .line 378
    .local v1, "manufacturerData":[B
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 380
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 381
    array-length v4, v1

    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    .line 390
    :goto_0
    return v2

    .line 382
    :cond_0
    const/4 v4, 0x7

    aget-byte v4, v1, v4

    if-nez v4, :cond_1

    const/16 v4, 0x8

    aget-byte v4, v1, v4

    if-ne v4, v3, :cond_1

    .line 384
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    const/16 v5, 0x404

    if-ne v4, v5, :cond_1

    .line 385
    const-string v2, "BTPreferenceWrapper"

    const-string v4, "isGearCircle :: true"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 386
    goto :goto_0

    .line 389
    :cond_1
    const-string v3, "BTPreferenceWrapper"

    const-string v4, "isGearCircle :: false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isSLDDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v3, 0xa

    .line 339
    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDeviceWrapper;->GetManufacturerData(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    .line 340
    .local v0, "manufacturerData":[B
    if-eqz v0, :cond_1

    .line 341
    const/4 v1, 0x7

    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    aget-byte v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 343
    aget-byte v1, v0, v3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    aget-byte v1, v0, v3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 345
    :cond_0
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "fetchIsSLDDevice :: true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x1

    .line 351
    :goto_0
    return v1

    .line 350
    :cond_1
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "fetchIsSLDDevice :: false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTablet(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 359
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "fetchIsTablet ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {p0}, Lcom/android/incallui/wrapper/BluetoothDeviceWrapper;->GetManufacturerData(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    .line 361
    .local v0, "manufacturerData":[B
    if-eqz v0, :cond_0

    .line 362
    const/4 v1, 0x5

    aget-byte v1, v0, v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/16 v1, 0xa

    aget-byte v1, v0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 364
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "fetchIsTablet :: true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v1, 0x1

    .line 369
    :goto_0
    return v1

    .line 368
    :cond_0
    const-string v1, "BTPreferenceWrapper"

    const-string v2, "fetchIsTablet :: false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v1, 0x0

    goto :goto_0
.end method
