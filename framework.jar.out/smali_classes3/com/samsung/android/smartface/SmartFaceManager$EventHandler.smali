.class Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
.super Landroid/os/Handler;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mManager:Lcom/samsung/android/smartface/SmartFaceManager;

.field final synthetic this$0:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    iput-object p2, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->-get4(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->-get4(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/smartface/FaceInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;->onInfo(Lcom/samsung/android/smartface/FaceInfo;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->-get4(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->-get4(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;->onRegistered(Lcom/samsung/android/smartface/SmartFaceManager;I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "SmartFaceManager"

    const-string/jumbo v1, "Listener does not implements SmartFaceInfoListener2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->-get4(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->-get4(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;->onUnregistered(Lcom/samsung/android/smartface/SmartFaceManager;I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SmartFaceManager"

    const-string/jumbo v1, "Listener does not implements SmartFaceInfoListener2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "SmartFaceManager"

    const-string/jumbo v1, "Listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
