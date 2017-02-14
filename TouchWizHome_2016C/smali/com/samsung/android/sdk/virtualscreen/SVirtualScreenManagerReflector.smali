.class Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;
.super Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;
.source "SVirtualScreenManagerReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_REFLECTION:Z = false

.field private static final MULTISCREEN_VER_1:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mVersionCode:I

.field private static sKlassVirtualScreenManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mInitialized:Z

.field private mInstanceVirtualScreenManager:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I

    invoke-static {}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->loadKlass()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;-><init>()V

    iput-boolean v4, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInitialized:Z

    new-instance v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;-><init>()V

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->isFeatureEnabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "context is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :try_start_0
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInitialized:Z

    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v4, "completely initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v4, "NoSuchMethodException !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v4, "InstantiationException !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v4, "IllegalAccessException !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v4, "IllegalArgumentException !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvocationTargetException ! cause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I

    return v0
.end method

.method private static checkVersion()V
    .locals 0

    return-void
.end method

.method private static getFrameworkVersionCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private static getFrameworkVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method private static getRequiredMinimumSdkVersionCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private static getRequiredMinimumSdkVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method static loadKlass()V
    .locals 11

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "com.samsung.android.multiscreen.virtualscreen.VirtualScreenManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x1

    sput v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I

    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVersionCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Support from N OS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v5, "startActivity"

    new-array v6, v10, [Ljava/lang/Class;

    const-class v7, Landroid/content/Intent;

    aput-object v7, v6, v9

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v6, v8

    invoke-static {v3, v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v6, "bindVirtualScreen"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-static {v5, v6, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v6, "unBindVirtualScreen"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-static {v5, v6, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v5, "setOffset"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v10

    invoke-static {v3, v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v6, "getOffset"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-static {v5, v6, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v6, "isMoving"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-static {v5, v6, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v5, "getDisplayId"

    new-array v6, v10, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/Rect;

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-static {v3, v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v5, "updateVirtualScreen"

    new-array v6, v10, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/Rect;

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-static {v3, v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    const-class v5, Landroid/content/Intent;

    const-string v6, "getVirtualScreenParams"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-static {v5, v6, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    const-class v3, Landroid/content/Intent;

    const-string v5, "getLaunchParams"

    check-cast v4, [Ljava/lang/Class;

    invoke-static {v3, v5, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    :try_start_1
    const-string v3, "com.samsung.android.multiscreen.MultiScreenLaunchParams"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDisplayId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    const-string v3, "setFlags"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    invoke-static {}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkVersion()V

    :goto_2
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "com.samsung.android.multidisplay.virtualscreen.VirtualScreenManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVersionCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Support until M OS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method bindVirtualScreen()Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "bindVirtualScreen()"

    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method getDisplayId(Landroid/graphics/Rect;I)I
    .locals 6

    const-string v0, "getDisplayId(Rect,int)"

    sget-object v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getOffset()Landroid/graphics/Point;
    .locals 4

    const-string v0, "getOffset()"

    sget-object v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method initialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInitialized:Z

    return v0
.end method

.method isMoving()Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "isMoving()"

    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method setOffset(IIZ)Z
    .locals 6

    const/4 v1, 0x0

    const-string v0, "setOffset(int,int,boolean)"

    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method startActivity(Landroid/content/Intent;Landroid/os/Bundle;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)I
    .locals 11

    const/4 v10, 0x1

    const/4 v4, -0x1

    const/4 v9, 0x0

    const-string v2, "startActivity(Intent,Bundle)"

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I

    if-ge v5, v10, :cond_4

    :try_start_0
    const-class v5, Landroid/content/Intent;

    const-string v6, "getVirtualScreenParams()"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-class v5, Landroid/content/Intent;

    const-string v6, "getVirtualScreenParams()"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, p1, v7}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mBounds"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iget-object v6, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mFlags"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iget v6, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_1
    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v4, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v5, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v9

    aput-object p2, v6, v10

    invoke-static {v4, v2, v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_2
    :goto_2
    return v4

    :cond_3
    :try_start_1
    iget v5, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->displayId:I

    if-le v5, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mDisplayId"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iget v6, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->displayId:I

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v6, "startActivity() : NoSuchMethodException ! getVirtualScreenParams"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v6, "IllegalAccessException !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-class v5, Landroid/content/Intent;

    const-string v6, "getLaunchParams()"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-class v5, Landroid/content/Intent;

    const-string v6, "getLaunchParams()"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, p1, v7}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_7

    iget-object v5, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    iget v6, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->getDisplayId(Landroid/graphics/Rect;I)I

    move-result v0

    if-gt v0, v4, :cond_5

    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity() Can not startActivity in VirtualScreen displayId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setDisplayId(int)"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setDisplayId(int)"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v3, v7}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setFlags(int)"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setFlags(int)"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v3, v7}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    iget v5, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->displayId:I

    if-le v5, v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setDisplayId(int)"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setDisplayId(int)"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->displayId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v3, v7}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method unBindVirtualScreen()Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "unBindVirtualScreen()"

    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method updateVirtualScreen(Landroid/graphics/Rect;I)Z
    .locals 6

    const/4 v1, 0x0

    const-string v0, "updateVirtualScreen(Rect,int)"

    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method
