.class final Lcom/android/server/am/MultiScreenManagerService$H;
.super Landroid/os/Handler;
.source "MultiScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiScreenManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field public static final DETACH_ACTIVITY_DISPLAY_MSG:I = 0x3

.field public static final MOVE_TASK_TO_SCREEN_MSG:I = 0x1

.field public static final PAUSE_VIRTUAL_SCREEN_MSG:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiScreenManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/MultiScreenManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiScreenManagerService$H;->this$0:Lcom/android/server/am/MultiScreenManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MultiScreenManagerService;Lcom/android/server/am/MultiScreenManagerService$H;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiScreenManagerService$H;-><init>(Lcom/android/server/am/MultiScreenManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/server/am/MultiScreenManagerService;->-get1()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "handleMessage() : MOVE_TASK_TO_FRONT_MSG"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v6, "MultiScreen:activityoption"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService$H;->this$0:Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {v6, v4, v5, v3}, Lcom/android/server/am/MultiScreenManagerService;->handleMoveTaskToScreen(IILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/android/server/am/MultiScreenManagerService;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleMessage() : PAUSE_VIRTUAL_SCREEN_MSG d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService$H;->this$0:Lcom/android/server/am/MultiScreenManagerService;

    invoke-static {v6, v1}, Lcom/android/server/am/MultiScreenManagerService;->-wrap0(Lcom/android/server/am/MultiScreenManagerService;I)V

    goto :goto_0

    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/android/server/am/MultiScreenManagerService;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleMessage() : DETACH_ACTIVITY_DISPLAY_MSG d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.virtualscreen.ACTION_DETACH_ACTIVITY_DISPLAY"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService$H;->this$0:Lcom/android/server/am/MultiScreenManagerService;

    invoke-static {v6}, Lcom/android/server/am/MultiScreenManagerService;->-get2(Lcom/android/server/am/MultiScreenManagerService;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
