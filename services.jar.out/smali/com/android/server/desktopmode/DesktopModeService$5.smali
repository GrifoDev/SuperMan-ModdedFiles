.class Lcom/android/server/desktopmode/DesktopModeService$5;
.super Landroid/os/FileObserver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->initDesktopDockObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "hidraw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit16 v0, p1, 0xfff

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap3(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap3(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch
.end method
