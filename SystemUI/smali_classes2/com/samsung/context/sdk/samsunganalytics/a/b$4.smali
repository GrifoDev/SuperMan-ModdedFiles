.class Lcom/samsung/context/sdk/samsunganalytics/a/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/a/b;


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->c(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->d(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "uncaughtException"

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/c/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;)Lcom/samsung/context/sdk/samsunganalytics/a/c/a;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->setMessage(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pn"

    invoke-virtual {v1, v4, v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->isCrash(Z)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->a(Ljava/util/Map;)I

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->d(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
