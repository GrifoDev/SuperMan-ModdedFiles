.class public Landroid/support/v7/app/k;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/support/v7/app/d;


# instance fields
.field private a:Landroid/support/v7/app/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p1, p2}, Landroid/support/v7/app/k;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/e;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->d()Z

    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->dialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    return p1
.end method


# virtual methods
.method public a()Landroid/support/v7/app/e;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/e;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, Landroid/support/v7/app/e;->a(Landroid/app/Dialog;Landroid/support/v7/app/d;)Landroid/support/v7/app/e;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/e;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/e;

    return-object v0
.end method

.method public a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v7/view/b;)V
    .locals 0

    return-void
.end method

.method public a(I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->c(I)Z

    move-result v0

    return v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/e;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Landroid/support/v7/view/b;)V
    .locals 0

    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->c()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->a()V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->b(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/e;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/e;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v7/app/k;->a()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/e;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
