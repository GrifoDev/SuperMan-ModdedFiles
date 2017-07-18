.class Lcom/samsung/android/app/executor/ExecutorMediator$1;
.super Ljava/lang/Object;
.source "ExecutorMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/executor/ExecutorMediator;->sendState(Lcom/samsung/android/app/executor/data/State;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/executor/ExecutorMediator;

.field final synthetic val$state:Lcom/samsung/android/app/executor/data/State;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/executor/ExecutorMediator;Lcom/samsung/android/app/executor/data/State;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator$1;->this$0:Lcom/samsung/android/app/executor/ExecutorMediator;

    iput-object p2, p0, Lcom/samsung/android/app/executor/ExecutorMediator$1;->val$state:Lcom/samsung/android/app/executor/data/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator$1;->this$0:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-static {v0}, Lcom/samsung/android/app/executor/ExecutorMediator;->access$000(Lcom/samsung/android/app/executor/ExecutorMediator;)Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator$1;->this$0:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-static {v0}, Lcom/samsung/android/app/executor/ExecutorMediator;->access$000(Lcom/samsung/android/app/executor/ExecutorMediator;)Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator$1;->val$state:Lcom/samsung/android/app/executor/data/State;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onStateReceived(Lcom/samsung/android/app/executor/data/State;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator$1;->this$0:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-static {v0}, Lcom/samsung/android/app/executor/ExecutorMediator;->access$100(Lcom/samsung/android/app/executor/ExecutorMediator;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
