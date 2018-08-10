.class final Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;
.super Landroid/os/Handler;
.source "GenericCoverServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/GenericCoverServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericPressServiceControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/GenericCoverServiceController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/GenericCoverServiceController;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/cover/GenericCoverServiceController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/cover/GenericCoverServiceController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/cover/GenericCoverServiceController;->-wrap1(Lcom/android/server/cover/GenericCoverServiceController;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/cover/GenericCoverServiceController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/cover/GenericCoverServiceController;->-wrap0(Lcom/android/server/cover/GenericCoverServiceController;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
