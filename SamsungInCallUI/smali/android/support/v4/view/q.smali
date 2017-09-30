.class public final Landroid/support/v4/view/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/q$c;,
        Landroid/support/v4/view/q$b;,
        Landroid/support/v4/view/q$a;,
        Landroid/support/v4/view/q$e;,
        Landroid/support/v4/view/q$d;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/q$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/q$c;

    invoke-direct {v0}, Landroid/support/v4/view/q$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/q$d;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/q$b;

    invoke-direct {v0}, Landroid/support/v4/view/q$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/q$d;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/q$a;

    invoke-direct {v0}, Landroid/support/v4/view/q$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/q$d;

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Landroid/support/v4/view/d;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p0, Landroid/support/v4/b/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/b;->a(Landroid/support/v4/view/d;)Landroid/support/v4/b/a/b;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "MenuItemCompat"

    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/q$d;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/q$d;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b/a/b;

    invoke-interface {p0}, Landroid/support/v4/b/a/b;->getActionView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/q$d;

    invoke-interface {v0, p0}, Landroid/support/v4/view/q$d;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;I)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/b;->setShowAsAction(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/q$d;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/q$d;->a(Landroid/view/MenuItem;I)V

    goto :goto_0
.end method

.method public static b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/b;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/q$d;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/q$d;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/view/MenuItem;)Z
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b/a/b;

    invoke-interface {p0}, Landroid/support/v4/b/a/b;->expandActionView()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/q$d;

    invoke-interface {v0, p0}, Landroid/support/v4/view/q$d;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/view/MenuItem;)Z
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b/a/b;

    invoke-interface {p0}, Landroid/support/v4/b/a/b;->isActionViewExpanded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/q$d;

    invoke-interface {v0, p0}, Landroid/support/v4/view/q$d;->c(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
