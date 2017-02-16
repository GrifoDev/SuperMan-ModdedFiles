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

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 35
    const-string/jumbo v1, "ACTIVITY_STACK_ID_MULTIPLIER"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 34
    sput-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->FIELD_NAMES:[Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->loadKlass()V

    .line 45
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->initField()V

    .line 46
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->loadMethods()V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayIdFromStackId(I)I
    .locals 6
    .param p0, "stackId"    # I

    .prologue
    const/4 v5, 0x0

    .line 113
    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_DISPLAY_ID_FROM_STACK_ID:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_DISPLAY_ID_FROM_STACK_ID:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 115
    invoke-static {v1, v5, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 118
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "ret":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 122
    :cond_0
    return p0
.end method

.method public static getStackIdAdjustedToDisplayId(II)I
    .locals 6
    .param p0, "stackId"    # I
    .param p1, "displayId"    # I

    .prologue
    const/4 v5, 0x0

    .line 86
    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_STACK_ID_ADJUSTED_TO_DISPLAY_ID:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_STACK_ID_ADJUSTED_TO_DISPLAY_ID:Ljava/lang/reflect/Method;

    .line 88
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 88
    invoke-static {v1, v5, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 92
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "ret":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 96
    :cond_0
    return p0
.end method

.method public static getStackIdExcludingDisplayId(I)I
    .locals 6
    .param p0, "stackId"    # I

    .prologue
    const/4 v5, 0x0

    .line 100
    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_STACK_ID_EXCLUDING_DISPLAY_ID:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_STACK_ID_EXCLUDING_DISPLAY_ID:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 102
    invoke-static {v1, v5, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 105
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "ret":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 109
    :cond_0
    return p0
.end method

.method private static initField()V
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    .line 59
    const-class v1, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;

    .line 60
    sget-object v2, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->FIELD_NAMES:[Ljava/lang/String;

    .line 58
    invoke-static {v0, v1, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->loadField(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method private static loadKlass()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 52
    const-string/jumbo v0, "com.samsung.android.multiscreen.MultiScreenManager"

    invoke-static {v0}, Lcom/samsung/android/bridge/ReflectionHelper;->loadKlass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    .line 50
    :cond_0
    return-void
.end method

.method private static loadMethods()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    .line 68
    const-string/jumbo v1, "getStackIdAdjustedToDisplayId"

    .line 69
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    .line 66
    invoke-static {v0, v1, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_STACK_ID_ADJUSTED_TO_DISPLAY_ID:Ljava/lang/reflect/Method;

    .line 72
    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    .line 73
    const-string/jumbo v1, "getStackIdExcludingDisplayId"

    .line 74
    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 71
    invoke-static {v0, v1, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_STACK_ID_EXCLUDING_DISPLAY_ID:Ljava/lang/reflect/Method;

    .line 77
    sget-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->sKlassMultiScreenManager:Ljava/lang/Class;

    .line 78
    const-string/jumbo v1, "getDisplayIdFromStackId"

    .line 79
    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 76
    invoke-static {v0, v1, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->METHOD_GET_DISPLAY_ID_FROM_STACK_ID:Ljava/lang/reflect/Method;

    .line 64
    :cond_0
    return-void
.end method
