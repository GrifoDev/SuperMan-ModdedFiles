.class Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;
.super Ljava/lang/Object;
.source "UcmAgentWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string/jumbo v0, "UcmAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->-get1(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->-set1(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;)Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string/jumbo v0, "UcmAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->-set1(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;)Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->-get0(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->-wrap0(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    :cond_0
    return-void
.end method
