.class public Lcom/android/incallui/wrapper/BluetoothClassWrapper$Device;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/wrapper/BluetoothClassWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation


# static fields
.field static final BLUETOOTH_DEVICE_TYPE_ACCESSORY:B = 0x5t

.field static final BLUETOOTH_DEVICE_TYPE_AIRPURIFIER:B = 0xft

.field static final BLUETOOTH_DEVICE_TYPE_AV:B = 0x7t

.field static final BLUETOOTH_DEVICE_TYPE_CAMCORDER:B = 0x1bt

.field static final BLUETOOTH_DEVICE_TYPE_CAMERA:B = 0x1at

.field static final BLUETOOTH_DEVICE_TYPE_DRYER:B = 0xbt

.field static final BLUETOOTH_DEVICE_TYPE_EBOARD:B = 0x18t

.field static final BLUETOOTH_DEVICE_TYPE_FLOOR_AC:B = 0xct

.field static final BLUETOOTH_DEVICE_TYPE_HEADPHONE:B = 0x15t

.field static final BLUETOOTH_DEVICE_TYPE_IOT:B = 0x19t

.field static final BLUETOOTH_DEVICE_TYPE_MONITOR:B = 0x17t

.field static final BLUETOOTH_DEVICE_TYPE_OVEN:B = 0x10t

.field static final BLUETOOTH_DEVICE_TYPE_PC:B = 0x4t

.field static final BLUETOOTH_DEVICE_TYPE_PHONE:B = 0x1t

.field static final BLUETOOTH_DEVICE_TYPE_PRINTER:B = 0x14t

.field static final BLUETOOTH_DEVICE_TYPE_RANGE:B = 0x11t

.field static final BLUETOOTH_DEVICE_TYPE_REFRIGERATOR:B = 0x9t

.field static final BLUETOOTH_DEVICE_TYPE_ROBOT_VACUUM:B = 0x12t

.field static final BLUETOOTH_DEVICE_TYPE_ROOM_AC:B = 0xdt

.field static final BLUETOOTH_DEVICE_TYPE_SIGNAGE:B = 0x8t

.field static final BLUETOOTH_DEVICE_TYPE_SMART_HOME:B = 0x13t

.field static final BLUETOOTH_DEVICE_TYPE_SPEAKER:B = 0x16t

.field static final BLUETOOTH_DEVICE_TYPE_SYSTEM_AC:B = 0xet

.field static final BLUETOOTH_DEVICE_TYPE_TABLET:B = 0x2t

.field static final BLUETOOTH_DEVICE_TYPE_TV:B = 0x6t

.field static final BLUETOOTH_DEVICE_TYPE_WASHER:B = 0xat

.field static final BLUETOOTH_DEVICE_TYPE_WEARABLE:B = 0x3t

.field public static final COMPUTER_TABLET:I

.field private static final COMPUTER_TABLET_DEFAULT:I = 0x11c

.field private static final IMAGING_CAMERA_DEFAULT:I = 0x620

.field static final MANUFACTURER_OFFSET_DEVICE_ICON:I = 0xb

.field static final MANUFACTURER_OFFSET_DEVICE_TYPE:I = 0xa

.field private static final PERIPHERAL_GAMEPAD_DEFAULT:I = 0x508

.field private static final PERIPHERAL_JOYSTICK_DEFAULT:I = 0x504

.field private static final PERIPHERAL_KEYBOARD_DEFAULT:I = 0x540

.field private static final PERIPHERAL_KEYBOARD_POINTING_DEFAULT:I = 0x5c0

.field private static final PERIPHERAL_POINTING_DEFAULT:I = 0x580

.field private static final PERIPHERAL_REMOTE_CONTROL_DEFAULT:I = 0x50c


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothClass$Device;

    const-string v2, "COMPUTER_TABLET"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/incallui/wrapper/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "BluetoothClassWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReflectUtil.getFieldValue(), COMPUTER_TABLET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v0, Lcom/android/incallui/wrapper/BluetoothClassWrapper$Device;->COMPUTER_TABLET:I

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :goto_2
    const-string v2, "BluetoothClassWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getField: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11c

    sput v0, Lcom/android/incallui/wrapper/BluetoothClassWrapper$Device;->COMPUTER_TABLET:I

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
