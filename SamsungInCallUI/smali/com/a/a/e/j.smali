.class public Lcom/a/a/e/j;
.super Landroid/app/Fragment;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/e/j$1;,
        Lcom/a/a/e/j$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/e/a;

.field private final b:Lcom/a/a/e/l;

.field private c:Lcom/a/a/j;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/a/a/e/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/a/a/e/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/a/a/e/a;

    invoke-direct {v0}, Lcom/a/a/e/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/a/a/e/j;-><init>(Lcom/a/a/e/a;)V

    return-void
.end method

.method constructor <init>(Lcom/a/a/e/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/a/a/e/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/e/j$a;-><init>(Lcom/a/a/e/j;Lcom/a/a/e/j$1;)V

    iput-object v0, p0, Lcom/a/a/e/j;->b:Lcom/a/a/e/l;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/a/a/e/j;->d:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/a/a/e/j;->a:Lcom/a/a/e/a;

    return-void
.end method

.method private a(Lcom/a/a/e/j;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/e/j;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/a/a/e/j;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/e/j;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method a()Lcom/a/a/e/a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e/j;->a:Lcom/a/a/e/a;

    return-object v0
.end method

.method public a(Lcom/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/e/j;->c:Lcom/a/a/j;

    return-void
.end method

.method public b()Lcom/a/a/j;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e/j;->c:Lcom/a/a/j;

    return-object v0
.end method

.method public c()Lcom/a/a/e/l;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e/j;->b:Lcom/a/a/e/l;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    invoke-static {}, Lcom/a/a/e/k;->a()Lcom/a/a/e/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/e/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/e/k;->a(Landroid/app/FragmentManager;)Lcom/a/a/e/j;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e/j;->e:Lcom/a/a/e/j;

    iget-object v0, p0, Lcom/a/a/e/j;->e:Lcom/a/a/e/j;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/a/a/e/j;->e:Lcom/a/a/e/j;

    invoke-direct {v0, p0}, Lcom/a/a/e/j;->a(Lcom/a/a/e/j;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RMFragment"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RMFragment"

    const-string v2, "Unable to register fragment with root"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/a/a/e/j;->a:Lcom/a/a/e/a;

    invoke-virtual {v0}, Lcom/a/a/e/a;->c()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcom/a/a/e/j;->e:Lcom/a/a/e/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/e/j;->e:Lcom/a/a/e/j;

    invoke-direct {v0, p0}, Lcom/a/a/e/j;->b(Lcom/a/a/e/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/e/j;->e:Lcom/a/a/e/j;

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/e/j;->c:Lcom/a/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/e/j;->c:Lcom/a/a/j;

    invoke-virtual {v0}, Lcom/a/a/j;->a()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/a/a/e/j;->a:Lcom/a/a/e/a;

    invoke-virtual {v0}, Lcom/a/a/e/a;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/a/a/e/j;->a:Lcom/a/a/e/a;

    invoke-virtual {v0}, Lcom/a/a/e/a;->b()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/e/j;->c:Lcom/a/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/e/j;->c:Lcom/a/a/j;

    invoke-virtual {v0, p1}, Lcom/a/a/j;->a(I)V

    :cond_0
    return-void
.end method
