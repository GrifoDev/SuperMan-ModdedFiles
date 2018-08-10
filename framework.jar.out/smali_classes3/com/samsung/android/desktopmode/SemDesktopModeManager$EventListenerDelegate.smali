.class Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;
.super Lcom/samsung/android/desktopmode/IEventListener$Stub;
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
.field private mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IEventListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    return-void
.end method


# virtual methods
.method nullOutListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    return-void
.end method

.method public onDesktopDockConnectionChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopDockConnectionChanged() connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;->onDesktopDockConnectionChanged(Z)V

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopModeChanged() enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;->onDesktopModeChanged(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListenerDelegate;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
