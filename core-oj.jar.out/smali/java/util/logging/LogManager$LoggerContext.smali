.class Ljava/util/logging/LogManager$LoggerContext;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoggerContext"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final namedLoggers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/logging/LogManager$LoggerWeakRef;",
            ">;"
        }
    .end annotation
.end field

.field private final requiresDefaultLoggers:Z

.field private final root:Ljava/util/logging/LogManager$LogNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/logging/LogManager$LoggerContext;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/logging/LogManager$LoggerContext;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Z)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/logging/LogManager$LoggerContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/logging/LogManager$LoggerContext;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/logging/LogManager$LogNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava/util/logging/LogManager$LogNode;-><init>(Ljava/util/logging/LogManager$LogNode;Ljava/util/logging/LogManager$LoggerContext;)V

    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->root:Ljava/util/logging/LogManager$LogNode;

    iput-boolean p1, p0, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers:Z

    return-void
.end method

.method private ensureAllDefaultLoggers(Ljava/util/logging/Logger;)V
    .locals 2

    iget-boolean v1, p0, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    :cond_0
    const-string/jumbo v1, "global"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    invoke-direct {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    :cond_1
    return-void
.end method

.method private ensureDefaultLogger(Ljava/util/logging/Logger;)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    sget-boolean v1, Ljava/util/logging/LogManager$LoggerContext;->-assertionsDisabled:Z

    if-nez v1, :cond_5

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-object v1, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    if-eq p1, v1, :cond_3

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v1

    if-ne p1, v1, :cond_0

    :cond_3
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    :cond_4
    return-void

    :cond_5
    return-void
.end method

.method private ensureInitialized()V
    .locals 1

    iget-boolean v0, p0, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    invoke-direct {p0, v0}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    :cond_0
    return-void
.end method

.method private processParentHandlers(Ljava/util/logging/Logger;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v3, Ljava/util/logging/LogManager$LoggerContext$1;

    invoke-direct {v3, p0, p1, p2}, Ljava/util/logging/LogManager$LoggerContext$1;-><init>(Ljava/util/logging/LogManager$LoggerContext;Ljava/util/logging/Logger;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v3, "."

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".level"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".handlers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0, v2, v6}, Ljava/util/logging/LogManager$LoggerContext;->demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method addLocalLogger(Ljava/util/logging/Logger;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers:Z

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    move-result v0

    return v0
.end method

.method addLocalLogger(Ljava/util/logging/Logger;Ljava/util/logging/LogManager;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers:Z

    invoke-virtual {p0, p1, v0, p2}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;ZLjava/util/logging/LogManager;)Z

    move-result v0

    return v0
.end method

.method addLocalLogger(Ljava/util/logging/Logger;Z)Z
    .locals 1

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;ZLjava/util/logging/LogManager;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized addLocalLogger(Ljava/util/logging/Logger;ZLjava/util/logging/LogManager;)Z
    .locals 9

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$LoggerContext;->ensureAllDefaultLoggers(Ljava/util/logging/Logger;)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_1
    :try_start_1
    iget-object v7, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/LogManager$LoggerWeakRef;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-virtual {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->removeLogger(Ljava/lang/String;)V

    :cond_2
    new-instance v6, Ljava/util/logging/LogManager$LoggerWeakRef;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, p3, p1}, Ljava/util/logging/LogManager$LoggerWeakRef;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V

    iget-object v7, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v7, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".level"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1, v0}, Ljava/util/logging/LogManager;->-wrap2(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    :cond_3
    invoke-direct {p0, p1, v1}, Ljava/util/logging/LogManager$LoggerContext;->processParentHandlers(Ljava/util/logging/Logger;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->getNode(Ljava/lang/String;)Ljava/util/logging/LogManager$LogNode;

    move-result-object v2

    iput-object v6, v2, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    const/4 v5, 0x0

    iget-object v4, v2, Ljava/util/logging/LogManager$LogNode;->parent:Ljava/util/logging/LogManager$LogNode;

    :goto_0
    if-eqz v4, :cond_4

    iget-object v3, v4, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/logging/Logger;

    if-eqz v5, :cond_7

    :cond_4
    if-eqz v5, :cond_5

    invoke-static {p1, v5}, Ljava/util/logging/LogManager;->-wrap3(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    :cond_5
    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager$LogNode;->walkAndSetParent(Ljava/util/logging/Logger;)V

    invoke-virtual {v6, v2}, Ljava/util/logging/LogManager$LoggerWeakRef;->setNode(Ljava/util/logging/LogManager$LogNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x1

    monitor-exit p0

    return v7

    :cond_6
    const/4 v7, 0x0

    monitor-exit p0

    return v7

    :cond_7
    :try_start_2
    iget-object v4, v4, Ljava/util/logging/LogManager$LogNode;->parent:Ljava/util/logging/LogManager$LogNode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/logging/LogManager;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/logging/LogManager$LoggerContext;->ensureInitialized()V

    iget-object v2, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v3

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Logger;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager$LoggerContext;->removeLogger(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getLoggerNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/logging/LogManager$LoggerContext;->ensureInitialized()V

    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNode(Ljava/lang/String;)Ljava/util/logging/LogManager$LogNode;
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Ljava/util/logging/LogManager$LoggerContext;->root:Ljava/util/logging/LogManager$LogNode;

    return-object v4

    :cond_1
    iget-object v3, p0, Ljava/util/logging/LogManager$LoggerContext;->root:Ljava/util/logging/LogManager$LogNode;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    const-string/jumbo v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v4, v3, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    :cond_2
    iget-object v4, v3, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/LogManager$LogNode;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/logging/LogManager$LogNode;

    invoke-direct {v0, v3, p0}, Ljava/util/logging/LogManager$LogNode;-><init>(Ljava/util/logging/LogManager$LogNode;Ljava/util/logging/LogManager$LoggerContext;)V

    iget-object v4, v3, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v3, v0

    goto :goto_0

    :cond_4
    move-object v1, p1

    const-string/jumbo p1, ""

    goto :goto_1

    :cond_5
    return-object v3
.end method

.method removeLogger(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
