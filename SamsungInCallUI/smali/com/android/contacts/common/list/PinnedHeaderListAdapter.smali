.class public abstract Lcom/android/contacts/common/list/PinnedHeaderListAdapter;
.super Lcom/android/contacts/common/list/CompositeCursorAdapter;

# interfaces
.implements Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;


# instance fields
.field private a:Z

.field private b:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->a:Z

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p2

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v1, p3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->a(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->d(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->a(Landroid/view/View;ILandroid/database/Cursor;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/android/contacts/common/list/PinnedHeaderListView;)V
    .locals 9

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->G()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->d()I

    move-result v3

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->b:[Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->b:[Z

    array-length v0, v0

    if-eq v0, v3, :cond_3

    :cond_2
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->b:[Z

    :cond_3
    move v0, v4

    :goto_0
    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->t(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->b:[Z

    aput-boolean v1, v2, v0

    if-nez v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->a(IZ)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v6

    move v2, v4

    move v0, v4

    move v1, v5

    :goto_1
    if-ge v2, v3, :cond_6

    iget-object v7, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->b:[Z

    aget-boolean v7, v7, v2

    if-eqz v7, :cond_b

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->b(I)I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->f(I)I

    move-result v7

    if-le v2, v7, :cond_a

    :cond_6
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeight()I

    move-result v7

    move v0, v3

    move v2, v4

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-le v0, v1, :cond_8

    iget-object v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->b:[Z

    aget-boolean v8, v8, v0

    if-eqz v8, :cond_7

    sub-int v8, v7, v2

    invoke-virtual {p1, v8}, Lcom/android/contacts/common/list/PinnedHeaderListView;->b(I)I

    move-result v8

    sub-int/2addr v8, v6

    if-gez v8, :cond_c

    :cond_8
    add-int/lit8 v0, v1, 0x1

    :goto_3
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->b:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->e(I)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->a(IZ)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p1, v2, v0, v4}, Lcom/android/contacts/common/list/PinnedHeaderListView;->a(IIZ)V

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_c
    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->f(I)I

    move-result v8

    if-eq v8, v5, :cond_8

    if-le v0, v8, :cond_8

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    sub-int v3, v7, v2

    invoke-virtual {p1, v0, v3, v4}, Lcom/android/contacts/common/list/PinnedHeaderListView;->b(IIZ)V

    move v3, v0

    goto :goto_2
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->a:Z

    return-void
.end method

.method protected t(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->h(I)I

    move-result v0

    return v0
.end method
