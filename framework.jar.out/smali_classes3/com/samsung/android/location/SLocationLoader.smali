.class public Lcom/samsung/android/location/SLocationLoader;
.super Ljava/lang/Object;
.source "SLocationLoader.java"


# static fields
.field private static final CLASS_SLocationService:Ljava/lang/String; = "com.samsung.android.location.SLocationService"

.field private static final METHOD_systemReady:Ljava/lang/String; = "systemReady"

.field private static final TAG:Ljava/lang/String; = "SLocation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClassFromLib(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    const-string/jumbo v1, "com.samsung.android.location"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 43
    .local v0, "apkContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public static getSLocationManager(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2
    .param p0, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 65
    .local v1, "service":Lcom/samsung/android/location/ISLocationManager;
    new-instance v0, Lcom/samsung/android/location/SemLocationManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/location/SemLocationManager;-><init>(Lcom/samsung/android/location/ISLocationManager;)V

    .line 67
    .local v0, "sLocationManager":Lcom/samsung/android/location/SemLocationManager;
    return-object v0
.end method

.method public static getSLocationService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "sLocationService":Landroid/os/IBinder;
    const-string/jumbo v4, "com.samsung.android.location.SLocationService"

    invoke-static {p0, v4}, Lcom/samsung/android/location/SLocationLoader;->getClassFromLib(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 52
    .local v3, "sLocationServiceClass":Ljava/lang/Class;
    if-eqz v3, :cond_0

    .line 53
    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 55
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p0, v0, v6

    .line 57
    .local v0, "arglist":[Ljava/lang/Object;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "sLocationService":Landroid/os/IBinder;
    check-cast v2, Landroid/os/IBinder;

    .line 60
    .end local v0    # "arglist":[Ljava/lang/Object;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_0
    return-object v2
.end method

.method public static systemReady(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 72
    const-string/jumbo v3, "com.samsung.android.location.SLocationService"

    invoke-static {p0, v3}, Lcom/samsung/android/location/SLocationLoader;->getClassFromLib(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 73
    .local v0, "sLocationService":Ljava/lang/Class;
    invoke-static {p1}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 76
    .local v1, "service":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v3, "systemReady"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 78
    .local v2, "systemReady":Ljava/lang/reflect/Method;
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .end local v2    # "systemReady":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method
