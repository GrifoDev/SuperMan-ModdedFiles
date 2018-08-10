.class Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;
.super Landroid/os/Handler;
.source "SemVideoFittingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemVideoFittingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mSmartFittingHelper:Lcom/samsung/android/media/SemVideoFittingHelper;

.field final synthetic this$0:Lcom/samsung/android/media/SemVideoFittingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/SemVideoFittingHelper;Lcom/samsung/android/media/SemVideoFittingHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemVideoFittingHelper;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->mSmartFittingHelper:Lcom/samsung/android/media/SemVideoFittingHelper;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v0, "SemVideoFittingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BlackBar Detectetion was just finished, result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemVideoFittingHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemVideoFittingHelper;->-get0(Lcom/samsung/android/media/SemVideoFittingHelper;)Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemVideoFittingHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemVideoFittingHelper;->-get0(Lcom/samsung/android/media/SemVideoFittingHelper;)Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;->onCompleted(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemVideoFittingHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemVideoFittingHelper;->-get0(Lcom/samsung/android/media/SemVideoFittingHelper;)Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;->onCompleted(Z)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "SemVideoFittingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemVideoFittingHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemVideoFittingHelper;->-get0(Lcom/samsung/android/media/SemVideoFittingHelper;)Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemVideoFittingHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemVideoFittingHelper;->-get0(Lcom/samsung/android/media/SemVideoFittingHelper;)Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;->onError(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
