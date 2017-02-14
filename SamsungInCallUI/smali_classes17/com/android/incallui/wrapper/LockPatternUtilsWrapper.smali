.class public Lcom/android/incallui/wrapper/LockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "LockPatternUtilsWrapper.java"


# static fields
.field private static final CLASS_NAME_LOCK_PATTERN_UTILS:Ljava/lang/String; = "com.android.internal.widget.LockPatternUtils"

.field private static final IS_CARRIER_LOCK_PLUS_MODE_METHOD:Ljava/lang/String; = "isCarrierLockPlusEnabled"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsWrapper"

.field private static sLockPatternUtilsClass:Ljava/lang/Class;

.field private static sLockPatternUtilsConstructor:Ljava/lang/reflect/Constructor;

.field private static sMethodIsCarrierLockPlusEnabled:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v0}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/wrapper/LockPatternUtilsWrapper;->sLockPatternUtilsClass:Ljava/lang/Class;

    sget-object v0, Lcom/android/incallui/wrapper/LockPatternUtilsWrapper;->sLockPatternUtilsClass:Ljava/lang/Class;

    const-string v1, "isCarrierLockPlusEnabled"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/wrapper/LockPatternUtilsWrapper;->sMethodIsCarrierLockPlusEnabled:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/android/incallui/wrapper/LockPatternUtilsWrapper;->sLockPatternUtilsClass:Ljava/lang/Class;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/ReflectUtil;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/wrapper/LockPatternUtilsWrapper;->sLockPatternUtilsConstructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCarrierLockPlusEnabled(Landroid/content/Context;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v4, Lcom/android/incallui/wrapper/LockPatternUtilsWrapper;->sLockPatternUtilsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v0

    const-string v4, "LockPatternUtilsWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCarrierLockPlusEnabled: currentUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    sget-object v4, Lcom/android/incallui/wrapper/LockPatternUtilsWrapper;->sMethodIsCarrierLockPlusEnabled:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_1
    const-string v4, "LockPatternUtilsWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCarrierLockPlusEnabled: retValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_0
    move-exception v1

    const-string v4, "LockPatternUtilsWrapper"

    const-string v5, "Exception occured, instance was not created."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "LockPatternUtilsWrapper"

    const-string v5, "Exception occurred, invoking reflection is failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
