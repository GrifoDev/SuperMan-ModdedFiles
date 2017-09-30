.class Landroid/support/v7/app/p$1;
.super Landroid/support/v4/view/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/p;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/p$1;->a:Landroid/support/v7/app/p;

    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/app/p$1;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->a(Landroid/support/v7/app/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p$1;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->b(Landroid/support/v7/app/p;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/p$1;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->b(Landroid/support/v7/app/p;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->a(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/app/p$1;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->c(Landroid/support/v7/app/p;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->a(Landroid/view/View;F)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/p$1;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->c(Landroid/support/v7/app/p;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/p$1;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->c(Landroid/support/v7/app/p;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object v0, p0, Landroid/support/v7/app/p$1;->a:Landroid/support/v7/app/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/p;->a(Landroid/support/v7/app/p;Landroid/support/v7/view/h;)Landroid/support/v7/view/h;

    iget-object v0, p0, Landroid/support/v7/app/p$1;->a:Landroid/support/v7/app/p;

    invoke-virtual {v0}, Landroid/support/v7/app/p;->d()V

    iget-object v0, p0, Landroid/support/v7/app/p$1;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->d(Landroid/support/v7/app/p;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/p$1;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->d(Landroid/support/v7/app/p;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ah;->n(Landroid/view/View;)V

    :cond_1
    return-void
.end method
