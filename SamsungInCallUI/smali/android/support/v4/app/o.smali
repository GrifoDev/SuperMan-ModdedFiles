.class public Landroid/support/v4/app/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/app/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/p",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/p",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    return-void
.end method

.method public static final a(Landroid/support/v4/app/p;)Landroid/support/v4/app/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/p",
            "<*>;)",
            "Landroid/support/v4/app/o;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0, p0}, Landroid/support/v4/app/o;-><init>(Landroid/support/v4/app/p;)V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/r;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/support/v4/app/q;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->i()Landroid/support/v4/app/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/r;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/r;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Landroid/support/v4/app/s;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/r;->a(Landroid/os/Parcelable;Landroid/support/v4/app/s;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    iget-object v1, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v2, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/r;->a(Landroid/support/v4/app/p;Landroid/support/v4/app/n;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public a(Landroid/support/v4/c/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/c/h",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/v;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->a(Landroid/support/v4/c/h;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/p;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/r;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/r;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/r;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/r;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->j()V

    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/r;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/r;->b(Z)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/r;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->i()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->a(Z)V

    return-void
.end method

.method public d()Landroid/support/v4/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->h()Landroid/support/v4/app/s;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->k()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->l()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->m()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->n()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->o()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->p()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->q()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->s()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->t()V

    return-void
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->e()Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->k()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->l()V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->m()V

    return-void
.end method

.method public r()Landroid/support/v4/c/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/c/h",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->n()Landroid/support/v4/c/h;

    move-result-object v0

    return-object v0
.end method
