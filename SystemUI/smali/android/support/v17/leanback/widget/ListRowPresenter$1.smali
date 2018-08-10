.class Landroid/support/v17/leanback/widget/ListRowPresenter$1;
.super Ljava/lang/Object;
.source "ListRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnChildSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/ListRowPresenter;->initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/ListRowPresenter;

.field final synthetic val$rowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ListRowPresenter;Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$1;->this$0:Landroid/support/v17/leanback/widget/ListRowPresenter;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$1;->val$rowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$1;->this$0:Landroid/support/v17/leanback/widget/ListRowPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ListRowPresenter$1;->val$rowViewHolder:Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/support/v17/leanback/widget/ListRowPresenter;->selectChildView(Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;Z)V

    return-void
.end method
