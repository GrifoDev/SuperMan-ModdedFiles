.class Landroid/support/v7/app/b$a$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/b$a;->b(Landroid/support/v7/app/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroid/support/v7/app/b;

.field final synthetic c:Landroid/support/v7/app/b$a;


# direct methods
.method constructor <init>(Landroid/support/v7/app/b$a;Landroid/widget/ListView;Landroid/support/v7/app/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/b$a$4;->c:Landroid/support/v7/app/b$a;

    iput-object p2, p0, Landroid/support/v7/app/b$a$4;->a:Landroid/widget/ListView;

    iput-object p3, p0, Landroid/support/v7/app/b$a$4;->b:Landroid/support/v7/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/app/b$a$4;->c:Landroid/support/v7/app/b$a;

    iget-object v0, v0, Landroid/support/v7/app/b$a;->C:[Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/b$a$4;->c:Landroid/support/v7/app/b$a;

    iget-object v0, v0, Landroid/support/v7/app/b$a;->C:[Z

    iget-object v1, p0, Landroid/support/v7/app/b$a$4;->a:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/b$a$4;->c:Landroid/support/v7/app/b$a;

    iget-object v0, v0, Landroid/support/v7/app/b$a;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Landroid/support/v7/app/b$a$4;->b:Landroid/support/v7/app/b;

    invoke-static {v1}, Landroid/support/v7/app/b;->g(Landroid/support/v7/app/b;)Landroid/support/v7/app/k;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/b$a$4;->a:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
