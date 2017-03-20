.class public Lcom/android/incallui/wrapper/BluetoothClassWrapper;
.super Ljava/lang/Object;
.source "BluetoothClassWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/wrapper/BluetoothClassWrapper$Device;
    }
.end annotation


# static fields
.field private static final CLASS_PATH:Ljava/lang/String; = "android.bluetooth.BluetoothClass"

.field private static final LOG_TAG:Ljava/lang/String; = "BluetoothClassWrapper"

.field public static PROFILE_A2DP:I = 0x0

.field public static final PROFILE_A2DP_DEFAULT:I = 0x1

.field public static PROFILE_HEADSET:I

.field public static final PROFILE_HEADSET_DEFAULT:I

.field private static baseClass:Ljava/lang/Class;

.field private static sMethodDoesClassMatch:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 39
    sput-object v7, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->baseClass:Ljava/lang/Class;

    .line 42
    const-string v3, "android.bluetooth.BluetoothClass"

    invoke-static {v3}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->baseClass:Ljava/lang/Class;

    .line 44
    sget-object v3, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->baseClass:Ljava/lang/Class;

    const-string v4, "doesClassMatch"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->sMethodDoesClassMatch:Ljava/lang/reflect/Method;

    .line 46
    const/4 v1, 0x0

    .line 49
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v3, Landroid/bluetooth/BluetoothClass$Device;

    const-string v4, "PROFILE_HEADSET"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 54
    :goto_0
    if-eqz v1, :cond_0

    .line 55
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7, v3, v1}, Lcom/android/incallui/wrapper/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 56
    .local v2, "fieldValue":I
    const-string v3, "BluetoothClassWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReflectUtil.getFieldValue(), PROFILE_HEADSET : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sput v2, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->PROFILE_HEADSET:I

    .line 64
    .end local v2    # "fieldValue":I
    :goto_1
    :try_start_1
    const-class v3, Landroid/bluetooth/BluetoothClass$Device;

    const-string v4, "PROFILE_A2DP"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 69
    :goto_2
    if-eqz v1, :cond_1

    .line 70
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7, v3, v1}, Lcom/android/incallui/wrapper/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 71
    .restart local v2    # "fieldValue":I
    const-string v3, "BluetoothClassWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReflectUtil.getFieldValue(), PROFILE_A2DP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sput v2, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->PROFILE_A2DP:I

    .line 76
    .end local v2    # "fieldValue":I
    :goto_3
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    const/4 v1, 0x0

    .line 52
    const-string v3, "BluetoothClassWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getField: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sput v9, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->PROFILE_HEADSET:I

    goto :goto_1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_5
    const/4 v1, 0x0

    .line 67
    const-string v3, "BluetoothClassWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getField: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sput v10, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->PROFILE_A2DP:I

    goto :goto_3

    .line 65
    :catch_2
    move-exception v0

    goto :goto_5

    .line 50
    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesClassMatch(Landroid/bluetooth/BluetoothClass;I)Z
    .locals 6
    .param p0, "instance"    # Landroid/bluetooth/BluetoothClass;
    .param p1, "profile"    # I

    .prologue
    const/4 v1, 0x0

    .line 95
    sget-object v2, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->sMethodDoesClassMatch:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    const/4 v1, 0x0

    .line 100
    .local v1, "returnVal":Z
    :try_start_0
    sget-object v2, Lcom/android/incallui/wrapper/BluetoothClassWrapper;->sMethodDoesClassMatch:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 101
    const-string v2, "BluetoothClassWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success sMethodDoesClassMatch, Match : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "BluetoothClassWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getPeripheralMinorClass invoke : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
