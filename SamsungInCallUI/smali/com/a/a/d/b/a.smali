.class Lcom/a/a/d/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/b/a$b;,
        Lcom/a/a/d/b/a$a;,
        Lcom/a/a/d/b/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/d/b/a$b;


# instance fields
.field private final b:Lcom/a/a/d/b/f;

.field private final c:I

.field private final d:I

.field private final e:Lcom/a/a/d/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/a/c",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/a/a/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/g/b",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/a/a/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/a/a/d/d/f/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/d/f/c",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/a/a/d/b/a$a;

.field private final j:Lcom/a/a/d/b/b;

.field private final k:Lcom/a/a/i;

.field private final l:Lcom/a/a/d/b/a$b;

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/d/b/a$b;

    invoke-direct {v0}, Lcom/a/a/d/b/a$b;-><init>()V

    sput-object v0, Lcom/a/a/d/b/a;->a:Lcom/a/a/d/b/a$b;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/d/b/f;IILcom/a/a/d/a/c;Lcom/a/a/g/b;Lcom/a/a/d/g;Lcom/a/a/d/d/f/c;Lcom/a/a/d/b/a$a;Lcom/a/a/d/b/b;Lcom/a/a/i;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/f;",
            "II",
            "Lcom/a/a/d/a/c",
            "<TA;>;",
            "Lcom/a/a/g/b",
            "<TA;TT;>;",
            "Lcom/a/a/d/g",
            "<TT;>;",
            "Lcom/a/a/d/d/f/c",
            "<TT;TZ;>;",
            "Lcom/a/a/d/b/a$a;",
            "Lcom/a/a/d/b/b;",
            "Lcom/a/a/i;",
            ")V"
        }
    .end annotation

    sget-object v11, Lcom/a/a/d/b/a;->a:Lcom/a/a/d/b/a$b;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/a/a/d/b/a;-><init>(Lcom/a/a/d/b/f;IILcom/a/a/d/a/c;Lcom/a/a/g/b;Lcom/a/a/d/g;Lcom/a/a/d/d/f/c;Lcom/a/a/d/b/a$a;Lcom/a/a/d/b/b;Lcom/a/a/i;Lcom/a/a/d/b/a$b;)V

    return-void
.end method

.method constructor <init>(Lcom/a/a/d/b/f;IILcom/a/a/d/a/c;Lcom/a/a/g/b;Lcom/a/a/d/g;Lcom/a/a/d/d/f/c;Lcom/a/a/d/b/a$a;Lcom/a/a/d/b/b;Lcom/a/a/i;Lcom/a/a/d/b/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/f;",
            "II",
            "Lcom/a/a/d/a/c",
            "<TA;>;",
            "Lcom/a/a/g/b",
            "<TA;TT;>;",
            "Lcom/a/a/d/g",
            "<TT;>;",
            "Lcom/a/a/d/d/f/c",
            "<TT;TZ;>;",
            "Lcom/a/a/d/b/a$a;",
            "Lcom/a/a/d/b/b;",
            "Lcom/a/a/i;",
            "Lcom/a/a/d/b/a$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/f;

    iput p2, p0, Lcom/a/a/d/b/a;->c:I

    iput p3, p0, Lcom/a/a/d/b/a;->d:I

    iput-object p4, p0, Lcom/a/a/d/b/a;->e:Lcom/a/a/d/a/c;

    iput-object p5, p0, Lcom/a/a/d/b/a;->f:Lcom/a/a/g/b;

    iput-object p6, p0, Lcom/a/a/d/b/a;->g:Lcom/a/a/d/g;

    iput-object p7, p0, Lcom/a/a/d/b/a;->h:Lcom/a/a/d/d/f/c;

    iput-object p8, p0, Lcom/a/a/d/b/a;->i:Lcom/a/a/d/b/a$a;

    iput-object p9, p0, Lcom/a/a/d/b/a;->j:Lcom/a/a/d/b/b;

    iput-object p10, p0, Lcom/a/a/d/b/a;->k:Lcom/a/a/i;

    iput-object p11, p0, Lcom/a/a/d/b/a;->l:Lcom/a/a/d/b/a$b;

    return-void
.end method

.method static synthetic a(Lcom/a/a/d/b/a;)Lcom/a/a/d/b/a$b;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/b/a;->l:Lcom/a/a/d/b/a$b;

    return-object v0
.end method

.method private a(Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<TT;>;)",
            "Lcom/a/a/d/b/l",
            "<TZ;>;"
        }
    .end annotation

    const/4 v4, 0x2

    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/a/a/d/b/a;->c(Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;

    move-result-object v2

    const-string v3, "DecodeJob"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Transformed resource from source"

    invoke-direct {p0, v3, v0, v1}, Lcom/a/a/d/b/a;->a(Ljava/lang/String;J)V

    :cond_0
    invoke-direct {p0, v2}, Lcom/a/a/d/b/a;->b(Lcom/a/a/d/b/l;)V

    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v0

    invoke-direct {p0, v2}, Lcom/a/a/d/b/a;->d(Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;

    move-result-object v2

    const-string v3, "DecodeJob"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Transcoded transformed from source"

    invoke-direct {p0, v3, v0, v1}, Lcom/a/a/d/b/a;->a(Ljava/lang/String;J)V

    :cond_1
    return-object v2
.end method

.method private a(Lcom/a/a/d/c;)Lcom/a/a/d/b/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            ")",
            "Lcom/a/a/d/b/l",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/d/b/a;->i:Lcom/a/a/d/b/a$a;

    invoke-interface {v1}, Lcom/a/a/d/b/a$a;->a()Lcom/a/a/d/b/b/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/a/a/d/b/b/a;->a(Lcom/a/a/d/c;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/a/a/d/b/a;->f:Lcom/a/a/g/b;

    invoke-interface {v2}, Lcom/a/a/g/b;->a()Lcom/a/a/d/e;

    move-result-object v2

    iget v3, p0, Lcom/a/a/d/b/a;->c:I

    iget v4, p0, Lcom/a/a/d/b/a;->d:I

    invoke-interface {v2, v1, v3, v4}, Lcom/a/a/d/e;->a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/a/a/d/b/a;->i:Lcom/a/a/d/b/a$a;

    invoke-interface {v1}, Lcom/a/a/d/b/a$a;->a()Lcom/a/a/d/b/b/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/a/a/d/b/b/a;->b(Lcom/a/a/d/c;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/a/a/d/b/a;->i:Lcom/a/a/d/b/a$a;

    invoke-interface {v0}, Lcom/a/a/d/b/a$a;->a()Lcom/a/a/d/b/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/d/b/b/a;->b(Lcom/a/a/d/c;)V

    :cond_2
    throw v1
.end method

.method private a(Ljava/lang/Object;)Lcom/a/a/d/b/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/a/a/d/b/l",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/b/a;->j:Lcom/a/a/d/b/b;

    invoke-virtual {v0}, Lcom/a/a/d/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/a/a/d/b/a;->b(Ljava/lang/Object;)Lcom/a/a/d/b/l;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/a/a/d/b/a;->f:Lcom/a/a/g/b;

    invoke-interface {v0}, Lcom/a/a/g/b;->b()Lcom/a/a/d/e;

    move-result-object v0

    iget v1, p0, Lcom/a/a/d/b/a;->c:I

    iget v4, p0, Lcom/a/a/d/b/a;->d:I

    invoke-interface {v0, p1, v1, v4}, Lcom/a/a/d/e;->a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;

    move-result-object v0

    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Decoded from source"

    invoke-direct {p0, v1, v2, v3}, Lcom/a/a/d/b/a;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 4

    const-string v0, "DecodeJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Ljava/lang/Object;)Lcom/a/a/d/b/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/a/a/d/b/l",
            "<TT;>;"
        }
    .end annotation

    const/4 v5, 0x2

    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v0

    new-instance v2, Lcom/a/a/d/b/a$c;

    iget-object v3, p0, Lcom/a/a/d/b/a;->f:Lcom/a/a/g/b;

    invoke-interface {v3}, Lcom/a/a/g/b;->c()Lcom/a/a/d/b;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/a/a/d/b/a$c;-><init>(Lcom/a/a/d/b/a;Lcom/a/a/d/b;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/a/a/d/b/a;->i:Lcom/a/a/d/b/a$a;

    invoke-interface {v3}, Lcom/a/a/d/b/a$a;->a()Lcom/a/a/d/b/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/f;

    invoke-virtual {v4}, Lcom/a/a/d/b/f;->a()Lcom/a/a/d/c;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/a/a/d/b/b/a;->a(Lcom/a/a/d/c;Lcom/a/a/d/b/b/a$b;)V

    const-string v2, "DecodeJob"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Wrote source to cache"

    invoke-direct {p0, v2, v0, v1}, Lcom/a/a/d/b/a;->a(Ljava/lang/String;J)V

    :cond_0
    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/f;

    invoke-virtual {v2}, Lcom/a/a/d/b/f;->a()Lcom/a/a/d/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/a/a/d/b/a;->a(Lcom/a/a/d/c;)Lcom/a/a/d/b/l;

    move-result-object v2

    const-string v3, "DecodeJob"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const-string v3, "Decoded source from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/a/a/d/b/a;->a(Ljava/lang/String;J)V

    :cond_1
    return-object v2
.end method

.method private b(Lcom/a/a/d/b/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/d/b/a;->j:Lcom/a/a/d/b/b;

    invoke-virtual {v0}, Lcom/a/a/d/b/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v0

    new-instance v2, Lcom/a/a/d/b/a$c;

    iget-object v3, p0, Lcom/a/a/d/b/a;->f:Lcom/a/a/g/b;

    invoke-interface {v3}, Lcom/a/a/g/b;->d()Lcom/a/a/d/f;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/a/a/d/b/a$c;-><init>(Lcom/a/a/d/b/a;Lcom/a/a/d/b;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/a/a/d/b/a;->i:Lcom/a/a/d/b/a$a;

    invoke-interface {v3}, Lcom/a/a/d/b/a$a;->a()Lcom/a/a/d/b/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/f;

    invoke-interface {v3, v4, v2}, Lcom/a/a/d/b/b/a;->a(Lcom/a/a/d/c;Lcom/a/a/d/b/b/a$b;)V

    const-string v2, "DecodeJob"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Wrote transformed from source to cache"

    invoke-direct {p0, v2, v0, v1}, Lcom/a/a/d/b/a;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private c(Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<TT;>;)",
            "Lcom/a/a/d/b/l",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/d/b/a;->g:Lcom/a/a/d/g;

    iget v1, p0, Lcom/a/a/d/b/a;->c:I

    iget v2, p0, Lcom/a/a/d/b/a;->d:I

    invoke-interface {v0, p1, v1, v2}, Lcom/a/a/d/g;->a(Lcom/a/a/d/b/l;II)Lcom/a/a/d/b/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/a/a/d/b/l;->d()V

    goto :goto_0
.end method

.method private d(Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<TT;>;)",
            "Lcom/a/a/d/b/l",
            "<TZ;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/a;->h:Lcom/a/a/d/d/f/c;

    invoke-interface {v0, p1}, Lcom/a/a/d/d/f/c;->a(Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Lcom/a/a/d/b/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b/l",
            "<TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/a/a/d/b/a;->e:Lcom/a/a/d/a/c;

    iget-object v3, p0, Lcom/a/a/d/b/a;->k:Lcom/a/a/i;

    invoke-interface {v2, v3}, Lcom/a/a/d/a/c;->a(Lcom/a/a/i;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Fetched data"

    invoke-direct {p0, v3, v0, v1}, Lcom/a/a/d/b/a;->a(Ljava/lang/String;J)V

    :cond_0
    iget-boolean v0, p0, Lcom/a/a/d/b/a;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/d/b/a;->e:Lcom/a/a/d/a/c;

    invoke-interface {v1}, Lcom/a/a/d/a/c;->a()V

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/a/a/d/b/a;->a(Ljava/lang/Object;)Lcom/a/a/d/b/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/a;->e:Lcom/a/a/d/a/c;

    invoke-interface {v1}, Lcom/a/a/d/a/c;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/a/a/d/b/a;->e:Lcom/a/a/d/a/c;

    invoke-interface {v1}, Lcom/a/a/d/a/c;->a()V

    throw v0
.end method


# virtual methods
.method public a()Lcom/a/a/d/b/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b/l",
            "<TZ;>;"
        }
    .end annotation

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/a/a/d/b/a;->j:Lcom/a/a/d/b/b;

    invoke-virtual {v0}, Lcom/a/a/d/b/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/f;

    invoke-direct {p0, v2}, Lcom/a/a/d/b/a;->a(Lcom/a/a/d/c;)Lcom/a/a/d/b/l;

    move-result-object v2

    const-string v3, "DecodeJob"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Decoded transformed from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/a/a/d/b/a;->a(Ljava/lang/String;J)V

    :cond_2
    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v4

    invoke-direct {p0, v2}, Lcom/a/a/d/b/a;->d(Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;

    move-result-object v0

    const-string v1, "DecodeJob"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Transcoded transformed from cache"

    invoke-direct {p0, v1, v4, v5}, Lcom/a/a/d/b/a;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public b()Lcom/a/a/d/b/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b/l",
            "<TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/b/a;->j:Lcom/a/a/d/b/b;

    invoke-virtual {v0}, Lcom/a/a/d/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/a/a/d/b/a;->b:Lcom/a/a/d/b/f;

    invoke-virtual {v2}, Lcom/a/a/d/b/f;->a()Lcom/a/a/d/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/a/a/d/b/a;->a(Lcom/a/a/d/c;)Lcom/a/a/d/b/l;

    move-result-object v2

    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Decoded source from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/a/a/d/b/a;->a(Ljava/lang/String;J)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/a/a/d/b/a;->a(Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Lcom/a/a/d/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b/l",
            "<TZ;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/d/b/a;->e()Lcom/a/a/d/b/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/d/b/a;->a(Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/b/a;->m:Z

    iget-object v0, p0, Lcom/a/a/d/b/a;->e:Lcom/a/a/d/a/c;

    invoke-interface {v0}, Lcom/a/a/d/a/c;->c()V

    return-void
.end method
