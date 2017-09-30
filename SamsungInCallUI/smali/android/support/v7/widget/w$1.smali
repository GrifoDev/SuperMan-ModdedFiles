.class Landroid/support/v7/widget/w$1;
.super Landroid/support/v7/widget/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/w$b;

.field final synthetic b:Landroid/support/v7/widget/w;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/w;Landroid/view/View;Landroid/support/v7/widget/w$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/w$1;->b:Landroid/support/v7/widget/w;

    iput-object p3, p0, Landroid/support/v7/widget/w$1;->a:Landroid/support/v7/widget/w$b;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/af;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/w$1;->a:Landroid/support/v7/widget/w$b;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/w$1;->b:Landroid/support/v7/widget/w;

    invoke-static {v0}, Landroid/support/v7/widget/w;->a(Landroid/support/v7/widget/w;)Landroid/support/v7/widget/w$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/w$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/w$1;->b:Landroid/support/v7/widget/w;

    invoke-static {v0}, Landroid/support/v7/widget/w;->a(Landroid/support/v7/widget/w;)Landroid/support/v7/widget/w$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/w$b;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
