.class public Lcom/android/incallui/wrapper/BluetoothDevicePickerWrapper;
.super Ljava/lang/Object;


# static fields
.field private static final CLASS_PATH:Ljava/lang/String; = "android.bluetooth.BluetoothDevicePicker"

.field public static final FILTER_TYPE_AUDIO_AG:I

.field private static final FILTER_TYPE_AUDIO_AG_DEFAULT:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "BluetoothDevicePickerWrapper"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.bluetooth.BluetoothDevicePicker"

    const-string v1, "FILTER_TYPE_AUDIO_AG"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getDeclaredField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/incallui/wrapper/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "BluetoothDevicePickerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReflectUtil.getFieldValue(), FILTER_TYPE_AUDIO_AG : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v0, Lcom/android/incallui/wrapper/BluetoothDevicePickerWrapper;->FILTER_TYPE_AUDIO_AG:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    sput v0, Lcom/android/incallui/wrapper/BluetoothDevicePickerWrapper;->FILTER_TYPE_AUDIO_AG:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
