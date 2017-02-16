.class Ljava/util/logging/LogManager$LogNode;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogNode"
.end annotation


# instance fields
.field children:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/logging/LogManager$LogNode;",
            ">;"
        }
    .end annotation
.end field

.field final context:Ljava/util/logging/LogManager$LoggerContext;

.field loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

.field parent:Ljava/util/logging/LogManager$LogNode;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager$LogNode;Ljava/util/logging/LogManager$LoggerContext;)V
    .locals 0
    .param p1, "parent"    # Ljava/util/logging/LogManager$LogNode;
    .param p2, "context"    # Ljava/util/logging/LogManager$LoggerContext;

    .prologue
    .line 1373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1374
    iput-object p1, p0, Ljava/util/logging/LogManager$LogNode;->parent:Ljava/util/logging/LogManager$LogNode;

    .line 1375
    iput-object p2, p0, Ljava/util/logging/LogManager$LogNode;->context:Ljava/util/logging/LogManager$LoggerContext;

    .line 1373
    return-void
.end method


# virtual methods
.method walkAndSetParent(Ljava/util/logging/Logger;)V
    .locals 6
    .param p1, "parent"    # Ljava/util/logging/Logger;

    .prologue
    const/4 v5, 0x0

    .line 1381
    iget-object v4, p0, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 1382
    return-void

    .line 1384
    :cond_0
    iget-object v4, p0, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1385
    .local v3, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LogNode;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1386
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LogNode;

    .line 1387
    .local v1, "node":Ljava/util/logging/LogManager$LogNode;
    iget-object v2, v1, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 1388
    .local v2, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-nez v2, :cond_1

    move-object v0, v5

    .line 1389
    .local v0, "logger":Ljava/util/logging/Logger;
    :goto_1
    if-nez v0, :cond_2

    .line 1390
    invoke-virtual {v1, p1}, Ljava/util/logging/LogManager$LogNode;->walkAndSetParent(Ljava/util/logging/Logger;)V

    goto :goto_0

    .line 1388
    .end local v0    # "logger":Ljava/util/logging/Logger;
    :cond_1
    invoke-virtual {v2}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/logging/Logger;

    move-object v0, v4

    goto :goto_1

    .line 1392
    .restart local v0    # "logger":Ljava/util/logging/Logger;
    :cond_2
    invoke-static {v0, p1}, Ljava/util/logging/LogManager;->-wrap3(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    goto :goto_0

    .line 1380
    .end local v0    # "logger":Ljava/util/logging/Logger;
    .end local v1    # "node":Ljava/util/logging/LogManager$LogNode;
    .end local v2    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_3
    return-void
.end method
