.class Lcom/android/server/lights/LightsService$6;
.super Landroid/os/HandlerThread;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 5

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    new-instance v2, Lcom/android/server/lights/LightsService$SvcLEDHandler;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->-get12(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/lights/LightsService$SvcLEDHandler;-><init>(Lcom/android/server/lights/LightsService;Landroid/os/Looper;)V

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-set8(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDHandler;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get12(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/lights/LightsService;->-set6(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get12(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->notifyAll()V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get1(Lcom/android/server/lights/LightsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/lights/LightsService;->-set10(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/lights/LightsService;->-set11(Lcom/android/server/lights/LightsService;Z)Z

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->NOVEL_PROJECT:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get18(Lcom/android/server/lights/LightsService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "/sys/class/sec/led/led_lowpower"

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/lights/LightsService;->-set9(Lcom/android/server/lights/LightsService;Z)Z

    :cond_0
    iget-object v3, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get16(Lcom/android/server/lights/LightsService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2bc

    :goto_0
    invoke-static {v3, v1}, Lcom/android/server/lights/LightsService;->-set5(Lcom/android/server/lights/LightsService;I)I

    const-string/jumbo v1, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SvcLED] SUPPORT_LED_INDICATOR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mUseSoftwareAutoBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->-get18(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mUseLEDAutoBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->-get16(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mDelayForcedSvcLEDTask : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->-get7(Lcom/android/server/lights/LightsService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mUsePatternLED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/LightsService$6;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->-get17(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
