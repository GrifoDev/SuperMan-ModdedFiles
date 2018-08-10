.class final Lcom/android/server/vr/GearVrManagerService$GearVrHandler;
.super Landroid/os/Handler;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GearVrHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/GearVrManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v4, v2}, Lcom/android/server/vr/GearVrManagerService;->-wrap32(Lcom/android/server/vr/GearVrManagerService;I)V

    goto :goto_0

    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    :goto_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v4, v0, v1, v3}, Lcom/android/server/vr/GearVrManagerService;->-wrap31(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
