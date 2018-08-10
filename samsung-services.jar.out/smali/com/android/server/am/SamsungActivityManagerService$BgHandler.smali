.class final Lcom/android/server/am/SamsungActivityManagerService$BgHandler;
.super Landroid/os/Handler;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BgHandler"
.end annotation


# static fields
.field static final DUMPSTATE:I = 0x0

.field static final SCHEDULE_DUMPSTATE_DELAY:I = 0x2710


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SamsungActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SamsungActivityManagerService;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$BgHandler;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x0

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
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$BgHandler;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-static {v1, v0}, Lcom/android/server/am/SamsungActivityManagerService;->-wrap0(Lcom/android/server/am/SamsungActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
