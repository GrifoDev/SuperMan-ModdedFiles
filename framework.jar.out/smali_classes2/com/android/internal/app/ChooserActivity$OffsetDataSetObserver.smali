.class Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffsetDataSetObserver"
.end annotation


# instance fields
.field private mCachedView:Landroid/view/View;

.field private mCachedViewType:I

.field private final mListView:Landroid/widget/AbsListView;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AbsListView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mListView:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v8, v8, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-nez v8, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-get2(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v0

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v8}, Lcom/android/internal/app/ChooserActivity;->semGetTopPanelCount()I

    move-result v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    add-int v4, v2, v5

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-get2(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getItemViewType(I)I

    move-result v7

    iget v8, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    if-eq v7, v8, :cond_1

    iput-object v11, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedView:Landroid/view/View;

    :cond_1
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-get2(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iget v1, v8, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    int-to-float v8, v1

    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v9}, Lcom/android/internal/app/ChooserActivity;->-get2(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-wrap0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v3, v8

    if-ltz v7, :cond_2

    iput v7, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    iput-object v6, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedView:Landroid/view/View;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->mCachedViewType:I

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v8, v8, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v8, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsibleHeightReserved(I)V

    return-void
.end method
