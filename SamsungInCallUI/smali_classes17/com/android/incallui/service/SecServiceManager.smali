.class public Lcom/android/incallui/service/SecServiceManager;
.super Ljava/lang/Object;
.source "SecServiceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SecServiceManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v4, 0x0

    .line 18
    .local v4, "ret":Landroid/os/IBinder;
    :try_start_0
    const-string v5, "android.os.ServiceManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 19
    .local v1, "classServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 20
    .local v3, "methodGetService":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 25
    .end local v1    # "classServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "methodGetService":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 21
    :catch_0
    move-exception v2

    .line 22
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v5, "SecServiceManager"

    const-string v6, "Exception thrown when trying to invoke getService() method using reflection"

    invoke-static {v5, v6, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 21
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1
.end method
