.class final Ljava/util/logging/LogManager$LoggerWeakRef;
.super Ljava/lang/ref/WeakReference;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoggerWeakRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/util/logging/Logger;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private node:Ljava/util/logging/LogManager$LogNode;

.field private parentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .param p2, "logger"    # Ljava/util/logging/Logger;

    .prologue
    .line 831
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->this$0:Ljava/util/logging/LogManager;

    .line 832
    invoke-static {p1}, Ljava/util/logging/LogManager;->-get1(Ljava/util/logging/LogManager;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 834
    invoke-virtual {p2}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    .line 831
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 839
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    if-eqz v1, :cond_0

    .line 842
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    iget-object v1, v1, Ljava/util/logging/LogManager$LogNode;->context:Ljava/util/logging/LogManager$LoggerContext;

    iget-object v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/logging/LogManager$LoggerContext;->removeLogger(Ljava/lang/String;)V

    .line 843
    iput-object v3, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    .line 845
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    iput-object v3, v1, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 846
    iput-object v3, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    .line 849
    :cond_0
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 851
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Logger;

    .line 852
    .local v0, "parent":Ljava/util/logging/Logger;
    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->removeChildLogger(Ljava/util/logging/LogManager$LoggerWeakRef;)V

    .line 857
    :cond_1
    iput-object v3, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    .line 838
    .end local v0    # "parent":Ljava/util/logging/Logger;
    :cond_2
    return-void
.end method

.method setNode(Ljava/util/logging/LogManager$LogNode;)V
    .locals 0
    .param p1, "node"    # Ljava/util/logging/LogManager$LogNode;

    .prologue
    .line 863
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    .line 862
    return-void
.end method

.method setParentRef(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/logging/Logger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 868
    .local p1, "parentRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/logging/Logger;>;"
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    .line 867
    return-void
.end method
