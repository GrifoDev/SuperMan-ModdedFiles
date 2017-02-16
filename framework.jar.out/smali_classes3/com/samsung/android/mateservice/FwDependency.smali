.class Lcom/samsung/android/mateservice/FwDependency;
.super Ljava/lang/Object;
.source "FwDependency.java"


# static fields
.field private static final PRODUCT_DEV:Z

.field private static final SYSTEM_PROPERTIES_CLASS_NAME:Ljava/lang/String; = "android.os.SystemProperties"

.field private static final TAG:Ljava/lang/String; = "Fw"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/samsung/android/mateservice/FwDependency;->internalIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/mateservice/FwDependency;->PRODUCT_DEV:Z

    .line 13
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "connection"    # Landroid/content/ServiceConnection;
    .param p3, "flag"    # I
    .param p4, "handle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v7, 0x0

    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v2, Landroid/content/Context;

    .line 51
    const-string/jumbo v3, "bindServiceAsUser"

    .line 50
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    .line 51
    const-class v5, Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-class v5, Landroid/os/UserHandle;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 50
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 52
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 53
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 56
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isDebugLogLevel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    if-nez v1, :cond_1

    .line 63
    const-string/jumbo v2, "Fw"

    const-string/jumbo v3, "bindServiceAsUser fail to invoke method"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/mateservice/MateLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    :cond_1
    return v7
.end method

.method static getProcessSystemUid()I
    .locals 5

    .prologue
    .line 70
    const/4 v2, -0x1

    .line 72
    .local v2, "uid":I
    :try_start_0
    const-class v3, Landroid/os/Process;

    const-string/jumbo v4, "SYSTEM_UID"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 73
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 82
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isDebugLogLevel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string/jumbo v3, ""

    .line 120
    .local v3, "returnValue":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 121
    .local v4, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 122
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v3

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isDebugLogLevel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 134
    move-object v3, p1

    .line 137
    .local v3, "returnValue":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 138
    .local v4, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 139
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v3

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isDebugLogLevel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 7
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v3, 0x0

    .line 28
    .local v3, "userHandle":Landroid/os/UserHandle;
    :try_start_0
    const-class v4, Landroid/os/UserHandle;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 29
    .local v2, "field":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 30
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/UserHandle;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 40
    const-string/jumbo v4, "Fw"

    const-string/jumbo v5, "getUserHandle return null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/mateservice/MateLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    :cond_1
    return-object v3

    .line 32
    .restart local v3    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isDebugLogLevel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static internalIsProductDev()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 86
    const-class v0, Landroid/os/Debug;

    .line 89
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/Debug;>;"
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v3, v6, :cond_0

    .line 90
    const-string/jumbo v3, "semIsProductDev"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 91
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 92
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 95
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v3, v6, :cond_2

    .line 96
    const-string/jumbo v3, "isProductShip"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 97
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 98
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v3, v4, :cond_1

    move v3, v4

    :goto_0
    return v3

    :cond_1
    move v3, v5

    goto :goto_0

    .line 102
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isDebugLogLevel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_2
    const-string/jumbo v3, "true"

    const-string/jumbo v6, "ro.product_ship"

    const-string/jumbo v7, "false"

    invoke-static {v6, v7}, Lcom/samsung/android/mateservice/FwDependency;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    return v5

    :cond_3
    move v5, v4

    goto :goto_1
.end method

.method static isProductDev()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/samsung/android/mateservice/FwDependency;->PRODUCT_DEV:Z

    return v0
.end method
