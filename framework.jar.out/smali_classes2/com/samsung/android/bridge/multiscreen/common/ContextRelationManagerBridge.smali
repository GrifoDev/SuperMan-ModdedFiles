.class public Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;
.super Ljava/lang/Object;
.source "ContextRelationManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;
    }
.end annotation


# static fields
.field private static final CONTEXT_RELATION_MANAGER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.multiscreen.common.ContextRelationManager"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ContextRelationMgrBrdg"

.field private static sKlassContextRelationManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sMethodGetInstance:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->loadKlass()V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 47
    const/4 v2, 0x0

    .line 49
    .local v2, "ret":Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->sMethodGetInstance:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->sKlassContextRelationManager:Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 55
    check-cast v2, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;

    .end local v2    # "ret":Ljava/lang/Object;
    return-object v2

    .line 52
    .restart local v2    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    return-object v6

    .line 50
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalAccessException;
    return-object v6
.end method

.method static loadKlass()V
    .locals 5

    .prologue
    .line 32
    sget-object v2, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->sKlassContextRelationManager:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 34
    :try_start_0
    const-string/jumbo v2, "ContextRelationMgrBrdg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadKlass() : caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string/jumbo v2, "com.samsung.android.multiscreen.common.ContextRelationManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->sKlassContextRelationManager:Ljava/lang/Class;

    .line 36
    sget-object v3, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->sKlassContextRelationManager:Ljava/lang/Class;

    const-string/jumbo v4, "getInstance"

    .line 37
    const/4 v2, 0x0

    nop

    nop

    .line 36
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->sMethodGetInstance:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
