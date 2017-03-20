.class public Lcom/android/incallui/wrapper/ServiceStateWrapper;
.super Ljava/lang/Object;
.source "ServiceStateWrapper.java"


# static fields
.field private static final CLASS_PATH:Ljava/lang/String; = "android.telephony.ServiceState"

.field private static final LOG_TAG:Ljava/lang/String; = "ServiceStateWrapper"

.field private static sMethodcanCellularVoiceService:Ljava/lang/reflect/Method;


# instance fields
.field private mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-string v1, "android.telephony.ServiceState"

    invoke-static {v1}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 17
    .local v0, "baseClass":Ljava/lang/Class;
    const-string v1, "canCellularVoiceService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/wrapper/ServiceStateWrapper;->sMethodcanCellularVoiceService:Ljava/lang/reflect/Method;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/wrapper/ServiceStateWrapper;->mInstance:Ljava/lang/Object;

    return-void
.end method

.method public static canCellularVoiceService(Landroid/telephony/ServiceState;)Z
    .locals 5
    .param p0, "instance"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x0

    .line 23
    sget-object v1, Lcom/android/incallui/wrapper/ServiceStateWrapper;->sMethodcanCellularVoiceService:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v1, v2

    .line 29
    :goto_0
    return v1

    .line 26
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/ServiceStateWrapper;->sMethodcanCellularVoiceService:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "ServiceStateWrapper"

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

    .line 29
    goto :goto_0

    .line 27
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
