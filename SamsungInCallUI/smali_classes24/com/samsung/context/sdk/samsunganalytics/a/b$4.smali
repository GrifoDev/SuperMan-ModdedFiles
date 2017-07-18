.class Lcom/samsung/context/sdk/samsunganalytics/a/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/a/b;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->c(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "uncaughtException"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/c/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;)Lcom/samsung/context/sdk/samsunganalytics/a/c/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$CustomBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$CustomBuilder;-><init>()V

    const-string v3, "pn"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$CustomBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$CustomBuilder;

    const-string v3, "ecn"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$CustomBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$CustomBuilder;

    const-string v3, "exd"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$CustomBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$CustomBuilder;

    const-string v1, "t"

    const-string v3, "ex"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$CustomBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$CustomBuilder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$CustomBuilder;->build()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->a(Ljava/util/Map;Z)I

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->d(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->d(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
