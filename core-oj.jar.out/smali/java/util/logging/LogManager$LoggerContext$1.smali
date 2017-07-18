.class Ljava/util/logging/LogManager$LoggerContext$1;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager$LoggerContext;->processParentHandlers(Ljava/util/logging/Logger;Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/logging/LogManager$LoggerContext;

.field final synthetic val$logger:Ljava/util/logging/Logger;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager$LoggerContext;Ljava/util/logging/Logger;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerContext$1;->this$1:Ljava/util/logging/LogManager$LoggerContext;

    iput-object p2, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$logger:Ljava/util/logging/Logger;

    iput-object p3, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4

    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$logger:Ljava/util/logging/Logger;

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-static {}, Ljava/util/logging/LogManager;->-get2()Ljava/util/logging/LogManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".useParentHandlers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerContext$1;->val$logger:Ljava/util/logging/Logger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
