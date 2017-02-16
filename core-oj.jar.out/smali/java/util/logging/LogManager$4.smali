.class Ljava/util/logging/LogManager$4;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;->loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;

.field final synthetic val$handlersPropertyName:Ljava/lang/String;

.field final synthetic val$logger:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;Ljava/lang/String;Ljava/util/logging/Logger;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .param p2, "val$handlersPropertyName"    # Ljava/lang/String;
    .param p3, "val$logger"    # Ljava/util/logging/Logger;

    .prologue
    .line 767
    iput-object p1, p0, Ljava/util/logging/LogManager$4;->this$0:Ljava/util/logging/LogManager;

    iput-object p2, p0, Ljava/util/logging/LogManager$4;->val$handlersPropertyName:Ljava/lang/String;

    iput-object p3, p0, Ljava/util/logging/LogManager$4;->val$logger:Ljava/util/logging/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 769
    iget-object v8, p0, Ljava/util/logging/LogManager$4;->this$0:Ljava/util/logging/LogManager;

    iget-object v9, p0, Ljava/util/logging/LogManager$4;->val$handlersPropertyName:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/util/logging/LogManager;->-wrap1(Ljava/util/logging/LogManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 770
    .local v6, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v6

    if-ge v3, v8, :cond_2

    .line 771
    aget-object v7, v6, v3

    .line 773
    .local v7, "word":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/util/logging/LogManager;->-wrap0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 774
    .local v0, "clz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/Handler;

    .line 777
    .local v2, "hdl":Ljava/util/logging/Handler;
    iget-object v8, p0, Ljava/util/logging/LogManager$4;->this$0:Ljava/util/logging/LogManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".level"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 778
    .local v5, "levs":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 779
    invoke-static {v5}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v4

    .line 780
    .local v4, "l":Ljava/util/logging/Level;
    if-eqz v4, :cond_1

    .line 781
    invoke-virtual {v2, v4}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    .line 788
    .end local v4    # "l":Ljava/util/logging/Level;
    :cond_0
    :goto_1
    iget-object v8, p0, Ljava/util/logging/LogManager$4;->val$logger:Ljava/util/logging/Logger;

    invoke-virtual {v8, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 770
    .end local v0    # "clz":Ljava/lang/Class;
    .end local v2    # "hdl":Ljava/util/logging/Handler;
    .end local v5    # "levs":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 784
    .restart local v0    # "clz":Ljava/lang/Class;
    .restart local v2    # "hdl":Ljava/util/logging/Handler;
    .restart local v4    # "l":Ljava/util/logging/Level;
    .restart local v5    # "levs":Ljava/lang/String;
    :cond_1
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t set level for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 789
    .end local v0    # "clz":Ljava/lang/Class;
    .end local v2    # "hdl":Ljava/util/logging/Handler;
    .end local v4    # "l":Ljava/util/logging/Level;
    .end local v5    # "levs":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 790
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t load log handler \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 791
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 795
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v7    # "word":Ljava/lang/String;
    :cond_2
    return-object v11
.end method
