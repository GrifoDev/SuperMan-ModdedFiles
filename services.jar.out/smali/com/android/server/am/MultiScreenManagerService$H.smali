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
.field public static final DETACH_ACTIVITY_DISPLAY_MSG:I = 0x1


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
    .locals 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/MultiScreenManagerService;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage() : DETACH_ACTIVITY_DISPLAY_MSG d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.virtualscreen.ACTION_DETACH_ACTIVITY_DISPLAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService$H;->this$0:Lcom/android/server/am/MultiScreenManagerService;

    invoke-static {v2}, Lcom/android/server/am/MultiScreenManagerService;->-get2(Lcom/android/server/am/MultiScreenManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
