.class public Lcom/samsung/android/edge/SemEdgeManager;
.super Ljava/lang/Object;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    }
.end annotation


# static fields
.field public static final DISABLE_EDGE_LIGHTING:I = 0x1

.field public static final DISABLE_NONE_EDGE_LIGHTING:I = 0x0

.field private static final EDGE_LIGHTING:Ljava/lang/String; = "edge_lighting"

.field private static final EDGE_LIGHTING_ALWAYS:I = 0x0

.field private static final EDGE_LIGHTING_EDGE_NOTIFICATIONS:Ljava/lang/String; = "edge_lighting_edge_notifications"

.field public static final EDGE_LIGHTING_ENABLED:Z

.field private static final EDGE_LIGHTING_SCREEN_OFF:I = 0x2

.field private static final EDGE_LIGHTING_SCREEN_ON:I = 0x1

.field private static final EDGE_LIGHTING_SHOW_CONDITION:Ljava/lang/String; = "edge_lighting_show_condition"

.field public static final EDGE_LIGHTING_STATE_NONE:I = 0x0

.field public static final EDGE_LIGHTING_STATE_RUNNING:I = 0x1

.field public static final SUPPORT_EDGE_LIGHTING:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mEdgeLightingDelegatesLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private mService:Lcom/samsung/android/edge/IEdgeManager;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v1, Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "edgelighting_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    sput-boolean v1, Lcom/samsung/android/edge/SemEdgeManager;->EDGE_LIGHTING_ENABLED:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/edge/IEdgeManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    return-void
.end method

.method private getService()Lcom/samsung/android/edge/IEdgeManager;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "edge"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    return-object v1
.end method

.method private isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z
    .locals 2

    const/4 v0, 0x1

    const-string/jumbo v1, "edge_lighting"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEdgeLightingEnabledByScreen(Landroid/content/ContentResolver;Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "edge_lighting_show_condition"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    :goto_0
    xor-int/2addr v1, p2

    :cond_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public bindEdgeLightingService(Lcom/samsung/android/edge/OnEdgeLightingCallback;I)V
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v6, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "bindEdgeLightingService : callback is null"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v1, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v5

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_4

    :try_start_1
    new-instance v1, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v6, v1, p2, v0}, Lcom/samsung/android/edge/IEdgeManager;->bindEdgeLightingService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    monitor-exit v7

    return-void

    :catch_0
    move-exception v3

    :try_start_4
    sget-object v6, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "bindEdgeLightingService : RemoteException : "

    invoke-static {v6, v8, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7

    throw v6

    :catchall_1
    move-exception v6

    move-object v1, v2

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v2, v1

    goto :goto_0
.end method

.method public cancelNotification(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, " cancelNotification : service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/edge/IEdgeManager;->cancelNotification(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disable(I)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/android/edge/IEdgeManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableEdgeLightingNotification(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/edge/IEdgeManager;->disableEdgeLightingNotification(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEdgeLightingState()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v1}, Lcom/samsung/android/edge/IEdgeManager;->getEdgeLightingState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isEdgeLightingNotificationAllowed()Z
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v5

    if-nez v5, :cond_0

    return v7

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/edge/SemEdgeManager;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v5

    if-nez v5, :cond_1

    return v7

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/edge/SemEdgeManager;->isEdgeLightingEnabledByScreen(Landroid/content/ContentResolver;Z)Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/samsung/android/edge/IEdgeManager;->isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "EdgeService dead?"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public registerEdgeLightingListener(Lcom/samsung/android/edge/OnEdgeLightingListener;)V
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v6, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "registerEdgeLightingListener : listener is null"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v1, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getListener()Lcom/samsung/android/edge/OnEdgeLightingListener;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getListener()Lcom/samsung/android/edge/OnEdgeLightingListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v5

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_4

    :try_start_1
    new-instance v1, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v6, v1, v0}, Lcom/samsung/android/edge/IEdgeManager;->registerEdgeLightingListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    monitor-exit v7

    return-void

    :catch_0
    move-exception v3

    :try_start_4
    sget-object v6, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "registerEdgeLightingListener : RemoteException : "

    invoke-static {v6, v8, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7

    throw v6

    :catchall_1
    move-exception v6

    move-object v1, v2

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v2, v1

    goto :goto_0
.end method

.method public startEdgeLighting(Lcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "info is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/edge/IEdgeManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopEdgeLighting()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/edge/IEdgeManager;->stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindEdgeLightingService(Lcom/samsung/android/edge/OnEdgeLightingCallback;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unbindEdgeLightingService : callback is null"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    :cond_3
    if-nez v0, :cond_4

    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unbindEdgeLightingService : cannot find the callback"

    invoke-static {v4, v6}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v0, v6}, Lcom/samsung/android/edge/IEdgeManager;->unbindEdgeLightingService(Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v5

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unbindEdgeLightingService : RemoteException : "

    invoke-static {v4, v6, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public unregisterEdgeLightingListener(Lcom/samsung/android/edge/OnEdgeLightingListener;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unregisterEdgeLightingListener : listener is null"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getListener()Lcom/samsung/android/edge/OnEdgeLightingListener;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getListener()Lcom/samsung/android/edge/OnEdgeLightingListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    :cond_3
    if-nez v0, :cond_4

    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unregisterEdgeLightingListener : cannot find the listener"

    invoke-static {v4, v6}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v0, v6}, Lcom/samsung/android/edge/IEdgeManager;->unregisterEdgeLightingListener(Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v5

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unbindEdgeLightingService : RemoteException : "

    invoke-static {v4, v6, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public updateEdgeLightingPackageList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateEdgeLightingPackageList : list is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/edge/IEdgeManager;->updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateEdgeLightingPolicy(Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateEdgeLightingPolicy : policy is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/edge/IEdgeManager;->updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateEdgeLightingPolicy : RemoteException : "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
