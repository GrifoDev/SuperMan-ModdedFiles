.class public Lcom/a/a/d/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/b/b/h$a;
.implements Lcom/a/a/d/b/e;
.implements Lcom/a/a/d/b/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/b/c$a;,
        Lcom/a/a/d/b/c$d;,
        Lcom/a/a/d/b/c$e;,
        Lcom/a/a/d/b/c$b;,
        Lcom/a/a/d/b/c$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/d/c;",
            "Lcom/a/a/d/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/d/b/g;

.field private final c:Lcom/a/a/d/b/b/h;

.field private final d:Lcom/a/a/d/b/c$a;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/d/c;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/a/a/d/b/h",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/a/a/d/b/m;

.field private final g:Lcom/a/a/d/b/c$b;

.field private h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/a/a/d/b/h",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/b/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 10

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/a/a/d/b/c;-><init>(Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/b/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/a/a/d/b/g;Ljava/util/Map;Lcom/a/a/d/b/c$a;Lcom/a/a/d/b/m;)V

    return-void
.end method

.method constructor <init>(Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/b/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/a/a/d/b/g;Ljava/util/Map;Lcom/a/a/d/b/c$a;Lcom/a/a/d/b/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/b/h;",
            "Lcom/a/a/d/b/b/a$a;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/d/c;",
            "Lcom/a/a/d/b/d;",
            ">;",
            "Lcom/a/a/d/b/g;",
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/d/c;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/a/a/d/b/h",
            "<*>;>;>;",
            "Lcom/a/a/d/b/c$a;",
            "Lcom/a/a/d/b/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/b/c;->c:Lcom/a/a/d/b/b/h;

    new-instance v0, Lcom/a/a/d/b/c$b;

    invoke-direct {v0, p2}, Lcom/a/a/d/b/c$b;-><init>(Lcom/a/a/d/b/b/a$a;)V

    iput-object v0, p0, Lcom/a/a/d/b/c;->g:Lcom/a/a/d/b/c$b;

    if-nez p7, :cond_0

    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p7, p0, Lcom/a/a/d/b/c;->e:Ljava/util/Map;

    if-nez p6, :cond_1

    new-instance p6, Lcom/a/a/d/b/g;

    invoke-direct {p6}, Lcom/a/a/d/b/g;-><init>()V

    :cond_1
    iput-object p6, p0, Lcom/a/a/d/b/c;->b:Lcom/a/a/d/b/g;

    if-nez p5, :cond_2

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    :cond_2
    iput-object p5, p0, Lcom/a/a/d/b/c;->a:Ljava/util/Map;

    if-nez p8, :cond_3

    new-instance p8, Lcom/a/a/d/b/c$a;

    invoke-direct {p8, p3, p4, p0}, Lcom/a/a/d/b/c$a;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/a/a/d/b/e;)V

    :cond_3
    iput-object p8, p0, Lcom/a/a/d/b/c;->d:Lcom/a/a/d/b/c$a;

    if-nez p9, :cond_4

    new-instance p9, Lcom/a/a/d/b/m;

    invoke-direct {p9}, Lcom/a/a/d/b/m;-><init>()V

    :cond_4
    iput-object p9, p0, Lcom/a/a/d/b/c;->f:Lcom/a/a/d/b/m;

    invoke-interface {p1, p0}, Lcom/a/a/d/b/b/h;->a(Lcom/a/a/d/b/b/h$a;)V

    return-void
.end method

.method private a(Lcom/a/a/d/c;)Lcom/a/a/d/b/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            ")",
            "Lcom/a/a/d/b/h",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/b/c;->c:Lcom/a/a/d/b/b/h;

    invoke-interface {v0, p1}, Lcom/a/a/d/b/b/h;->a(Lcom/a/a/d/c;)Lcom/a/a/d/b/l;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/a/a/d/b/h;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/a/a/d/b/h;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/a/a/d/b/h;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/a/a/d/b/h;-><init>(Lcom/a/a/d/b/l;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/a/a/d/c;Z)Lcom/a/a/d/b/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            "Z)",
            "Lcom/a/a/d/b/h",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/a/a/d/b/h;->e()V

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/a/a/d/b/c;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a()Ljava/lang/ref/ReferenceQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/a/a/d/b/h",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/b/c;->h:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/b/c;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/a/a/d/b/c$d;

    iget-object v2, p0, Lcom/a/a/d/b/c;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/a/a/d/b/c;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lcom/a/a/d/b/c$d;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/c;->h:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private static a(Ljava/lang/String;JLcom/a/a/d/c;)V
    .locals 5

    const-string v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Lcom/a/a/d/c;Z)Lcom/a/a/d/b/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            "Z)",
            "Lcom/a/a/d/b/h",
            "<*>;"
        }
    .end annotation

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/a/a/d/b/c;->a(Lcom/a/a/d/c;)Lcom/a/a/d/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/a/a/d/b/h;->e()V

    iget-object v1, p0, Lcom/a/a/d/b/c;->e:Ljava/util/Map;

    new-instance v2, Lcom/a/a/d/b/c$e;

    invoke-direct {p0}, Lcom/a/a/d/b/c;->a()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lcom/a/a/d/b/c$e;-><init>(Lcom/a/a/d/c;Lcom/a/a/d/b/h;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/a/d/c;IILcom/a/a/d/a/c;Lcom/a/a/g/b;Lcom/a/a/d/g;Lcom/a/a/d/d/f/c;Lcom/a/a/i;ZLcom/a/a/d/b/b;Lcom/a/a/h/e;)Lcom/a/a/d/b/c$c;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/c;",
            "II",
            "Lcom/a/a/d/a/c",
            "<TT;>;",
            "Lcom/a/a/g/b",
            "<TT;TZ;>;",
            "Lcom/a/a/d/g",
            "<TZ;>;",
            "Lcom/a/a/d/d/f/c",
            "<TZ;TR;>;",
            "Lcom/a/a/i;",
            "Z",
            "Lcom/a/a/d/b/b;",
            "Lcom/a/a/h/e;",
            ")",
            "Lcom/a/a/d/b/c$c;"
        }
    .end annotation

    invoke-static {}, Lcom/a/a/j/h;->a()V

    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v14

    invoke-interface/range {p4 .. p4}, Lcom/a/a/d/a/c;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/d/b/c;->b:Lcom/a/a/d/b/g;

    invoke-interface/range {p5 .. p5}, Lcom/a/a/g/b;->a()Lcom/a/a/d/e;

    move-result-object v7

    invoke-interface/range {p5 .. p5}, Lcom/a/a/g/b;->b()Lcom/a/a/d/e;

    move-result-object v8

    invoke-interface/range {p5 .. p5}, Lcom/a/a/g/b;->d()Lcom/a/a/d/f;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Lcom/a/a/g/b;->c()Lcom/a/a/d/b;

    move-result-object v12

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v12}, Lcom/a/a/d/b/g;->a(Ljava/lang/String;Lcom/a/a/d/c;IILcom/a/a/d/e;Lcom/a/a/d/e;Lcom/a/a/d/g;Lcom/a/a/d/f;Lcom/a/a/d/d/f/c;Lcom/a/a/d/b;)Lcom/a/a/d/b/f;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v3, v1}, Lcom/a/a/d/b/c;->b(Lcom/a/a/d/c;Z)Lcom/a/a/d/b/h;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcom/a/a/h/e;->a(Lcom/a/a/d/b/l;)V

    const-string v2, "Engine"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Loaded resource from cache"

    invoke-static {v2, v14, v15, v3}, Lcom/a/a/d/b/c;->a(Ljava/lang/String;JLcom/a/a/d/c;)V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v3, v1}, Lcom/a/a/d/b/c;->a(Lcom/a/a/d/c;Z)Lcom/a/a/d/b/h;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcom/a/a/h/e;->a(Lcom/a/a/d/b/l;)V

    const-string v2, "Engine"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Loaded resource from active resources"

    invoke-static {v2, v14, v15, v3}, Lcom/a/a/d/b/c;->a(Ljava/lang/String;JLcom/a/a/d/c;)V

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/d/b/c;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/d/b/d;

    if-eqz v2, :cond_5

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/a/a/d/b/d;->a(Lcom/a/a/h/e;)V

    const-string v4, "Engine"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Added to existing load"

    invoke-static {v4, v14, v15, v3}, Lcom/a/a/d/b/c;->a(Ljava/lang/String;JLcom/a/a/d/c;)V

    :cond_4
    new-instance v3, Lcom/a/a/d/b/c$c;

    move-object/from16 v0, p11

    invoke-direct {v3, v0, v2}, Lcom/a/a/d/b/c$c;-><init>(Lcom/a/a/h/e;Lcom/a/a/d/b/d;)V

    move-object v2, v3

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/d/b/c;->d:Lcom/a/a/d/b/c$a;

    move/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Lcom/a/a/d/b/c$a;->a(Lcom/a/a/d/c;Z)Lcom/a/a/d/b/d;

    move-result-object v13

    new-instance v2, Lcom/a/a/d/b/a;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/d/b/c;->g:Lcom/a/a/d/b/c$b;

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p10

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/a/a/d/b/a;-><init>(Lcom/a/a/d/b/f;IILcom/a/a/d/a/c;Lcom/a/a/g/b;Lcom/a/a/d/g;Lcom/a/a/d/d/f/c;Lcom/a/a/d/b/a$a;Lcom/a/a/d/b/b;Lcom/a/a/i;)V

    new-instance v4, Lcom/a/a/d/b/i;

    move-object/from16 v0, p8

    invoke-direct {v4, v13, v2, v0}, Lcom/a/a/d/b/i;-><init>(Lcom/a/a/d/b/i$a;Lcom/a/a/d/b/a;Lcom/a/a/i;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/d/b/c;->a:Ljava/util/Map;

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p11

    invoke-virtual {v13, v0}, Lcom/a/a/d/b/d;->a(Lcom/a/a/h/e;)V

    invoke-virtual {v13, v4}, Lcom/a/a/d/b/d;->a(Lcom/a/a/d/b/i;)V

    const-string v2, "Engine"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Started new load"

    invoke-static {v2, v14, v15, v3}, Lcom/a/a/d/b/c;->a(Ljava/lang/String;JLcom/a/a/d/c;)V

    :cond_6
    new-instance v2, Lcom/a/a/d/b/c$c;

    move-object/from16 v0, p11

    invoke-direct {v2, v0, v13}, Lcom/a/a/d/b/c$c;-><init>(Lcom/a/a/h/e;Lcom/a/a/d/b/d;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/a/a/d/b/d;Lcom/a/a/d/c;)V
    .locals 1

    invoke-static {}, Lcom/a/a/j/h;->a()V

    iget-object v0, p0, Lcom/a/a/d/b/c;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/b/c;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Lcom/a/a/d/b/l;)V
    .locals 2

    invoke-static {}, Lcom/a/a/j/h;->a()V

    instance-of v0, p1, Lcom/a/a/d/b/h;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/a/a/d/b/h;

    invoke-virtual {p1}, Lcom/a/a/d/b/h;->f()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/a/d/c;Lcom/a/a/d/b/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            "Lcom/a/a/d/b/h",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/a/a/j/h;->a()V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p0}, Lcom/a/a/d/b/h;->a(Lcom/a/a/d/c;Lcom/a/a/d/b/h$a;)V

    invoke-virtual {p2}, Lcom/a/a/d/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/b/c;->e:Ljava/util/Map;

    new-instance v1, Lcom/a/a/d/b/c$e;

    invoke-direct {p0}, Lcom/a/a/d/b/c;->a()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/a/a/d/b/c$e;-><init>(Lcom/a/a/d/c;Lcom/a/a/d/b/h;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/a/a/d/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/a/a/j/h;->a()V

    iget-object v0, p0, Lcom/a/a/d/b/c;->f:Lcom/a/a/d/b/m;

    invoke-virtual {v0, p1}, Lcom/a/a/d/b/m;->a(Lcom/a/a/d/b/l;)V

    return-void
.end method

.method public b(Lcom/a/a/d/c;Lcom/a/a/d/b/h;)V
    .locals 1

    invoke-static {}, Lcom/a/a/j/h;->a()V

    iget-object v0, p0, Lcom/a/a/d/b/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/a/a/d/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/b/c;->c:Lcom/a/a/d/b/b/h;

    invoke-interface {v0, p1, p2}, Lcom/a/a/d/b/b/h;->b(Lcom/a/a/d/c;Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/c;->f:Lcom/a/a/d/b/m;

    invoke-virtual {v0, p2}, Lcom/a/a/d/b/m;->a(Lcom/a/a/d/b/l;)V

    goto :goto_0
.end method
