.class Landroid/support/v4/view/l$a;
.super Landroid/support/v4/view/k$a;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/view/n;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/view/k$a;-><init>(Landroid/support/v4/view/n;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/l$a;->a:Landroid/support/v4/view/n;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
