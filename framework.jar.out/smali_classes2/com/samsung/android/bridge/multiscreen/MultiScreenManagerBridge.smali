.class public Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;
.super Ljava/lang/Object;
.source "MultiScreenManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge$IMultiScreenManagerBridge;
    }
.end annotation


# static fields
.field public static ACTIVITY_STACK_ID_MULTIPLIER:I = 0x0

.field private static FIELD_NAMES:[Ljava/lang/String; = null

.field private static METHOD_GET_DISPLAY_ID_FROM_STACK_ID:Ljava/lang/reflect/Method; = null

.field private static METHOD_GET_STACK_ID_ADJUSTED_TO_DISPLAY_ID:Ljava/lang/reflect/Method; = null

.field private static METHOD_GET_STACK_ID_EXCLUDING_DISPLAY_ID:Ljava/lang/reflect/Method; = null

.field private static final MULTI_SCREEN_MANAGER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.multiscreen.MultiScreenManager"

.field public static final TAG:Ljava/lang/String; = "MultiScreenMgrBrdg"

.field private static sKlassMultiScreenManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ACTIVITY_STACK_ID_MULTIPLIER"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->FIELD_NAMES:[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->loadKlass()V

    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->initField()V

    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->loadMethods()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayIdFromStackId(I)I
    .locals 6

    const/4 v5, 0x0

    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_DISPLAY_ID_FROM_STACK_ID:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_DISPLAY_ID_FROM_STACK_ID:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v5, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    return p0
.end method

.method public static getStackIdAdjustedToDisplayId(II)I
    .locals 6

    const/4 v5, 0x0

    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_STACK_ID_ADJUSTED_TO_DISPLAY_ID:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_STACK_ID_ADJUSTED_TO_DISPLAY_ID:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v5, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    return p0
.end method

.method public static getStackIdExcludingDisplayId(I)I
    .locals 6

    const/4 v5, 0x0

    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_STACK_ID_EXCLUDING_DISPLAY_ID:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_STACK_ID_EXCLUDING_DISPLAY_ID:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v5, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    return p0
.end method

.method private static initField()V
    .locals 3

    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    const-class v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;

    sget-object v2, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->FIELD_NAMES:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->loadField(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static loadKlass()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.multiscreen.MultiScreenManager"

    invoke-static {v0}, Lcom/samsung/android/bridge/ReflectionHelper;->loadKlass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method private static loadMethods()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    const-string/jumbo v1, "getStackIdAdjustedToDisplayId"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_STACK_ID_ADJUSTED_TO_DISPLAY_ID:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    const-string/jumbo v1, "getStackIdExcludingDisplayId"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_STACK_ID_EXCLUDING_DISPLAY_ID:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    const-string/jumbo v1, "getDisplayIdFromStackId"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_DISPLAY_ID_FROM_STACK_ID:Ljava/lang/reflect/Method;

    :cond_0
    return-void
.end method
