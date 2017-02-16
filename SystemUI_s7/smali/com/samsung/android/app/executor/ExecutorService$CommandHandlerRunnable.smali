.class Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;
.super Ljava/lang/Object;
.source "ExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/executor/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandHandlerRunnable"
.end annotation


# instance fields
.field final CMD_CONTEXT:Ljava/lang/String;

.field final CMD_FILLING:Ljava/lang/String;

.field final CMD_STATE:Ljava/lang/String;

.field private final mJsonCommand:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/executor/ExecutorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/executor/ExecutorService;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "emes_state"

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;->CMD_STATE:Ljava/lang/String;

    const-string/jumbo v0, "emes_request_context"

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;->CMD_CONTEXT:Ljava/lang/String;

    const-string/jumbo v0, "emes_request_param_filling"

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;->CMD_FILLING:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;->mJsonCommand:Ljava/lang/String;

    # getter for: Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CommandHandlerRunnable : JSON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;->mJsonCommand:Ljava/lang/String;

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "command"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "emes_state"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "emes_request_context"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "emes_request_param_filling"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    # getter for: Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown command arrived : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v8, "content"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v8, "state"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/executor/StateReader;->read(Ljava/lang/String;)Lcom/samsung/android/app/executor/data/State;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    # getter for: Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;
    invoke-static {v8}, Lcom/samsung/android/app/executor/ExecutorService;->access$500(Lcom/samsung/android/app/executor/ExecutorService;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendState(Lcom/samsung/android/app/executor/data/State;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    # getter for: Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;
    invoke-static {v8}, Lcom/samsung/android/app/executor/ExecutorService;->access$500(Lcom/samsung/android/app/executor/ExecutorService;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/executor/ExecutorMediator;->requestContext()V

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "content"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v8, "slotFillingResult"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/app/executor/ParamFillingReader;->read(Ljava/lang/String;)Lcom/samsung/android/app/executor/data/ParamFilling;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    # getter for: Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;
    invoke-static {v8}, Lcom/samsung/android/app/executor/ExecutorService;->access$500(Lcom/samsung/android/app/executor/ExecutorService;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendParamFilling(Lcom/samsung/android/app/executor/data/ParamFilling;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
