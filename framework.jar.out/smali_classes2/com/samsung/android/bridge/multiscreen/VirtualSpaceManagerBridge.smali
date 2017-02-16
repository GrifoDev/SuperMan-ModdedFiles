.class public Lcom/samsung/android/bridge/multiscreen/VirtualSpaceManagerBridge;
.super Ljava/lang/Object;
.source "VirtualSpaceManagerBridge.java"


# static fields
.field private static CLASSNAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static sConstructor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 13
    const-string/jumbo v2, "com.samsung.android.virtualspace.SemVirtualSpaceManager"

    sput-object v2, Lcom/samsung/android/bridge/multiscreen/VirtualSpaceManagerBridge;->CLASSNAME:Ljava/lang/String;

    .line 14
    const-string/jumbo v2, "SemVirtualSpaceManager"

    sput-object v2, Lcom/samsung/android/bridge/multiscreen/VirtualSpaceManagerBridge;->TAG:Ljava/lang/String;

    .line 19
    :try_start_0
    sget-object v2, Lcom/samsung/android/bridge/multiscreen/VirtualSpaceManagerBridge;->CLASSNAME:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    .local v0, "c":Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/bridge/multiscreen/VirtualSpaceManagerBridge;->sConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v2, Lcom/samsung/android/bridge/multiscreen/VirtualSpaceManagerBridge;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Couldn\'t find SemVirtualSpaceManager class or constructor: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/samsung/android/bridge/multiscreen/IVirtualSpaceManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 27
    sget-object v1, Lcom/samsung/android/bridge/multiscreen/VirtualSpaceManagerBridge;->sConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 29
    :try_start_0
    sget-object v1, Lcom/samsung/android/bridge/multiscreen/VirtualSpaceManagerBridge;->sConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/bridge/multiscreen/IVirtualSpaceManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/bridge/multiscreen/VirtualSpaceManagerBridge;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Couldn\'t create SemVirtualSpaceManager instance: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method
