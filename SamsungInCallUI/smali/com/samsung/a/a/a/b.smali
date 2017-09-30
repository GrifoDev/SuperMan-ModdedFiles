.class public Lcom/samsung/a/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/samsung/a/a/a/e;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/a/a/a/b;->c:Z

    iput-boolean v0, p0, Lcom/samsung/a/a/a/b;->d:Z

    iput-boolean v0, p0, Lcom/samsung/a/a/a/b;->e:Z

    iput-boolean v0, p0, Lcom/samsung/a/a/a/b;->f:Z

    iput-boolean v0, p0, Lcom/samsung/a/a/a/b;->g:Z

    iput v1, p0, Lcom/samsung/a/a/a/b;->l:I

    iput v1, p0, Lcom/samsung/a/a/a/b;->m:I

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/a/a/a/e;)Lcom/samsung/a/a/a/b;
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/b;->k:Lcom/samsung/a/a/a/e;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/a/a/a/b;
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/a/a/a/b;->l:I

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/a/a/a/b;
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/samsung/a/a/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/a/a/a/b;->c:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/samsung/a/a/a/b;
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/b;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/b;->c:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/b;->e:Z

    return v0
.end method

.method public h()Lcom/samsung/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/b;->k:Lcom/samsung/a/a/a/e;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/b;->f:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/b;->g:Z

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/samsung/a/a/a/b;->l:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/samsung/a/a/a/b;->m:I

    return v0
.end method
