.class public abstract Lcom/android/contacts/common/list/IndexerListAdapter;
.super Lcom/android/contacts/common/list/PinnedHeaderListAdapter;

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Landroid/widget/SectionIndexer;

.field private c:I

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->c:I

    new-instance v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-direct {v0}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-object p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->d:Z

    return v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->c:I

    return v0
.end method

.method public E()Landroid/widget/SectionIndexer;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->b:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method public F()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->F()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->F()I

    move-result v0

    goto :goto_0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->F()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->e:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/common/list/IndexerListAdapter;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->e:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->e:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract a(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public a(Landroid/widget/SectionIndexer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->b:Landroid/widget/SectionIndexer;

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->a()V

    return-void
.end method

.method public a(Lcom/android/contacts/common/list/PinnedHeaderListView;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->a(Lcom/android/contacts/common/list/PinnedHeaderListView;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->C()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->F()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->b:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1, v4, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->a(IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->b(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v6, v5, v0

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/IndexerListAdapter;->f(I)I

    move-result v0

    iget v2, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->c:I

    if-ne v0, v2, :cond_7

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/IndexerListAdapter;->g(I)I

    move-result v0

    if-eq v0, v3, :cond_7

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    move v2, v0

    :goto_1
    if-ne v2, v3, :cond_3

    invoke-virtual {p1, v4, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->a(IZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v5}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->b:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/common/list/IndexerListAdapter;->a(Landroid/view/View;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->c:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/IndexerListAdapter;->h(I)I

    move-result v0

    iget v3, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->c:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/IndexerListAdapter;->c(I)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p1, v4, v5, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->c(IIZ)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method public getPositionForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->b:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->b:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->b:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->b:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->b:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->b:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->d:Z

    return-void
.end method

.method public p(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-static {v0}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->a(Lcom/android/contacts/common/list/IndexerListAdapter$Placement;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-static {v0, p1}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->a(Lcom/android/contacts/common/list/IndexerListAdapter$Placement;I)I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v1, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->a:Z

    iget-object v4, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->c:Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, v4, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->b:Z

    :goto_3
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->a:Z

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-object v4, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->a:Z

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->b:Z

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->f:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-object v4, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->c:Ljava/lang/String;

    goto :goto_3
.end method
