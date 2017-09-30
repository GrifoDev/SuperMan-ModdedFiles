.class Landroid/support/v4/view/ah$e;
.super Landroid/support/v4/view/ah$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ah$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/al;->a(III)I

    move-result v0

    return v0
.end method

.method a()J
    .locals 2

    invoke-static {}, Landroid/support/v4/view/al;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/al;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/al;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ah$e;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/view/ah$e;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/al;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/al;->b(Landroid/view/View;F)V

    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/al;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/al;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/al;->b(Landroid/view/View;I)V

    return-void
.end method

.method public e(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/al;->a(Landroid/view/View;I)V

    return-void
.end method

.method public g(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/al;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/al;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public j(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/al;->d(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public q(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/view/al;->e(Landroid/view/View;)V

    return-void
.end method
