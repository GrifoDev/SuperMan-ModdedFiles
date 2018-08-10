.class public Lcom/android/systemui/globalactions/GlobalActionsComponent;
.super Lcom/android/systemui/SystemUI;
.source "GlobalActionsComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;


# instance fields
.field private mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension",
            "<",
            "Lcom/android/systemui/plugins/GlobalActions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public handleShowGlobalActionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/GlobalActions;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/GlobalActions;->showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_globalactions_GlobalActionsComponent_1955()Lcom/android/systemui/plugins/GlobalActions;
    .locals 2

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsImpl;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onGlobalActionsHidden()V
    .locals 3

    :try_start_0
    const-string/jumbo v1, "GlobalActionsComponent"

    const-string/jumbo v2, "onGlobalActionsHidden"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onGlobalActionsHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GlobalActionsComponent"

    const-string/jumbo v2, "onGlobalActionsHidden RemoteException "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onGlobalActionsShown()V
    .locals 3

    :try_start_0
    const-string/jumbo v1, "GlobalActionsComponent"

    const-string/jumbo v2, "onGlobalActionsShown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onGlobalActionsShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GlobalActionsComponent"

    const-string/jumbo v2, "onGlobalActionsShown RemoteException "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reboot(Z)V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "GlobalActionsComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reboot - safeMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->reboot(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GlobalActionsComponent"

    const-string/jumbo v2, "reboot RemoteException "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shutdown()V
    .locals 3

    :try_start_0
    const-string/jumbo v1, "GlobalActionsComponent"

    const-string/jumbo v2, "shutdown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GlobalActionsComponent"

    const-string/jumbo v2, "shutdown RemoteException "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public start()V
    .locals 2

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const-class v0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    const-class v1, Lcom/android/systemui/plugins/GlobalActions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    const-class v1, Lcom/android/systemui/plugins/GlobalActions;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$Lambda$2rUcRmPVP2t4i4QQIidfILmOG0w;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$Lambda$2rUcRmPVP2t4i4QQIidfILmOG0w;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
