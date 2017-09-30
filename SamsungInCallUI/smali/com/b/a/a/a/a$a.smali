.class Lcom/b/a/a/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a/a;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/b/a/a/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Activity;

.field private d:Lcom/b/a/a/a/a/a;

.field private e:Lcom/gsma/services/rcs/f;


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/a/a$a;->e:Lcom/gsma/services/rcs/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/a/a$a;->a:Lcom/b/a/a/a/a;

    invoke-static {v0}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/a$a;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a/a$a;->e:Lcom/gsma/services/rcs/f;

    invoke-interface {v0}, Lcom/gsma/services/rcs/f;->onServiceConnected()V

    goto :goto_0
.end method

.method public a(Lcom/gsma/services/rcs/f$a;)V
    .locals 4

    iget-object v0, p0, Lcom/b/a/a/a/a$a;->c:Landroid/app/Activity;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gsma/services/rcs/f$a;->b:Lcom/gsma/services/rcs/f$a;

    if-ne v0, p1, :cond_1

    const-string v0, "RCS service disabled"

    :goto_0
    iget-object v1, p0, Lcom/b/a/a/a/a$a;->a:Lcom/b/a/a/a/a;

    iget-object v2, p0, Lcom/b/a/a/a/a$a;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/b/a/a/a/a$a;->d:Lcom/b/a/a/a/a/a;

    invoke-static {v1, v2, v0, v3}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a;Landroid/app/Activity;Ljava/lang/String;Lcom/b/a/a/a/a/a;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "RCS service disconnected"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/a/a$a;->e:Lcom/gsma/services/rcs/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a/a$a;->e:Lcom/gsma/services/rcs/f;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/f;->onServiceDisconnected(Lcom/gsma/services/rcs/f$a;)V

    goto :goto_1
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/b/a/a/a/a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/a$a;->b:Ljava/util/Set;

    return-object v0
.end method
