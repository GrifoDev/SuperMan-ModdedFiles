.class public Lcom/samsung/android/app/executor/ExecutorMediator;
.super Ljava/lang/Object;
.source "ExecutorMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;,
        Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;,
        Lcom/samsung/android/app/executor/ExecutorMediator$OnRuleCanceledListener;,
        Lcom/samsung/android/app/executor/ExecutorMediator$OnStateReceivedListener;,
        Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;,
        Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

.field private mIsTestMode:Z

.field private mLoc:Ljava/util/Locale;

.field private mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

.field private mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(v0019)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsTestMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/executor/ExecutorMediator;)Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/executor/ExecutorMediator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/executor/ExecutorMediator;
    .locals 2

    const-class v1, Lcom/samsung/android/app/executor/ExecutorMediator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/executor/ExecutorMediator;->setAppName(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setAppVersion(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-direct {v0}, Lcom/samsung/android/app/executor/ExecutorMediator;-><init>()V

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.intelligence.executormanager"

    const-string/jumbo v3, "com.samsung.android.intelligence.executormanager.ExecutorManagerLoggingReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appName"

    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appVersion"

    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "timestamp"

    invoke-direct {p0}, Lcom/samsung/android/app/executor/ExecutorMediator;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Intent created to send for command(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/executor/ExecutorMediator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-class v1, Lcom/samsung/android/app/executor/ExecutorMediator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Instance is null. please call createInstance() for the first time."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTimestamp()Ljava/lang/Long;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "stateIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Context cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Log value cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static toBcp47Language(Ljava/util/Locale;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x2d

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_3

    const/16 v0, 0x2d

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    const-string/jumbo v2, "und"

    :cond_2
    :goto_1
    const-string/jumbo v5, "\\p{Alpha}{2}|\\p{Digit}{3}"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_2
    const-string/jumbo v5, "\\p{Alnum}{5,8}|\\p{Digit}\\p{Alnum}{3}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_3
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_4
    const-string/jumbo v5, "NO"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "NY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v2, "nn"

    const-string/jumbo v3, "NO"

    const-string/jumbo v4, ""

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "\\p{Alpha}{2,8}"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "iw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "in"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "ji"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v2, "yi"

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "he"

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "id"

    goto :goto_1

    :cond_8
    const-string/jumbo v3, ""

    goto :goto_2

    :cond_9
    const-string/jumbo v4, ""

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method


# virtual methods
.method public clearInterimStateListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    return-void
.end method

.method public logEnterState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "state_enter"

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logEnterStates(Landroid/content/Context;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v2, "state_enter"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public logExitState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "state_exit"

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logExitStates(Landroid/content/Context;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v2, "state_exit"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method requestContext()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v3, :cond_2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{ \"stateId\":["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    :cond_0
    :goto_1
    const-string/jumbo v3, "],\"appName\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\"appVersion\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    const-string/jumbo v4, "app_context"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Response listener cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-interface {v3}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onScreenStatesRequested()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public requestNlg(Lcom/samsung/android/app/executor/data/NlgRequestInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLoc:Ljava/util/Locale;

    if-nez v2, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/executor/ExecutorMediator;->toBcp47Language(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v2, "\"language\":\"%s\",\"requestedAppName\":\"%s\",%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    const-string/jumbo v3, "nlg"

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Response listener cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "NlgRequestInfo cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLoc:Ljava/util/Locale;

    invoke-static {v2}, Lcom/samsung/android/app/executor/ExecutorMediator;->toBcp47Language(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method sendParamFilling(Lcom/samsung/android/app/executor/data/ParamFilling;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "InterimListener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    const-string/jumbo v1, "param_filling"

    const-string/jumbo v2, "fail"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onParamFillingReceived(Lcom/samsung/android/app/executor/data/ParamFilling;)V

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    const-string/jumbo v1, "param_filling"

    const-string/jumbo v2, "success"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Response listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sendState(Lcom/samsung/android/app/executor/data/State;)I
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Lcom/samsung/android/app/executor/ExecutorMediator$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/executor/ExecutorMediator$1;-><init>(Lcom/samsung/android/app/executor/ExecutorMediator;Lcom/samsung/android/app/executor/data/State;)V

    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    return v3

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsTestMode:Z

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SeqNo 0 found. isTestMode true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return v3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;->onStateReceived(Lcom/samsung/android/app/executor/data/State;)V

    return v3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    if-nez v1, :cond_6

    :goto_2
    return v3

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No listener is set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onRuleCanceled(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;->onRuleCanceled(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iput-boolean v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsTestMode:Z

    goto :goto_0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppVersion:Ljava/lang/String;

    return-void
.end method

.method public setInterimStateListener(Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    return-void
.end method

.method setResponseCallback(Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    return-void
.end method

.method public setStartStateListener(Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    return-void
.end method
