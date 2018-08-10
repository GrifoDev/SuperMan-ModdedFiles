.class final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiWindowEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    return-void
.end method


# virtual methods
.method public onAutoResizeStateChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0

    return-void
.end method

.method public onDockedStackMinimizedChanged(ZZLandroid/content/pm/ActivityInfo;)V
    .locals 0

    return-void
.end method

.method public onFocusStackChanged(I)V
    .locals 7

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    new-instance v3, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v3}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set9(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/app/SemMultiWindowManager;)Lcom/samsung/android/app/SemMultiWindowManager;

    if-ne p1, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get28(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get26(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/app/SemMultiWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v2

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set7(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    const-string/jumbo v2, "MdnieScenarioControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Listener Real Multi Window State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get21(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get17(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get21(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set7(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    const-string/jumbo v2, "MdnieScenarioControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Listener Real Multi Window State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get21(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get6(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v4, v0

    invoke-virtual {v2, v6, v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get17(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setHdrMode(Z)V

    goto :goto_1
.end method

.method public onMultiWindowEnableChanged(Z)V
    .locals 0

    return-void
.end method

.method public onScreenFreezeAnimationFinished()V
    .locals 0

    return-void
.end method

.method public onSnapWindowDismissed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
