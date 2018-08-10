.class Lcom/android/internal/app/ResolverActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x1

    instance-of v4, p1, Landroid/widget/GridView;

    if-eqz v4, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/GridView;

    :goto_0
    if-gez p3, :cond_1

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v4, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v4, p3, v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get0(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-wrap1(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-boolean v4, v4, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v4, :cond_6

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get4(Lcom/android/internal/app/ResolverActivity;)I

    move-result v4

    if-eq v4, v0, :cond_6

    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3, v2, v0, v6}, Lcom/android/internal/app/ResolverActivity;->-wrap6(Lcom/android/internal/app/ResolverActivity;ZIZ)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get6(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get0(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3, v0}, Lcom/android/internal/app/ResolverActivity;->-set1(Lcom/android/internal/app/ResolverActivity;I)I

    :goto_2
    return-void

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->-get9(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-boolean v3, v3, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    xor-int/lit8 v3, v3, 0x1

    :cond_7
    invoke-virtual {v4, p3, v3, v6}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    goto :goto_2
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    instance-of v2, p1, Landroid/widget/GridView;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/GridView;

    :goto_0
    if-gez p3, :cond_1

    return v3

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p3, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    return v4
.end method
