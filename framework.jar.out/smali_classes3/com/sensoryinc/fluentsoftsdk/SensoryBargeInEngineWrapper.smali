.class public Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;
.super Ljava/lang/Object;
.source "SensoryBargeInEngineWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;
    .locals 4

    const/4 v3, 0x0

    const-class v1, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getInstance() : make new SensoryBargeInEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->init()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    invoke-direct {v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;-><init>()V

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    :goto_0
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "cannot load libSensoryBargeInEngien.so"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v3

    :cond_1
    :try_start_2
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getInstance() : get existed SensoryBargeInEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
