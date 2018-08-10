.class Lcom/android/server/display/DlnaController$1;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DlnaController;->sendDeviceVolumeKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DlnaController;

.field final synthetic val$keyEvent:I


# direct methods
.method constructor <init>(Lcom/android/server/display/DlnaController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    iput p2, p0, Lcom/android/server/display/DlnaController$1;->val$keyEvent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/DlnaController$1;->val$keyEvent:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/16 v1, 0xa

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v2}, Lcom/android/server/display/DlnaController;->-get3(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DlnaController$1;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v2}, Lcom/android/server/display/DlnaController;->-get3(Lcom/android/server/display/DlnaController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget v2, p0, Lcom/android/server/display/DlnaController$1;->val$keyEvent:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v1, 0xb

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/server/display/DlnaController$1;->val$keyEvent:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/16 v1, 0xc

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/server/display/DlnaController$1;->val$keyEvent:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/16 v1, 0xd

    goto :goto_0
.end method
