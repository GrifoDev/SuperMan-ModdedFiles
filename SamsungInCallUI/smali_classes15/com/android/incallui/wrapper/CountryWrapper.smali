.class public Lcom/android/incallui/wrapper/CountryWrapper;
.super Ljava/lang/Object;
.source "CountryWrapper.java"


# static fields
.field private static final CLASS_PATH:Ljava/lang/String; = "android.location.Country"

.field private static final TAG:Ljava/lang/String; = "CountryWrapper"

.field private static sMethodGetCountryIso:Ljava/lang/reflect/Method;


# instance fields
.field private mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-string v1, "android.location.Country"

    invoke-static {v1}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    .local v0, "baseClass":Ljava/lang/Class;
    const-string v1, "getCountryIso"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/wrapper/CountryWrapper;->sMethodGetCountryIso:Ljava/lang/reflect/Method;

    .line 24
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/wrapper/CountryWrapper;->mInstance:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/android/incallui/wrapper/CountryWrapper;->mInstance:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public final getCountryIso()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 31
    sget-object v1, Lcom/android/incallui/wrapper/CountryWrapper;->sMethodGetCountryIso:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 38
    :goto_0
    return-object v1

    .line 35
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/CountryWrapper;->sMethodGetCountryIso:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/incallui/wrapper/CountryWrapper;->mInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "CountryWrapper"

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

    move-object v1, v2

    .line 38
    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
