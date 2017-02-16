.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v1, p0, v8}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Skipping screenshot because storage is locked!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get1()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v0, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-set0(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "sweepDirection"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "capturedDisplay"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "capturedOrigin"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get1()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_2

    move v2, v3

    :goto_1
    iget v9, p1, Landroid/os/Message;->arg2:I

    if-lez v9, :cond_3

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZIII)V

    goto :goto_0

    :cond_2
    move v2, v7

    goto :goto_1

    :cond_3
    move v3, v7

    goto :goto_2

    :sswitch_1
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get1()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v2

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_4

    move v0, v3

    :goto_3
    iget v9, p1, Landroid/os/Message;->arg2:I

    if-lez v9, :cond_5

    :goto_4
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V

    goto :goto_0

    :cond_4
    move v0, v7

    goto :goto_3

    :cond_5
    move v3, v7

    goto :goto_4

    :sswitch_2
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get1()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_6

    move v2, v3

    :goto_5
    iget v9, p1, Landroid/os/Message;->arg2:I

    if-lez v9, :cond_7

    :goto_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotWindow(Ljava/lang/Runnable;ZZIIILandroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    move v2, v7

    goto :goto_5

    :cond_7
    move v3, v7

    goto :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
