.class public Lcom/android/incallui/wrapper/ITelephonyWrapper;
.super Ljava/lang/Object;
.source "ITelephonyWrapper.java"


# static fields
.field private static final CLASS_PATH:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field private static final TAG:Ljava/lang/String; = "ITelephonyWrapper"

.field private static sMethodAsInterface:Ljava/lang/reflect/Method;

.field private static sMethodIsDomesticRoaming:Ljava/lang/reflect/Method;

.field private static sMethodIsInternationalRoaming:Ljava/lang/reflect/Method;


# instance fields
.field private mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-static {v2}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.telephony.ITelephony$Stub"

    invoke-static {v2}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/incallui/wrapper/ITelephonyWrapper;->sMethodAsInterface:Ljava/lang/reflect/Method;

    const-string v2, "IsDomesticRoaming"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/incallui/wrapper/ITelephonyWrapper;->sMethodIsDomesticRoaming:Ljava/lang/reflect/Method;

    const-string v2, "IsInternationalRoaming"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/incallui/wrapper/ITelephonyWrapper;->sMethodIsInternationalRoaming:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/wrapper/ITelephonyWrapper;->mInstance:Ljava/lang/Object;

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/incallui/wrapper/ITelephonyWrapper;
    .locals 7

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/wrapper/ITelephonyWrapper;->sMethodAsInterface:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/incallui/wrapper/ITelephonyWrapper;

    sget-object v3, Lcom/android/incallui/wrapper/ITelephonyWrapper;->sMethodAsInterface:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/incallui/wrapper/ITelephonyWrapper;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v2, "ITelephonyWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public IsDomesticRoaming()Z
    .locals 5

    const/4 v2, 0x0

    sget-object v1, Lcom/android/incallui/wrapper/ITelephonyWrapper;->sMethodIsDomesticRoaming:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/ITelephonyWrapper;->sMethodIsDomesticRoaming:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/incallui/wrapper/ITelephonyWrapper;->mInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "ITelephonyWrapper"

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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public IsInternationalRoaming()Z
    .locals 5

    const/4 v2, 0x0

    sget-object v1, Lcom/android/incallui/wrapper/ITelephonyWrapper;->sMethodIsInternationalRoaming:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/ITelephonyWrapper;->sMethodIsInternationalRoaming:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/incallui/wrapper/ITelephonyWrapper;->mInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "ITelephonyWrapper"

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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
