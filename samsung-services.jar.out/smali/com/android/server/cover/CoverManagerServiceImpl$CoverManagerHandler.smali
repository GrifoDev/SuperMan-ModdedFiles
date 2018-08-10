.class final Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;
.super Landroid/os/Handler;
.source "CoverManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/os/Looper;Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-wrap9(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->-wrap1(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/input/InputManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->coverEventFinished()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
