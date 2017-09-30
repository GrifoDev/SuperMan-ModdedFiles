.class public Lcom/a/a/h/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/h/b;
.implements Lcom/a/a/h/c;


# instance fields
.field private a:Lcom/a/a/h/b;

.field private b:Lcom/a/a/h/b;

.field private c:Lcom/a/a/h/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/h/f;-><init>(Lcom/a/a/h/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/h/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/h/f;->c:Lcom/a/a/h/c;

    return-void
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/f;->c:Lcom/a/a/h/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->c:Lcom/a/a/h/c;

    invoke-interface {v0, p0}, Lcom/a/a/h/c;->a(Lcom/a/a/h/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/f;->c:Lcom/a/a/h/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->c:Lcom/a/a/h/c;

    invoke-interface {v0, p0}, Lcom/a/a/h/c;->b(Lcom/a/a/h/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/f;->c:Lcom/a/a/h/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->c:Lcom/a/a/h/c;

    invoke-interface {v0}, Lcom/a/a/h/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->a()V

    iget-object v0, p0, Lcom/a/a/h/f;->b:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->a()V

    return-void
.end method

.method public a(Lcom/a/a/h/b;Lcom/a/a/h/b;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    iput-object p2, p0, Lcom/a/a/h/f;->b:Lcom/a/a/h/b;

    return-void
.end method

.method public a(Lcom/a/a/h/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/a/a/h/f;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/f;->b:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->b:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->b()V

    :cond_1
    return-void
.end method

.method public b(Lcom/a/a/h/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/a/a/h/f;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/h/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/a/a/h/b;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/f;->b:Lcom/a/a/h/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/h/f;->c:Lcom/a/a/h/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/h/f;->c:Lcom/a/a/h/c;

    invoke-interface {v0, p0}, Lcom/a/a/h/c;->c(Lcom/a/a/h/b;)V

    :cond_2
    iget-object v0, p0, Lcom/a/a/h/f;->b:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->b:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->d()V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    invoke-direct {p0}, Lcom/a/a/h/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/h/f;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/f;->b:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->d()V

    iget-object v0, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->d()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->e()V

    iget-object v0, p0, Lcom/a/a/h/f;->b:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->e()V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->b:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/f;->b:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/f;->a:Lcom/a/a/h/b;

    invoke-interface {v0}, Lcom/a/a/h/b;->i()Z

    move-result v0

    return v0
.end method
