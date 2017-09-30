.class public Lcom/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/e/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/j$d;,
        Lcom/a/a/j$c;,
        Lcom/a/a/j$b;,
        Lcom/a/a/j$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/a/a/e/g;

.field private final c:Lcom/a/a/e/l;

.field private final d:Lcom/a/a/e/m;

.field private final e:Lcom/a/a/g;

.field private final f:Lcom/a/a/j$c;

.field private g:Lcom/a/a/j$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/a/a/e/g;Lcom/a/a/e/l;)V
    .locals 6

    new-instance v4, Lcom/a/a/e/m;

    invoke-direct {v4}, Lcom/a/a/e/m;-><init>()V

    new-instance v5, Lcom/a/a/e/d;

    invoke-direct {v5}, Lcom/a/a/e/d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/j;-><init>(Landroid/content/Context;Lcom/a/a/e/g;Lcom/a/a/e/l;Lcom/a/a/e/m;Lcom/a/a/e/d;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/a/a/e/g;Lcom/a/a/e/l;Lcom/a/a/e/m;Lcom/a/a/e/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/a/a/j;->b:Lcom/a/a/e/g;

    iput-object p3, p0, Lcom/a/a/j;->c:Lcom/a/a/e/l;

    iput-object p4, p0, Lcom/a/a/j;->d:Lcom/a/a/e/m;

    invoke-static {p1}, Lcom/a/a/g;->a(Landroid/content/Context;)Lcom/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/g;

    new-instance v0, Lcom/a/a/j$c;

    invoke-direct {v0, p0}, Lcom/a/a/j$c;-><init>(Lcom/a/a/j;)V

    iput-object v0, p0, Lcom/a/a/j;->f:Lcom/a/a/j$c;

    new-instance v0, Lcom/a/a/j$d;

    invoke-direct {v0, p4}, Lcom/a/a/j$d;-><init>(Lcom/a/a/e/m;)V

    invoke-virtual {p5, p1, v0}, Lcom/a/a/e/d;->a(Landroid/content/Context;Lcom/a/a/e/c$a;)Lcom/a/a/e/c;

    move-result-object v0

    invoke-static {}, Lcom/a/a/j/h;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/a/a/j$1;

    invoke-direct {v2, p0, p2}, Lcom/a/a/j$1;-><init>(Lcom/a/a/j;Lcom/a/a/e/g;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-interface {p2, v0}, Lcom/a/a/e/g;->a(Lcom/a/a/e/h;)V

    return-void

    :cond_0
    invoke-interface {p2, p0}, Lcom/a/a/e/g;->a(Lcom/a/a/e/h;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/j;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/a/a/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Class;)Lcom/a/a/b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/a/a/b",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/j;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/a/a/g;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/a/a/d/c/l;

    move-result-object v2

    iget-object v0, p0, Lcom/a/a/j;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/a/a/g;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/a/a/d/c/l;

    move-result-object v3

    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". You must provide a Model of a type for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v9, p0, Lcom/a/a/j;->f:Lcom/a/a/j$c;

    new-instance v0, Lcom/a/a/b;

    iget-object v4, p0, Lcom/a/a/j;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/a/a/j;->e:Lcom/a/a/g;

    iget-object v6, p0, Lcom/a/a/j;->d:Lcom/a/a/e/m;

    iget-object v7, p0, Lcom/a/a/j;->b:Lcom/a/a/e/g;

    iget-object v8, p0, Lcom/a/a/j;->f:Lcom/a/a/j$c;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/a/a/b;-><init>(Ljava/lang/Class;Lcom/a/a/d/c/l;Lcom/a/a/d/c/l;Landroid/content/Context;Lcom/a/a/g;Lcom/a/a/e/m;Lcom/a/a/e/g;Lcom/a/a/j$c;)V

    invoke-virtual {v9, v0}, Lcom/a/a/j$c;->a(Lcom/a/a/c;)Lcom/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/a/a/b;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    invoke-static {p0}, Lcom/a/a/j;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/j;)Lcom/a/a/g;
    .locals 1

    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/g;

    return-object v0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/a/a/j;)Lcom/a/a/e/m;
    .locals 1

    iget-object v0, p0, Lcom/a/a/j;->d:Lcom/a/a/e/m;

    return-object v0
.end method

.method static synthetic d(Lcom/a/a/j;)Lcom/a/a/e/g;
    .locals 1

    iget-object v0, p0, Lcom/a/a/j;->b:Lcom/a/a/e/g;

    return-object v0
.end method

.method static synthetic e(Lcom/a/a/j;)Lcom/a/a/j$c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/j;->f:Lcom/a/a/j$c;

    return-object v0
.end method

.method static synthetic f(Lcom/a/a/j;)Lcom/a/a/j$a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/j;->g:Lcom/a/a/j$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/a/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/a/a/b",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/a/a/j;->g()Lcom/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/b;->a(Ljava/lang/Object;)Lcom/a/a/a;

    move-result-object v0

    check-cast v0, Lcom/a/a/b;

    return-object v0
.end method

.method public a(Lcom/a/a/d/c/l;Ljava/lang/Class;)Lcom/a/a/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/c/l",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/a/a/j$b",
            "<TA;TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/j$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/j$b;-><init>(Lcom/a/a/j;Lcom/a/a/d/c/l;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->g()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/g;

    invoke-virtual {v0, p1}, Lcom/a/a/g;->a(I)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/a/a/j/h;->a()V

    iget-object v0, p0, Lcom/a/a/j;->d:Lcom/a/a/e/m;

    invoke-virtual {v0}, Lcom/a/a/e/m;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/a/a/j/h;->a()V

    iget-object v0, p0, Lcom/a/a/j;->d:Lcom/a/a/e/m;

    invoke-virtual {v0}, Lcom/a/a/e/m;->b()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/a/a/j;->c()V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lcom/a/a/j;->b()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/j;->d:Lcom/a/a/e/m;

    invoke-virtual {v0}, Lcom/a/a/e/m;->c()V

    return-void
.end method

.method public g()Lcom/a/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/a/a/j;->a(Ljava/lang/Class;)Lcom/a/a/b;

    move-result-object v0

    return-object v0
.end method
