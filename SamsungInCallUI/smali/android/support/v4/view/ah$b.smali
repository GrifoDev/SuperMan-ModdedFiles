.class Landroid/support/v4/view/ah$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ah$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ah$b;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/support/v4/view/ad;I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/support/v4/view/ad;->computeHorizontalScrollOffset()I

    move-result v2

    invoke-interface {p1}, Landroid/support/v4/view/ad;->computeHorizontalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/ad;->computeHorizontalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    if-nez v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/support/v4/view/ad;I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/support/v4/view/ad;->computeVerticalScrollOffset()I

    move-result v2

    invoke-interface {p1}, Landroid/support/v4/view/ad;->computeVerticalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/ad;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    if-nez v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(III)I
    .locals 1

    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method a()J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/bf;)Landroid/support/v4/view/bf;
    .locals 0

    return-object p2
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/ab;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/view/ah$b;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/view/ah$b;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v4/view/ad;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/ad;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ah$b;->a(Landroid/support/v4/view/ad;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/support/v4/view/bf;)Landroid/support/v4/view/bf;
    .locals 0

    return-object p2
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;I)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v4/view/ad;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/ad;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ah$b;->b(Landroid/support/v4/view/ad;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ai;->b(Landroid/view/View;I)V

    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ai;->a(Landroid/view/View;I)V

    return-void
.end method

.method public f(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(Landroid/view/View;)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public l(Landroid/view/View;)Landroid/support/v4/view/ay;
    .locals 1

    new-instance v0, Landroid/support/v4/view/ay;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ay;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public o(Landroid/view/View;)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public r(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ai;->a(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public s(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ai;->b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public t(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/view/x;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/x;

    invoke-interface {p1}, Landroid/support/v4/view/x;->stopNestedScroll()V

    :cond_0
    return-void
.end method

.method public u(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ai;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public v(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ai;->e(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public w(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
