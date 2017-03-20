.class public abstract Lcom/android/contacts/common/list/PinnedHeaderListAdapter;
.super Lcom/android/contacts/common/list/CompositeCursorAdapter;
.source "PinnedHeaderListAdapter.java"

# interfaces
.implements Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;


# static fields
.field public static final PARTITION_HEADER_TYPE:I


# instance fields
.field private mHeaderVisibility:[Z

.field private mPinnedPartitionHeadersEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialCapacity"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V
    .locals 14
    .param p1, "listView"    # Lcom/android/contacts/common/list/PinnedHeaderListView;

    .prologue
    const/4 v13, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v12

    if-nez v12, :cond_1

    .line 161
    :cond_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionCount()I

    move-result v9

    .line 100
    .local v9, "size":I
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    array-length v12, v12

    if-eq v12, v9, :cond_3

    .line 101
    :cond_2
    new-array v12, v9, [Z

    iput-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    .line 103
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_5

    .line 104
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->isPinnedPartitionHeaderVisible(I)Z

    move-result v11

    .line 105
    .local v11, "visible":Z
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aput-boolean v11, v12, v3

    .line 106
    if-nez v11, :cond_4

    .line 107
    const/4 v12, 0x1

    invoke-virtual {p1, v3, v12}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 103
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v11    # "visible":Z
    :cond_5
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v1

    .line 114
    .local v1, "headerViewsCount":I
    const/4 v6, -0x1

    .line 115
    .local v6, "maxTopHeader":I
    const/4 v10, 0x0

    .line 116
    .local v10, "topHeaderHeight":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_6

    .line 117
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v12, v12, v3

    if-eqz v12, :cond_b

    .line 118
    invoke-virtual {p1, v10}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v12

    sub-int v8, v12, v1

    .line 119
    .local v8, "position":I
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionForPosition(I)I

    move-result v7

    .line 120
    .local v7, "partition":I
    if-le v3, v7, :cond_a

    .line 131
    .end local v7    # "partition":I
    .end local v8    # "position":I
    :cond_6
    move v5, v9

    .line 132
    .local v5, "maxBottomHeader":I
    const/4 v0, 0x0

    .line 133
    .local v0, "bottomHeaderHeight":I
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeight()I

    move-result v4

    .line 134
    .local v4, "listHeight":I
    move v3, v9

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-le v3, v6, :cond_8

    .line 135
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v12, v12, v3

    if-eqz v12, :cond_7

    .line 136
    sub-int v12, v4, v0

    invoke-virtual {p1, v12}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v12

    sub-int v8, v12, v1

    .line 138
    .restart local v8    # "position":I
    if-gez v8, :cond_c

    .line 156
    .end local v8    # "position":I
    :cond_8
    add-int/lit8 v3, v6, 0x1

    :goto_3
    if-ge v3, v5, :cond_0

    .line 157
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v12, v12, v3

    if-eqz v12, :cond_9

    .line 158
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->isPartitionEmpty(I)Z

    move-result v12

    invoke-virtual {p1, v3, v12}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 156
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 124
    .end local v0    # "bottomHeaderHeight":I
    .end local v4    # "listHeight":I
    .end local v5    # "maxBottomHeader":I
    .restart local v7    # "partition":I
    .restart local v8    # "position":I
    :cond_a
    invoke-virtual {p1, v3, v10, v13}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderPinnedAtTop(IIZ)V

    .line 125
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v12

    add-int/2addr v10, v12

    .line 126
    move v6, v3

    .line 116
    .end local v7    # "partition":I
    .end local v8    # "position":I
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 142
    .restart local v0    # "bottomHeaderHeight":I
    .restart local v4    # "listHeight":I
    .restart local v5    # "maxBottomHeader":I
    .restart local v8    # "position":I
    :cond_c
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {p0, v12}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionForPosition(I)I

    move-result v7

    .line 143
    .restart local v7    # "partition":I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_8

    if-le v3, v7, :cond_8

    .line 147
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v2

    .line 148
    .local v2, "height":I
    add-int/2addr v0, v2

    .line 150
    sub-int v12, v4, v0

    invoke-virtual {p1, v3, v12, v13}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderPinnedAtBottom(IIZ)V

    .line 151
    move v5, v3

    .line 152
    goto :goto_2
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionCount()I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "partition"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->hasHeader(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "view":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 73
    .local v0, "headerType":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 74
    move-object v1, p2

    .line 77
    .end local v0    # "headerType":Ljava/lang/Integer;
    :cond_0
    if-nez v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v2, p3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 81
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 83
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 84
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 87
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return-object v1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public getPinnedPartitionHeadersEnabled()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    return v0
.end method

.method public getScrollPositionForHeader(I)I
    .locals 1
    .param p1, "viewIndex"    # I

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPositionForPartition(I)I

    move-result v0

    return v0
.end method

.method protected isPinnedPartitionHeaderVisible(I)Z
    .locals 1
    .param p1, "partition"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->hasHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->isPartitionEmpty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPinnedPartitionHeadersEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    .line 47
    return-void
.end method
