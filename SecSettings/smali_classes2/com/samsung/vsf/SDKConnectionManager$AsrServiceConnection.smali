.class Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;
.super Ljava/lang/Object;
.source "SDKConnectionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/SDKConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsrServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/vsf/SDKConnectionManager;


# direct methods
.method private constructor <init>(Lcom/samsung/vsf/SDKConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/vsf/SDKConnectionManager;Lcom/samsung/vsf/SDKConnectionManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;-><init>(Lcom/samsung/vsf/SDKConnectionManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ASRClient-CM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-static {p2}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/vsf/SDKConnectionManager;->access$102(Lcom/samsung/vsf/SDKConnectionManager;Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;)Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/vsf/SDKConnectionManager;->access$202(I)I

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-static {v0}, Lcom/samsung/vsf/SDKConnectionManager;->access$300(Lcom/samsung/vsf/SDKConnectionManager;)Ljava/util/Queue;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-static {v0}, Lcom/samsung/vsf/SDKConnectionManager;->access$400(Lcom/samsung/vsf/SDKConnectionManager;)Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-static {v0}, Lcom/samsung/vsf/SDKConnectionManager;->access$300(Lcom/samsung/vsf/SDKConnectionManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, Lcom/samsung/vsf/SDKConnectionManager$SDKHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-static {v0}, Lcom/samsung/vsf/SDKConnectionManager;->access$300(Lcom/samsung/vsf/SDKConnectionManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "ASRClient-CM"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/vsf/SDKConnectionManager;->access$202(I)I

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-static {v0}, Lcom/samsung/vsf/SDKConnectionManager;->access$500(Lcom/samsung/vsf/SDKConnectionManager;)V

    iget-object v0, p0, Lcom/samsung/vsf/SDKConnectionManager$AsrServiceConnection;->this$0:Lcom/samsung/vsf/SDKConnectionManager;

    invoke-static {v0}, Lcom/samsung/vsf/SDKConnectionManager;->access$600(Lcom/samsung/vsf/SDKConnectionManager;)V

    return-void
.end method
