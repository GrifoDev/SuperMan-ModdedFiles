.class public final Lcom/samsung/android/desktopmode/SemDesktopModeManager;
.super Ljava/lang/Object;
.source "SemDesktopModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnCommandReceivedListener;
    }
.end annotation


# static fields
.field public static final COMMAND_CHECK_VISIBILITY:I = 0x4

.field public static final COMMAND_HIDE_VISIBILITY:I = 0x2

.field public static final COMMAND_SHOW_VISIBILITY:I = 0x1

.field public static final COMMAND_TOGGLE_VISIBILITY:I = 0x3

.field public static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final TAG:Ljava/lang/String;

.field public static final TARGET_WINDOW_APP_TRAY:I = 0x10

.field public static final TARGET_WINDOW_LABS_NOTIFICATION:I = 0x11

.field public static final UI_SERVICE_PACKAGE:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice"

.field private static mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static mService:Lcom/samsung/android/desktopmode/IDesktopMode;


# instance fields
.field private mBlockers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopModeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    sput-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    sput-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/desktopmode/IDesktopMode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mContextRef:Ljava/lang/ref/WeakReference;

    sput-object p2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    return-void
.end method

.method public static isDesktopDockConnected()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isDesktopDockConnected: Desktop Mode feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->isDesktopDockConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v3
.end method

.method public static isDesktopMode()Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-eqz v2, :cond_2

    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopMode;->isDesktopMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_2
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Desktop Mode feature not available or SemDesktopModeManager not instantiated. Please check Configuration.semDesktopModeEnabled instead."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p0, :cond_0

    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerListener: Listener is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerListener: Desktop Mode feature not available"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    if-nez v2, :cond_2

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    :cond_2
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerEventListener(Lcom/samsung/android/desktopmode/IEventListener;Ljava/lang/String;)Z

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p0, :cond_0

    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterListener: Listener is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterListener: Desktop Mode feature not available"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v3

    return-void

    :cond_2
    :try_start_3
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;

    if-nez v0, :cond_3

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already unregistered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-void

    :cond_3
    :try_start_4
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mEventListeners:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->unregisterEventListener(Lcom/samsung/android/desktopmode/IEventListener;)Z

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->nullOutListener()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public commandDesktopModeService(II)Z
    .locals 2

    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopMode;->commandDesktopModeService(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public forceSetHdmiSettings(Z)V
    .locals 3

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "forceSetHdmiSettings: Desktop Mode feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1, p1}, Lcom/samsung/android/desktopmode/IDesktopMode;->setHdmiSettings(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public getDesktopModeKillPolicy()Landroid/os/Bundle;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isDesktopMode: Desktop Mode feature not available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopMode;->getDesktopModeKillPolicy()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 2

    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return-object v1
.end method

.method public getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLaunchPolicyForPackage: Desktop Mode feature not available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopMode;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public getLaunchPolicyRunnable(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLaunchPolicyRunnable: Desktop Mode feature not available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, p1}, Lcom/samsung/android/desktopmode/IDesktopMode;->getLaunchPolicyRunnable(Landroid/content/pm/ApplicationInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public isAllowed()Z
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAllowed: Desktop Mode feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/desktopmode/IDesktopMode;->isAllowed(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v4
.end method

.method public isDesktopModeAvailable()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopModeAvailableEx(ZZ)Z

    move-result v0

    return v0
.end method

.method public isDesktopModeAvailableEx(ZZ)Z
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isDesktopModeAvailable: Desktop Mode feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopMode;->isDesktopModeAvailableEx(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v3
.end method

.method public isDesktopModeForPreparing()Z
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isDesktopMode: Desktop Mode feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->isDesktopModeForPreparing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v3
.end method

.method public isDeviceConnected()Z
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isDeviceConnected: Desktop Mode feature not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->isDesktopDockConnectedOrForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v3
.end method

.method public registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    .locals 6

    sget-object v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v4, 0x3e8

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Only the system may call registerBlocker()"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerBlocker: DesktopModeBlocker is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerBlocker: Desktop Mode feature not available"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void

    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    if-nez v2, :cond_3

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerBlocker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-void

    :cond_4
    :try_start_4
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;

    invoke-direct {v0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerBlocker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V
    .locals 6

    sget-object v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_0

    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerListener: Listener is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerListener: Desktop Mode feature not available"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    if-nez v2, :cond_2

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;

    invoke-direct {v0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setDefaultDisplayOn(ZLjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callerPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Don\'t use this anymore, show presentation screen into DualView display."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnCommandReceivedListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnCommandReceivedListener;)Z
    .locals 4

    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_0
    new-instance v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;

    invoke-direct {v1, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnCommandReceivedListener;)V

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public setTouchScreenOn(ZLjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callerPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Don\'t use this anymore, show presentation screen into DualView display."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    .locals 6

    sget-object v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v4, 0x3e8

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Only the system may call unregisterBlocker()"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterBlocker: DesktopModeBlocker is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterBlocker: Desktop Mode feature not available"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void

    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_3

    monitor-exit v3

    return-void

    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;

    if-nez v0, :cond_4

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterBlocker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already unregistered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-void

    :cond_4
    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :try_start_6
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterBlocker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    :try_start_7
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;->nullOutBlocker()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V
    .locals 6

    sget-object v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_0

    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterListener: Listener is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterListener: Desktop Mode feature not available"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v3

    return-void

    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;

    if-nez v0, :cond_3

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already unregistered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-void

    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z

    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;->nullOutListener()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
