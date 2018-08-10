.class Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;
.super Ljava/lang/Object;
.source "KnoxTimeoutHandler.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnoxPointerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get2(Lcom/android/server/pm/KnoxTimeoutHandler;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get5(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v2}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get5(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v3}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get2(Lcom/android/server/pm/KnoxTimeoutHandler;)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
