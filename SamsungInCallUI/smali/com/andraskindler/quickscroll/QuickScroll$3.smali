.class Lcom/andraskindler/quickscroll/QuickScroll$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andraskindler/quickscroll/QuickScroll;->init(ILandroid/widget/ListView;Landroid/view/ViewGroup;Lcom/andraskindler/quickscroll/Scrollable;I[Landroid/widget/TextView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andraskindler/quickscroll/QuickScroll;


# direct methods
.method constructor <init>(Lcom/andraskindler/quickscroll/QuickScroll;)V
    .locals 0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/QuickScroll$3;->this$0:Lcom/andraskindler/quickscroll/QuickScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll$3;->this$0:Lcom/andraskindler/quickscroll/QuickScroll;

    iget-boolean v0, v0, Lcom/andraskindler/quickscroll/QuickScroll;->isScrolling:Z

    if-nez v0, :cond_0

    sub-int v0, p4, p3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/QuickScroll$3;->this$0:Lcom/andraskindler/quickscroll/QuickScroll;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/QuickScroll$3;->this$0:Lcom/andraskindler/quickscroll/QuickScroll;

    invoke-virtual {v1}, Lcom/andraskindler/quickscroll/QuickScroll;->getHeight()I

    move-result v1

    mul-int/2addr v1, p2

    sub-int v2, p4, p3

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/QuickScroll;->moveHandlebar(F)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
