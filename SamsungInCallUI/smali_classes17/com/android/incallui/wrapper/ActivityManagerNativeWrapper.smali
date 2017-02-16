.class public Lcom/android/incallui/wrapper/ActivityManagerNativeWrapper;
.super Ljava/lang/Object;
.source "ActivityManagerNativeWrapper.java"


# static fields
.field private static final CLASS_PATH:Ljava/lang/String; = "android.app.ActivityManagerNative"

.field private static final TAG:Ljava/lang/String; = "ActivityManagerNativeWrapper"

.field private static sMethodGetDefault:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-string v1, "android.app.ActivityManagerNative"

    invoke-static {v1}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 25
    .local v0, "baseClass":Ljava/lang/Class;
    const-string v1, "getDefault"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/wrapper/ActivityManagerNativeWrapper;->sMethodGetDefault:Ljava/lang/reflect/Method;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/incallui/wrapper/IActivityManagerWrapper;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 32
    sget-object v2, Lcom/android/incallui/wrapper/ActivityManagerNativeWrapper;->sMethodGetDefault:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 45
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return-object v1

    .line 39
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/incallui/wrapper/IActivityManagerWrapper;

    sget-object v3, Lcom/android/incallui/wrapper/ActivityManagerNativeWrapper;->sMethodGetDefault:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/incallui/wrapper/IActivityManagerWrapper;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .restart local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "ActivityManagerNativeWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke : "

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

    .line 41
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
