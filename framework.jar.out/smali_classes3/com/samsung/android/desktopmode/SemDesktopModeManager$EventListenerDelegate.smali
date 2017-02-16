.class Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;
.super Lcom/samsung/android/desktopmode/IDesktopModeCallback$Stub;
.source "SemDesktopModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/SemDesktopModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventListenerDelegate"
.end annotation


# instance fields
.field private final mEventListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeCallback$Stub;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->mEventListenerRef:Ljava/lang/ref/WeakReference;

    .line 60
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->mEventListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 64
    return-void
.end method

.method public onDesktopDockConnectionChanged(Z)V
    .locals 4
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->mEventListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .line 71
    .local v0, "eventListener":Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;
    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDesktopDockConnectionChanged() connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    const-string/jumbo v3, ", listener="

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;->onDesktopDockConnectionChanged(Z)V

    .line 69
    :cond_0
    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->mEventListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .line 81
    .local v0, "eventListener":Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;
    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDesktopModeChanged() enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    const-string/jumbo v3, ", listener="

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;->onDesktopModeChanged(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->mEventListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .line 91
    .local v0, "eventListener":Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/desktopmode/IDesktopModeCallback$Stub;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
