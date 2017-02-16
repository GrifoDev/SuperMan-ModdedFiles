.class public Lcom/android/incallui/wrapper/ContextWrapper;
.super Ljava/lang/Object;
.source "ContextWrapper.java"


# static fields
.field public static final COUNTRY_DETECTOR:Ljava/lang/String;

.field public static final STATUS_BAR_SERVICE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ContextWrapper"

.field private static sMethodBindServiceAsUser:Ljava/lang/reflect/Method;

.field private static sMethodCreatePackageContextAsUser:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 40
    const-class v3, Landroid/content/Context;

    const-string v4, "createPackageContextAsUser"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    const-class v6, Landroid/os/UserHandle;

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/wrapper/ContextWrapper;->sMethodCreatePackageContextAsUser:Ljava/lang/reflect/Method;

    .line 42
    const-class v3, Landroid/content/ContextWrapper;

    const-string v4, "bindServiceAsUser"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    aput-object v6, v5, v7

    const-class v6, Landroid/content/ServiceConnection;

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v9

    const-class v6, Landroid/os/UserHandle;

    aput-object v6, v5, v10

    invoke-static {v3, v4, v5}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/wrapper/ContextWrapper;->sMethodBindServiceAsUser:Ljava/lang/reflect/Method;

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v3, Landroid/content/Context;

    const-string v4, "COUNTRY_DETECTOR"

    invoke-static {v3, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    const/4 v2, 0x0

    .line 50
    .local v2, "fieldValue":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fieldValue":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .restart local v2    # "fieldValue":Ljava/lang/String;
    :goto_0
    sput-object v2, Lcom/android/incallui/wrapper/ContextWrapper;->COUNTRY_DETECTOR:Ljava/lang/String;

    .line 60
    .end local v2    # "fieldValue":Ljava/lang/String;
    :goto_1
    const-class v3, Landroid/content/Context;

    const-string v4, "STATUS_BAR_SERVICE"

    invoke-static {v3, v4}, Lcom/android/incallui/wrapper/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    const/4 v2, 0x0

    .line 64
    .restart local v2    # "fieldValue":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fieldValue":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .restart local v2    # "fieldValue":Ljava/lang/String;
    :goto_2
    sput-object v2, Lcom/android/incallui/wrapper/ContextWrapper;->STATUS_BAR_SERVICE:Ljava/lang/String;

    .line 73
    .end local v2    # "fieldValue":Ljava/lang/String;
    :goto_3
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "ContextWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get field value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v2, "country_detector"

    .restart local v2    # "fieldValue":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "fieldValue":Ljava/lang/String;
    :cond_0
    const-string v3, "country_detector"

    sput-object v3, Lcom/android/incallui/wrapper/ContextWrapper;->COUNTRY_DETECTOR:Ljava/lang/String;

    goto :goto_1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    const-string v3, "ContextWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get field value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v2, "statusbar"

    .restart local v2    # "fieldValue":Ljava/lang/String;
    goto :goto_2

    .line 71
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "fieldValue":Ljava/lang/String;
    :cond_1
    const-string v3, "statusbar"

    sput-object v3, Lcom/android/incallui/wrapper/ContextWrapper;->STATUS_BAR_SERVICE:Ljava/lang/String;

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindServiceAsUser(Landroid/content/ContextWrapper;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 6
    .param p0, "contextWrapper"    # Landroid/content/ContextWrapper;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v2, 0x0

    .line 91
    sget-object v1, Lcom/android/incallui/wrapper/ContextWrapper;->sMethodBindServiceAsUser:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move v1, v2

    .line 98
    :goto_0
    return v1

    .line 95
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/ContextWrapper;->sMethodBindServiceAsUser:Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "ContextWrapper"

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

    .line 98
    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static createPackageContextAsUserWithInstance(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v2, 0x0

    .line 77
    sget-object v1, Lcom/android/incallui/wrapper/ContextWrapper;->sMethodCreatePackageContextAsUser:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 85
    :goto_0
    return-object v1

    .line 81
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/incallui/wrapper/ContextWrapper;->sMethodCreatePackageContextAsUser:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v1, "ContextWrapper"

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

    .line 85
    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
