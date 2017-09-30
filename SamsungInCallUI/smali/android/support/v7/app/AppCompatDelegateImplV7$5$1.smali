.class Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;
.super Landroid/support/v4/view/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV7$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV7$5;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7$5;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Landroid/support/v4/view/ay;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ay;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/ay;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$5$1;->a:Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$5;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iput-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Landroid/support/v4/view/ay;

    return-void
.end method
