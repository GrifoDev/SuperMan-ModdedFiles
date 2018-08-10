.class public Lcom/samsung/android/app/SemExpandableListActivity;
.super Landroid/app/Activity;
.source "SemExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SemExpandableListView$OnChildClickListener;
.implements Landroid/widget/SemExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/SemExpandableListView$OnGroupExpandListener;


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field mFinishedStart:Z

.field mList:Landroid/widget/SemExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method private ensureList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x1090001

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/SemExpandableListActivity;->setContentView(I)V

    return-void
.end method


# virtual methods
.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListView()Landroid/widget/SemExpandableListView;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/SemExpandableListActivity;->ensureList()V

    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    return-object v0
.end method

.method public getSelectedId()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getSelectedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public onChildClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/SemExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/SemExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListView;

    iput-object v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    iget-object v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Your content must have a SemExpandableListView whose id attribute is \'R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemExpandableListView;->setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemExpandableListView;->setOnGroupExpandListener(Landroid/widget/SemExpandableListView$OnGroupExpandListener;)V

    iget-object v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/SemExpandableListView;->setOnGroupCollapseListener(Landroid/widget/SemExpandableListView$OnGroupCollapseListener;)V

    iget-boolean v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/SemExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onGroupCollapse(I)V
    .locals 0

    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/SemExpandableListActivity;->ensureList()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/SemExpandableListActivity;->ensureList()V

    iput-object p1, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSelectedChild(IIZ)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SemExpandableListView;->setSelectedChild(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSelectedGroup(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExpandableListActivity;->mList:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setSelectedGroup(I)V

    return-void
.end method
