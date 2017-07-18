.class final Ljava/util/logging/LogManager$1;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v2, "java.util.logging.manager"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/LogManager;

    invoke-static {v2}, Ljava/util/logging/LogManager;->-set2(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/logging/LogManager;

    invoke-direct {v2}, Ljava/util/logging/LogManager;-><init>()V

    invoke-static {v2}, Ljava/util/logging/LogManager;->-set2(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager;

    :cond_1
    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v2

    new-instance v3, Ljava/util/logging/LogManager$RootLogger;

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v6}, Ljava/util/logging/LogManager$RootLogger;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$RootLogger;)V

    invoke-static {v2, v3}, Ljava/util/logging/LogManager;->-set3(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)Ljava/util/logging/Logger;

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v2

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/LogManager;->-get4(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v2

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/LogManager;->-get5(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v2

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    sget-object v2, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setLogManager(Ljava/util/logging/LogManager;)V

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    invoke-virtual {v2, v3}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/LogManager;->-get4(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    invoke-virtual {v2, v3, v5}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/LogManager;->-get5(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    invoke-virtual {v2, v3, v5}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    return-object v6

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not load Logmanager \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
