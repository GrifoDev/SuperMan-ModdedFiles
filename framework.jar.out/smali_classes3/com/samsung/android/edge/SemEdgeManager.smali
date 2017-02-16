.class public Lcom/samsung/android/edge/SemEdgeManager;
.super Ljava/lang/Object;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;,
        Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingResponseCallback;,
        Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;
    }
.end annotation


# static fields
.field public static final EDGE_LIGHTING_STATE_NONE:I = 0x0

.field public static final EDGE_LIGHTING_STATE_RUNNING:I = 0x1

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
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/edge/IEdgeManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/edge/IEdgeManager;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    .line 80
    return-void
.end method

.method private getService()Lcom/samsung/android/edge/IEdgeManager;
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    if-nez v1, :cond_0

    .line 88
    const-string/jumbo v1, "edge"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 89
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    .line 91
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    return-object v1
.end method


# virtual methods
.method public bindEdgeLightingService(Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;)V
    .locals 9
    .param p1, "callback"    # Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v6

    if-nez v6, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    if-nez p1, :cond_1

    .line 102
    sget-object v6, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "bindEdgeLightingService : callback is null"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 105
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 108
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    .line 109
    .local v5, "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 110
    move-object v0, v5

    .local v0, "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    move-object v1, v0

    .line 114
    .end local v0    # "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v5    # "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .local v1, "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :goto_0
    if-nez v1, :cond_4

    .line 115
    :try_start_1
    new-instance v0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    const/4 v6, 0x0

    invoke-direct {v0, p0, p1, v6}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .end local v1    # "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v0    # "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .local v2, "cm":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 121
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v6, v0, v2}, Lcom/samsung/android/edge/IEdgeManager;->bindEdgeLightingService(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    monitor-exit v7

    .line 97
    return-void

    .line 122
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v6, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "bindEdgeLightingService : RemoteException : "

    invoke-static {v6, v8, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 105
    .end local v0    # "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v2    # "cm":Landroid/content/ComponentName;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7

    throw v6

    .restart local v1    # "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v0    # "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    goto :goto_3

    .end local v0    # "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v1    # "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_4
    move-object v0, v1

    .end local v1    # "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .restart local v0    # "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    goto :goto_1

    .local v0, "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_5
    move-object v1, v0

    .restart local v1    # "callbackDelegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    goto :goto_0
.end method

.method public cancelEdgeLighting()V
    .locals 4

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 207
    return-void

    .line 210
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/edge/IEdgeManager;->cancelEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public edgeLighting(Lcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    if-nez p1, :cond_1

    .line 172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "info is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/edge/SemEdgeManager;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/edge/IEdgeManager;->edgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public edgeLighting(Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    if-nez p1, :cond_1

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "info is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/edge/IEdgeManager;->edgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEdgeLightingState()I
    .locals 3

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 221
    const/4 v1, 0x0

    return v1

    .line 224
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v1}, Lcom/samsung/android/edge/IEdgeManager;->getEdgeLightingState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EdgeService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindEdgeLightingService(Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/samsung/android/edge/SemEdgeManager;->getService()Lcom/samsung/android/edge/IEdgeManager;

    move-result-object v4

    if-nez v4, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    if-nez p1, :cond_1

    .line 137
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unbindEdgeLightingService : callback is null"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    .line 144
    .local v3, "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->getCallback()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    move-object v0, v3

    .line 149
    .end local v0    # "delegate":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .end local v3    # "temp":Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    :cond_3
    if-nez v0, :cond_4

    .line 150
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unbindEdgeLightingService : cannot find the callback"

    invoke-static {v4, v6}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 151
    return-void

    .line 154
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iget-object v6, p0, Lcom/samsung/android/edge/SemEdgeManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v0, v6}, Lcom/samsung/android/edge/IEdgeManager;->unbindEdgeLightingService(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 155
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager;->mEdgeLightingCallbackDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v5

    .line 132
    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/samsung/android/edge/SemEdgeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unbindEdgeLightingService : RemoteException : "

    invoke-static {v4, v6, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 140
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
