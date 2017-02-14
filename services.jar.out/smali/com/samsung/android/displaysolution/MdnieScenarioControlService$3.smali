.class Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;
.super Landroid/view/IDockedStackListener$Stub;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Landroid/view/IDockedStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdjustedForImeChanged(ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDividerVisibilityChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDockSideChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string/jumbo v2, "MdnieScenarioControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " MultiWindow State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set5(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get6(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v4, v0

    invoke-virtual {v2, v6, v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0
.end method

.method public onDockedStackMinimizedChanged(ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
