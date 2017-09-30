.class public Lcom/a/a/e/n;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/e/n$1;,
        Lcom/a/a/e/n$a;
    }
.end annotation


# instance fields
.field private a:Lcom/a/a/j;

.field private final b:Lcom/a/a/e/a;

.field private final c:Lcom/a/a/e/l;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/a/a/e/n;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/a/a/e/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/a/a/e/a;

    invoke-direct {v0}, Lcom/a/a/e/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/a/a/e/n;-><init>(Lcom/a/a/e/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/e/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/a/a/e/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/e/n$a;-><init>(Lcom/a/a/e/n;Lcom/a/a/e/n$1;)V

    iput-object v0, p0, Lcom/a/a/e/n;->c:Lcom/a/a/e/l;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/a/a/e/n;->d:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/a/a/e/n;->b:Lcom/a/a/e/a;

    return-void
.end method

.method private a(Lcom/a/a/e/n;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/e/n;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/a/a/e/n;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/e/n;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public L()Lcom/a/a/j;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e/n;->a:Lcom/a/a/j;

    return-object v0
.end method

.method public M()Lcom/a/a/e/l;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e/n;->c:Lcom/a/a/e/l;

    return-object v0
.end method

.method a()Lcom/a/a/e/a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e/n;->b:Lcom/a/a/e/a;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    :try_start_0
    invoke-static {}, Lcom/a/a/e/k;->a()Lcom/a/a/e/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/e/n;->g()Landroid/support/v4/app/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/m;->f()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/e/k;->a(Landroid/support/v4/app/q;)Lcom/a/a/e/n;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e/n;->e:Lcom/a/a/e/n;

    iget-object v0, p0, Lcom/a/a/e/n;->e:Lcom/a/a/e/n;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/a/a/e/n;->e:Lcom/a/a/e/n;

    invoke-direct {v0, p0}, Lcom/a/a/e/n;->a(Lcom/a/a/e/n;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SupportRMFragment"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SupportRMFragment"

    const-string v2, "Unable to register fragment with root"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/e/n;->a:Lcom/a/a/j;

    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->b()V

    iget-object v0, p0, Lcom/a/a/e/n;->e:Lcom/a/a/e/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/e/n;->e:Lcom/a/a/e/n;

    invoke-direct {v0, p0}, Lcom/a/a/e/n;->b(Lcom/a/a/e/n;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/e/n;->e:Lcom/a/a/e/n;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->c()V

    iget-object v0, p0, Lcom/a/a/e/n;->b:Lcom/a/a/e/a;

    invoke-virtual {v0}, Lcom/a/a/e/a;->a()V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->d()V

    iget-object v0, p0, Lcom/a/a/e/n;->b:Lcom/a/a/e/a;

    invoke-virtual {v0}, Lcom/a/a/e/a;->b()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    iget-object v0, p0, Lcom/a/a/e/n;->a:Lcom/a/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/e/n;->a:Lcom/a/a/j;

    invoke-virtual {v0}, Lcom/a/a/j;->a()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->q()V

    iget-object v0, p0, Lcom/a/a/e/n;->b:Lcom/a/a/e/a;

    invoke-virtual {v0}, Lcom/a/a/e/a;->c()V

    return-void
.end method
