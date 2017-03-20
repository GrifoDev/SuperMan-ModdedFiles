.class public Lcom/android/incallui/wrapper/BluetoothDevicePickerWrapper;
.super Ljava/lang/Object;
.source "BluetoothDevicePickerWrapper.java"


# static fields
.field private static final CLASS_PATH:Ljava/lang/String; = "android.bluetooth.BluetoothDevicePicker"

.field public static final FILTER_TYPE_AUDIO_AG:I

.field private static final FILTER_TYPE_AUDIO_AG_DEFAULT:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "BluetoothDevicePickerWrapper"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "field":Ljava/lang/reflect/Field;
    const-string v2, "android.bluetooth.BluetoothDevicePicker"

    const-string v3, "FILTER_TYPE_AUDIO_AG"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getDeclaredField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/incallui/wrapper/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 40
    .local v1, "fieldValue":I
    const-string v2, "BluetoothDevicePickerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReflectUtil.getFieldValue(), FILTER_TYPE_AUDIO_AG : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sput v1, Lcom/android/incallui/wrapper/BluetoothDevicePickerWrapper;->FILTER_TYPE_AUDIO_AG:I

    .line 45
    .end local v1    # "fieldValue":I
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v2, 0x5

    sput v2, Lcom/android/incallui/wrapper/BluetoothDevicePickerWrapper;->FILTER_TYPE_AUDIO_AG:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
