.class Lcom/android/server/desktopmode/DesktopModeService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public onProcessDied(II)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v0

    iget v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->pid:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v0

    iget v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->uid:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayOn(ZLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v0

    iget v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->pid:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v0

    iget v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->uid:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchScreenOn(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0

    return-void
.end method
