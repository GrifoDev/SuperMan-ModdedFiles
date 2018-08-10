.class public Lcom/samsung/android/share/executor/ExecutorCommandHandler;
.super Ljava/lang/Object;
.source "ExecutorCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/executor/ExecutorCommandHandler$1;,
        Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;
    }
.end annotation


# static fields
.field public static final EMES_REQUEST_CONTEXT:Ljava/lang/String; = "emes_request_context"

.field public static final EMES_REQUEST_PARAM_FILLING:Ljava/lang/String; = "emes_request_param_filling"

.field public static final EMES_STATE:Ljava/lang/String; = "emes_state"

.field public static final ESEM_CONTEXT_RESULT:Ljava/lang/String; = "esem_context_result"

.field public static final ESEM_PARAM_FILLING_RESULT:Ljava/lang/String; = "esem_param_filling_result"

.field public static final ESEM_REQUEST_NLG:Ljava/lang/String; = "esem_request_nlg"

.field public static final ESEM_STATE_LOG:Ljava/lang/String; = "esem_state_log"

.field public static final ESEM_STATE_RESULT:Ljava/lang/String; = "esem_state_result"

.field private static final PACKAGE_EXECUTOR_MANAGER:Ljava/lang/String; = "com.samsung.android.bixby.agent"

.field public static final RESULT_FAILURE:Ljava/lang/String; = "failure"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "success"

.field private static final SEQ_NUM_RULE_CANCEL:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;


# instance fields
.field private ACTIION_EXECUTOR_MANAGER_COMMAND:Ljava/lang/String;

.field private BIXBY_COMMAND:Ljava/lang/String;

.field private mCmdObserver:Ljava/util/Observer;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppName:Ljava/lang/String;

.field private mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

.field private mLastRecvStateCmd:Lcom/samsung/android/share/executor/Command;

.field private mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCurrentAppName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvStateCmd:Lcom/samsung/android/share/executor/Command;

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.bixby.agent.ACTION_COMMAND"

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->ACTIION_EXECUTOR_MANAGER_COMMAND:Ljava/lang/String;

    const-string/jumbo v0, "bixby_command"

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->BIXBY_COMMAND:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler$1;-><init>(Lcom/samsung/android/share/executor/ExecutorCommandHandler;)V

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCmdObserver:Ljava/util/Observer;

    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/share/executor/IExecutorCommandListener;)Lcom/samsung/android/share/executor/ExecutorCommandHandler;
    .locals 2

    const-class v1, Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    :cond_0
    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-virtual {v0, p0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->setContext(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->setCurrentAppName(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-virtual {v0, p2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->setListener(Lcom/samsung/android/share/executor/IExecutorCommandListener;)V

    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->registerCommandObserver()V

    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createLogStateData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "\"appName\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCurrentAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\"logType\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\"stateIds\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/share/executor/ExecutorCommandHandler;
    .locals 2

    const-class v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mInstance:Lcom/samsung/android/share/executor/ExecutorCommandHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getStateInfo()Ljava/lang/String;
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    invoke-interface {v5}, Lcom/samsung/android/share/executor/IExecutorCommandListener;->onScreenStatesRequested()Lcom/samsung/android/share/executor/data/ScreenStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/share/executor/data/ScreenStateInfo;->getStates()Ljava/util/LinkedHashSet;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private handleContextCommand(Lcom/samsung/android/share/executor/Command;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendContextCommandResponse()V

    return-void
.end method

.method private handleParamFillingCommand(Lcom/samsung/android/share/executor/Command;)V
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Command Listener is not set"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/Command;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "slotFillingResult"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/share/executor/ParamFillingReader;->read(Ljava/lang/String;)Lcom/samsung/android/share/executor/data/ParamFilling;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    invoke-interface {v4, v2}, Lcom/samsung/android/share/executor/IExecutorCommandListener;->onParamFillingReceived(Lcom/samsung/android/share/executor/data/ParamFilling;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "success"

    invoke-direct {p0, v4}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendParamFillingCommandResponse(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "failure"

    invoke-direct {p0, v4}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendParamFillingCommandResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string/jumbo v4, "failure"

    invoke-direct {p0, v4}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendParamFillingCommandResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleStateCommand(Lcom/samsung/android/share/executor/Command;)V
    .locals 5

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/Command;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/share/executor/StateReader;->read(Ljava/lang/String;)Lcom/samsung/android/share/executor/data/State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/share/executor/IExecutorCommandListener;->onRuleCanceled(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    invoke-interface {v3, v2}, Lcom/samsung/android/share/executor/IExecutorCommandListener;->onStateReceived(Lcom/samsung/android/share/executor/data/State;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string/jumbo v3, "failure"

    invoke-virtual {p0, v3}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendStateCommandResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Log value cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->createLogStateData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/samsung/android/share/executor/Command;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/Command;-><init>()V

    const-string/jumbo v3, "1.0"

    invoke-virtual {v0, v3}, Lcom/samsung/android/share/executor/Command;->setVersion(Ljava/lang/String;)V

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v3}, Lcom/samsung/android/share/executor/Command;->setRequestId(Ljava/lang/String;)V

    const-string/jumbo v3, "esem_state_log"

    invoke-virtual {v0, v3}, Lcom/samsung/android/share/executor/Command;->setCommand(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/Command;->setContent(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendResponseToEm(Lcom/samsung/android/share/executor/Command;)V

    return-void
.end method

.method private registerCommandObserver()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/share/executor/CommandObserver;->getInstance()Lcom/samsung/android/share/executor/CommandObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/share/executor/CommandObserver;->deleteObservers()V

    invoke-static {}, Lcom/samsung/android/share/executor/CommandObserver;->getInstance()Lcom/samsung/android/share/executor/CommandObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCmdObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/CommandObserver;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public static requestStateCommand(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.bixby.agent.ACTION_CHOOSER_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "command"

    const-string/jumbo v3, "state_request"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.bixby.agent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestStateCommand: SecurityException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendContextCommandResponse()V
    .locals 8

    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getCommand()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "emes_request_context"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    :cond_0
    sget-object v6, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "No Received Command."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    if-eqz v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    invoke-interface {v6}, Lcom/samsung/android/share/executor/IExecutorCommandListener;->onScreenStatesRequested()Lcom/samsung/android/share/executor/data/ScreenStateInfo;

    move-result-object v5

    const-string/jumbo v6, "{ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/share/executor/data/ScreenStateInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\"appName\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCurrentAppName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "success"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "{\"result\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\"appContext\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v1, Lcom/samsung/android/share/executor/Command;

    invoke-direct {v1}, Lcom/samsung/android/share/executor/Command;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/share/executor/Command;->setVersion(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/share/executor/Command;->setRequestId(Ljava/lang/String;)V

    const-string/jumbo v6, "esem_context_result"

    invoke-virtual {v1, v6}, Lcom/samsung/android/share/executor/Command;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/executor/Command;->setContent(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendResponseToEm(Lcom/samsung/android/share/executor/Command;)V

    return-void

    :cond_2
    sget-object v6, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Executor Commnad Listener is not set."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "failure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "{\"result\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private sendNlgCommand(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvStateCmd:Lcom/samsung/android/share/executor/Command;

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No Received State Command."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/share/executor/Command;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/Command;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvStateCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/Command;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/Command;->setVersion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvStateCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/Command;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/Command;->setRequestId(Ljava/lang/String;)V

    const-string/jumbo v2, "esem_request_nlg"

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/Command;->setCommand(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/Command;->setContent(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendResponseToEm(Lcom/samsung/android/share/executor/Command;)V

    return-void
.end method

.method private sendParamFillingCommandResponse(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/Command;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "emes_request_param_filling"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No Received Parameter Filling Command."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/share/executor/Command;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/Command;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/Command;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/Command;->setVersion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v2}, Lcom/samsung/android/share/executor/Command;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/Command;->setRequestId(Ljava/lang/String;)V

    const-string/jumbo v2, "esem_param_filling_result"

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/Command;->setCommand(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"result\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/Command;->setContent(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendResponseToEm(Lcom/samsung/android/share/executor/Command;)V

    return-void
.end method

.method private sendResponseToEm(Lcom/samsung/android/share/executor/Command;)V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->ACTIION_EXECUTOR_MANAGER_COMMAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->BIXBY_COMMAND:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/Command;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.bixby.agent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send response to EM via Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/share/executor/Command;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendResponseToEm: SecurityException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    return-void
.end method

.method public getCurrentAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCurrentAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/samsung/android/share/executor/IExecutorCommandListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    return-object v0
.end method

.method public handleCommand(Landroid/content/Intent;)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->BIXBY_COMMAND:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/share/executor/Command;

    invoke-direct {v0, v2}, Lcom/samsung/android/share/executor/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/share/executor/Command;->getCommand()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v3, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid Command:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvCmd:Lcom/samsung/android/share/executor/Command;

    const-string/jumbo v3, "emes_state"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v0, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvStateCmd:Lcom/samsung/android/share/executor/Command;

    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->handleStateCommand(Lcom/samsung/android/share/executor/Command;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v3, "emes_request_context"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->handleContextCommand(Lcom/samsung/android/share/executor/Command;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "emes_request_param_filling"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->handleParamFillingCommand(Lcom/samsung/android/share/executor/Command;)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported Command"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logEnterState(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "state_enter"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->logState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logExitState(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "state_exit"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->logState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestNlg(Ljava/lang/String;Lcom/samsung/android/share/executor/data/NlgRequestInfo;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->MULTIPLE:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->requestNlg(Ljava/lang/String;Lcom/samsung/android/share/executor/data/NlgRequestInfo;Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;)V

    return-void
.end method

.method public requestNlg(Ljava/lang/String;Lcom/samsung/android/share/executor/data/NlgRequestInfo;Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "NlgRequestInfo cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\"currentStateIds\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->getStateInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\"requestedAppName\":\"%s\",%s,%s,%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p2}, Lcom/samsung/android/share/executor/data/NlgRequestInfo;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {p3}, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendNlgCommand(Ljava/lang/String;)V

    return-void
.end method

.method public sendStateCommandResponse(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvStateCmd:Lcom/samsung/android/share/executor/Command;

    if-nez v6, :cond_0

    sget-object v6, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "No Received State Command."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/share/executor/Command;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/Command;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvStateCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/share/executor/Command;->setVersion(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvStateCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/share/executor/Command;->setRequestId(Ljava/lang/String;)V

    const-string/jumbo v6, "esem_state_result"

    invoke-virtual {v0, v6}, Lcom/samsung/android/share/executor/Command;->setCommand(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string/jumbo v5, ""

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvStateCmd:Lcom/samsung/android/share/executor/Command;

    invoke-virtual {v6}, Lcom/samsung/android/share/executor/Command;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v6, "state"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move-object v3, v4

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "{\"result\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\"state\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/Command;->setContent(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->sendResponseToEm(Lcom/samsung/android/share/executor/Command;)V

    iput-object v8, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mLastRecvStateCmd:Lcom/samsung/android/share/executor/Command;

    return-void

    :catch_0
    move-exception v2

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setCurrentAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mCurrentAppName:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/samsung/android/share/executor/IExecutorCommandListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/ExecutorCommandHandler;->mListener:Lcom/samsung/android/share/executor/IExecutorCommandListener;

    return-void
.end method
