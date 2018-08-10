.class Lcom/android/server/desktopmode/CoverSupportStateController$4;
.super Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;
.source "CoverSupportStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/CoverSupportStateController;->initializeCoverState()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/CoverSupportStateController;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/CoverSupportStateController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$4;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDockStateChanged(Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$4;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get8(Lcom/android/server/desktopmode/CoverSupportStateController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$4;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get5(Lcom/android/server/desktopmode/CoverSupportStateController;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDexStation()Z

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$4;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDexStation()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/CoverSupportStateController;->-set2(Lcom/android/server/desktopmode/CoverSupportStateController;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$4;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-wrap1(Lcom/android/server/desktopmode/CoverSupportStateController;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
