.class Landroid/support/v7/app/AppCompatDelegateImplV7$b$1;
.super Landroid/support/v4/view/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV7$b;->a(Landroid/support/v7/view/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV7$b;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$b;

    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$b;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$b;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$b;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$b;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$b;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Landroid/support/v4/view/ay;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ay;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/ay;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$b;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iput-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Landroid/support/v4/view/ay;

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$b;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$b$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$b;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$b;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ah;->n(Landroid/view/View;)V

    goto :goto_0
.end method
