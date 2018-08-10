.class Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;
.super Landroid/os/Handler;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->-wrap0(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->-wrap1(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/aod/AODToast;

    invoke-static {v1, v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->-wrap2(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Lcom/samsung/android/aod/AODToast;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
