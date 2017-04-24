.class public Lcom/android/incallui/wrapper/TelephonyManagerWrapper;
.super Ljava/lang/Object;
.source "TelephonyManagerWrapper.java"


# static fields
.field public static NETWORK_TYPE_IWLAN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManagerWrapper"

.field private static sGetSubIdForPhoneAccount:Ljava/lang/reflect/Method;


# instance fields
.field private mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v2, 0x12

    sput v2, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->NETWORK_TYPE_IWLAN:I

    :try_start_0
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string v3, "NETWORK_TYPE_IWLAN"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->NETWORK_TYPE_IWLAN:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string v3, "getSubIdForPhoneAccount"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/telecom/PhoneAccount;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->sGetSubIdForPhoneAccount:Ljava/lang/reflect/Method;

    return-void

    :catch_0
    move-exception v0

    const-string v2, "TelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NETWORK_TYPE_IWLAN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->mInstance:Ljava/lang/Object;

    return-void
.end method

.method public static getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/TelephonyManagerWrapper;
    .locals 2

    new-instance v0, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 6

    const/4 v2, -0x1

    sget-object v1, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->sGetSubIdForPhoneAccount:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->mInstance:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->sGetSubIdForPhoneAccount:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->mInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "TelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubIdForPhoneAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
