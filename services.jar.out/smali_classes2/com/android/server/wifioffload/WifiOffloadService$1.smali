.class Lcom/android/server/wifioffload/WifiOffloadService$1;
.super Landroid/os/Handler;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifioffload/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifioffload/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService$1;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string/jumbo v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message received , msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService$1;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService$1;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v1}, Lcom/android/server/wifioffload/WifiOffloadService;->-get2(Lcom/android/server/wifioffload/WifiOffloadService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifioffload/WifiOffloadService;->-wrap0(Lcom/android/server/wifioffload/WifiOffloadService;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService$1;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v0}, Lcom/android/server/wifioffload/WifiOffloadService;->-wrap1(Lcom/android/server/wifioffload/WifiOffloadService;)V

    :cond_1
    return-void
.end method
