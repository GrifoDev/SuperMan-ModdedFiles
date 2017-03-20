.class public Lcom/android/incallui/wrapper/IActivityManagerWrapper;
.super Ljava/lang/Object;
.source "IActivityManagerWrapper.java"


# static fields
.field private static final CLASS_PATH:Ljava/lang/String; = "android.app.IActivityManager"

.field private static final TAG:Ljava/lang/String; = "IActivityManagerWrapper"

.field private static sMethodKeyguardWaitingForActivityDrawn:Ljava/lang/reflect/Method;


# instance fields
.field private mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const-string v1, "android.app.IActivityManager"

    invoke-static {v1}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    .local v0, "baseClass":Ljava/lang/Class;
    const-string v1, "keyguardWaitingForActivityDrawn"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/wrapper/IActivityManagerWrapper;->sMethodKeyguardWaitingForActivityDrawn:Ljava/lang/reflect/Method;

    .line 22
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/incallui/wrapper/IActivityManagerWrapper;->mInstance:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public keyguardWaitingForActivityDrawn()V
    .locals 4

    .prologue
    .line 29
    sget-object v1, Lcom/android/incallui/wrapper/IActivityManagerWrapper;->sMethodKeyguardWaitingForActivityDrawn:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/wrapper/IActivityManagerWrapper;->mInstance:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/IActivityManagerWrapper;->sMethodKeyguardWaitingForActivityDrawn:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/incallui/wrapper/IActivityManagerWrapper;->mInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "IActivityManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
