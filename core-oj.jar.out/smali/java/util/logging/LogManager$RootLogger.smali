.class Ljava/util/logging/LogManager$RootLogger;
.super Ljava/util/logging/Logger;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootLogger"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method private constructor <init>(Ljava/util/logging/LogManager;)V
    .locals 2

    iput-object p1, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/logging/LogManager;->-get0()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager$RootLogger;->setLevel(Ljava/util/logging/Level;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$RootLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$RootLogger;-><init>(Ljava/util/logging/LogManager;)V

    return-void
.end method


# virtual methods
.method public addHandler(Ljava/util/logging/Handler;)V
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    invoke-super {p0, p1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    return-void
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    invoke-super {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    invoke-super {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    invoke-super {p0, p1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    return-void
.end method
