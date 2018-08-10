.class Lcom/android/server/pm/KnoxTimeoutHandler$2;
.super Landroid/app/UserSwitchObserver;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$2;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$2;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v0}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get5(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$2;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v0}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get5(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$2;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->-get5(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
