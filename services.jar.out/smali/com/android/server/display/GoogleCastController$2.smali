.class Lcom/android/server/display/GoogleCastController$2;
.super Ljava/lang/Object;
.source "GoogleCastController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/GoogleCastController;->sendRemoteDisplayStateChangeEvent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/GoogleCastController;

.field final synthetic val$event:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/display/GoogleCastController;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/GoogleCastController$2;->this$0:Lcom/android/server/display/GoogleCastController;

    iput p2, p0, Lcom/android/server/display/GoogleCastController$2;->val$state:I

    iput p3, p0, Lcom/android/server/display/GoogleCastController$2;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "status"

    iget v3, p0, Lcom/android/server/display/GoogleCastController$2;->val$state:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/display/GoogleCastController$2;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v2}, Lcom/android/server/display/GoogleCastController;->-get3(Lcom/android/server/display/GoogleCastController;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/GoogleCastController$2;->val$event:I

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-string/jumbo v2, "GoogleCastController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendRemoteDisplayStateChangeEvent state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/GoogleCastController$2;->val$state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/GoogleCastController$2;->val$event:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/GoogleCastController$2;->this$0:Lcom/android/server/display/GoogleCastController;

    invoke-static {v2}, Lcom/android/server/display/GoogleCastController;->-get3(Lcom/android/server/display/GoogleCastController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
