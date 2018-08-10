.class Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;
.super Lcom/samsung/android/smartface/ISmartFaceClient$Stub;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartFaceClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/smartface/SmartFaceManager;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {p0}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;-><init>()V

    const-string/jumbo v0, "SmartFaceManager"

    const-string/jumbo v1, "New SmartFaceClient"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onInfo(ILcom/samsung/android/smartface/FaceInfo;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-get3(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-get3(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v2, p2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-get3(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-get2(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-get2(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v2, p2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-get2(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SmartFaceManager"

    const-string/jumbo v2, "EventHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
