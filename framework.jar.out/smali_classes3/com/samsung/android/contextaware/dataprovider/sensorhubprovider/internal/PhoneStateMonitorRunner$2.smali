.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;
.super Landroid/os/Handler;
.source "PhoneStateMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0xfeef

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->-wrap1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->Movement:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->-wrap1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdDirect:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->-wrap1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->Embower:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->-wrap1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->FinalLcdOff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->-wrap1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdOffInference:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;->notifyObserver()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "runner disabled"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
