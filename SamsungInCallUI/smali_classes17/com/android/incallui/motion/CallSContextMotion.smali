.class public Lcom/android/incallui/motion/CallSContextMotion;
.super Ljava/lang/Object;
.source "CallSContextMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CallSContextMotion"

.field private static lock:Ljava/lang/Object;

.field private static sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

.field private static sIsFlatMotionListening:Z

.field private static sIsPutDownListening:Ljava/lang/Boolean;

.field private static final sSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private static sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/incallui/motion/CallSContextMotion$1;

    invoke-direct {v0}, Lcom/android/incallui/motion/CallSContextMotion$1;-><init>()V

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsPutDownListening:Ljava/lang/Boolean;

    sput-boolean v1, Lcom/android/incallui/motion/CallSContextMotion;->sIsFlatMotionListening:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/incallui/motion/CallSContextMotion;->doActionPutUpDown(Z)V

    return-void
.end method

.method static synthetic access$100()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
    .locals 1

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    return-object v0
.end method

.method private static doActionPutUpDown(Z)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v3

    const-string v5, "CallSContextMotion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doActionPutUpDown : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", screenOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_screen_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    move v2, v4

    :cond_0
    if-nez v2, :cond_2

    const-string v5, "smart screen off"

    invoke-static {v5, v4}, Lcom/android/incallui/motion/CallSContextMotion;->log(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    if-nez p0, :cond_1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->makeGoToSleepWithNoLockSound()V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "CallSContextMotion"

    invoke-static {v0, p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static startFlatMotionListening(Landroid/content/Context;Lcom/android/incallui/motion/CallSContextMotion$FlatListener;)V
    .locals 6

    const/4 v0, 0x1

    sget-object v3, Lcom/android/incallui/motion/CallSContextMotion;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v2, "CallSContextMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startFlatMotionListening : LISTENER - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v2, Lcom/android/incallui/motion/CallSContextMotion;->sIsFlatMotionListening:Z

    if-nez v2, :cond_3

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    sget-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v2, :cond_1

    const-string v2, "scontext"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextManager;

    sput-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.sec.feature.scontext_lite"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    :goto_0
    sget-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    sget-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v4, 0x16

    invoke-virtual {v2, v4}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sput-object p1, Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    sget-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    sget-object v4, Lcom/android/incallui/motion/CallSContextMotion;->sSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/16 v5, 0x16

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/incallui/motion/CallSContextMotion;->sIsFlatMotionListening:Z

    :cond_3
    :goto_1
    monitor-exit v3

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const-string v2, "CallSContextMotion"

    const-string v4, "getting sSContextManager failed"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static startPutDownListening(Landroid/content/Context;)V
    .locals 4

    sget-object v1, Lcom/android/incallui/motion/CallSContextMotion;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "CallSContextMotion"

    const-string v2, "startPutDownListening"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsPutDownListening:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CallSContextMotion"

    const-string v2, "startPutDownListening: has not call"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CallSContextMotion"

    const-string v2, "startPutDownListening: cover is opened"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v0, :cond_2

    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager;

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    :cond_2
    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    sget-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsPutDownListening:Ljava/lang/Boolean;

    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_4
    const-string v0, "CallSContextMotion"

    const-string v2, "getting sSContextManager failed"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static stopFlatMotionListening(Landroid/content/Context;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x1

    sget-object v4, Lcom/android/incallui/motion/CallSContextMotion;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v2, "CallSContextMotion"

    const-string v5, "stopFlatMotionListening"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v2, Lcom/android/incallui/motion/CallSContextMotion;->sIsFlatMotionListening:Z

    if-ne v2, v0, :cond_4

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    sget-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v2, :cond_1

    const-string v2, "scontext"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextManager;

    sput-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "com.sec.feature.scontext_lite"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    :goto_0
    sget-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    sget-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    sget-object v3, Lcom/android/incallui/motion/CallSContextMotion;->sSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/16 v5, 0x16

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/motion/CallSContextMotion;->sIsFlatMotionListening:Z

    const/4 v2, 0x0

    sput-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    :cond_4
    :goto_1
    monitor-exit v4

    return-void

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    const-string v2, "CallSContextMotion"

    const-string v3, "getting sSContextManager failed"

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static stopPutDownListening(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;Z)V

    return-void
.end method

.method public static stopPutDownListening(Landroid/content/Context;Z)V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Lcom/android/incallui/motion/CallSContextMotion;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "CallSContextMotion"

    const-string v2, "stopPutDownListening"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsPutDownListening:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v4, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v0, :cond_1

    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager;

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    :cond_1
    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    sget-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsPutDownListening:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :cond_3
    const-string v0, "CallSContextMotion"

    const-string v2, "getting sSContextManager failed"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
