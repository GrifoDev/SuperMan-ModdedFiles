.class Landroid/support/v4/widget/SlidingPaneLayout$g;
.super Landroid/support/v4/widget/SlidingPaneLayout$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$b;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$b;->d:Landroid/graphics/Paint;

    invoke-static {p2, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method
