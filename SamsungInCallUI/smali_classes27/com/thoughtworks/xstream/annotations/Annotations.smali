.class public Lcom/thoughtworks/xstream/annotations/Annotations;
.super Ljava/lang/Object;
.source "Annotations.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static varargs declared-synchronized configureAliases(Lcom/thoughtworks/xstream/XStream;[Ljava/lang/Class;)V
    .locals 2
    .param p0, "xstream"    # Lcom/thoughtworks/xstream/XStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thoughtworks/xstream/XStream;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    .local p1, "topLevelClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v0, Lcom/thoughtworks/xstream/annotations/Annotations;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->processAnnotations([Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
