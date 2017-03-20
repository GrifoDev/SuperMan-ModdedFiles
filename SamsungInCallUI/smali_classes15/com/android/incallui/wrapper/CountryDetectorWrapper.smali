.class public Lcom/android/incallui/wrapper/CountryDetectorWrapper;
.super Ljava/lang/Object;
.source "CountryDetectorWrapper.java"


# static fields
.field private static final CLASS_PATH:Ljava/lang/String; = "android.location.CountryDetector"

.field private static final TAG:Ljava/lang/String; = "CountryDetectorWrapper"

.field private static sMethodDetectCountry:Ljava/lang/reflect/Method;


# instance fields
.field private mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-string v1, "android.location.CountryDetector"

    invoke-static {v1}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    .local v0, "baseClass":Ljava/lang/Class;
    const-string v1, "detectCountry"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/wrapper/CountryDetectorWrapper;->sMethodDetectCountry:Ljava/lang/reflect/Method;

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/wrapper/CountryDetectorWrapper;->mInstance:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lcom/android/incallui/wrapper/CountryDetectorWrapper;->mInstance:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/CountryDetectorWrapper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/android/incallui/wrapper/CountryDetectorWrapper;

    sget-object v1, Lcom/android/incallui/wrapper/ContextWrapper;->COUNTRY_DETECTOR:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/wrapper/CountryDetectorWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public detectCountry()Lcom/android/incallui/wrapper/CountryWrapper;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-object v2, Lcom/android/incallui/wrapper/CountryDetectorWrapper;->sMethodDetectCountry:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 43
    :goto_0
    return-object v1

    .line 40
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/incallui/wrapper/CountryWrapper;

    sget-object v3, Lcom/android/incallui/wrapper/CountryDetectorWrapper;->sMethodDetectCountry:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/incallui/wrapper/CountryDetectorWrapper;->mInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/incallui/wrapper/CountryWrapper;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "CountryDetectorWrapper"

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
