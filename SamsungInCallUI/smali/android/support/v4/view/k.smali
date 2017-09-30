.class Landroid/support/v4/view/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/k$a;
    }
.end annotation


# direct methods
.method static a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/n;
    .locals 2

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/view/k$a;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/view/k$a;

    iget-object v0, v0, Landroid/support/v4/view/k$a;->a:Landroid/support/v4/view/n;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/view/LayoutInflater;Landroid/support/v4/view/n;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v4/view/k$a;

    invoke-direct {v0, p1}, Landroid/support/v4/view/k$a;-><init>(Landroid/support/v4/view/n;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
