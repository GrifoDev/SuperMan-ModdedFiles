.class public abstract Lcom/android/contacts/common/list/CompositeCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x2


# instance fields
.field private mCacheValid:Z

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field private mPartitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mCount:I

    .line 67
    iput-boolean v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mCacheValid:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mNotificationsEnabled:Z

    .line 76
    iput-object p1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    .line 78
    return-void
.end method


# virtual methods
.method public addPartition(ILcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "partition"    # Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->invalidate()V

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method

.method public addPartition(Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V
    .locals 1
    .param p1, "partition"    # Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->invalidate()V

    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public addPartition(ZZ)V
    .locals 1
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 90
    new-instance v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->addPartition(Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V

    .line 91
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 3

    .prologue
    .line 484
    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    .line 485
    .local v0, "mPartition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    iget-boolean v2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v2, :cond_0

    .line 486
    const/4 v1, 0x0

    .line 489
    .end local v0    # "mPartition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 389
    return-void
.end method

.method protected abstract bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v0, v1, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 218
    .local v0, "prevCursor":Landroid/database/Cursor;
    if-eq v0, p2, :cond_2

    .line 219
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iput-object p2, v1, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 223
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->idColumnIndex:I

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->invalidate()V

    .line 227
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 229
    :cond_2
    return-void
.end method

.method public clearPartitions()V
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    .line 122
    .local v0, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    goto :goto_0

    .line 124
    .end local v0    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->invalidate()V

    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 126
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 132
    iget-object v2, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    .line 133
    .local v1, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    iget-object v0, v1, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 134
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 138
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->invalidate()V

    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 141
    return-void
.end method

.method protected ensureCacheValid()V
    .locals 5

    .prologue
    .line 166
    iget-boolean v3, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mCacheValid:Z

    if-eqz v3, :cond_0

    .line 189
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mCount:I

    .line 171
    iget-object v3, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    .line 172
    .local v2, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    iget-object v1, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 174
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    :cond_1
    const/4 v0, 0x0

    .line 179
    .local v0, "count":I
    :goto_2
    iget-boolean v4, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_3

    .line 180
    if-nez v0, :cond_2

    iget-boolean v4, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    if-eqz v4, :cond_3

    .line 181
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 184
    :cond_3
    iput v0, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->count:I

    .line 185
    iget v4, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mCount:I

    goto :goto_1

    .line 177
    .end local v0    # "count":I
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_2

    .line 188
    .end local v0    # "count":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mCacheValid:Z

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->ensureCacheValid()V

    .line 203
    iget v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mCount:I

    return v0
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "partition"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 370
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 373
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 374
    return-object v0

    .line 370
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    .line 372
    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 423
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->ensureCacheValid()V

    .line 424
    const/4 v4, 0x0

    .line 425
    .local v4, "start":I
    iget-object v6, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    .line 426
    .local v2, "mPartition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    iget v7, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->count:I

    add-int v1, v4, v7

    .line 427
    .local v1, "end":I
    if-lt p1, v4, :cond_4

    if-ge p1, v1, :cond_4

    .line 428
    sub-int v3, p1, v4

    .line 429
    .local v3, "offset":I
    iget-boolean v6, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v6, :cond_0

    .line 430
    add-int/lit8 v3, v3, -0x1

    .line 432
    :cond_0
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    move-object v0, v5

    .line 444
    .end local v1    # "end":I
    .end local v2    # "mPartition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    .end local v3    # "offset":I
    :cond_1
    :goto_1
    return-object v0

    .line 435
    .restart local v1    # "end":I
    .restart local v2    # "mPartition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    .restart local v3    # "offset":I
    :cond_2
    iget-object v0, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 436
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_3
    move-object v0, v5

    .line 437
    goto :goto_1

    .line 441
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "offset":I
    :cond_4
    move v4, v1

    .line 442
    goto :goto_0

    .end local v1    # "end":I
    .end local v2    # "mPartition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_5
    move-object v0, v5

    .line 444
    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, -0x1

    const-wide/16 v6, 0x0

    .line 451
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->ensureCacheValid()V

    .line 452
    const/4 v4, 0x0

    .line 453
    .local v4, "start":I
    iget-object v5, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    .line 454
    .local v2, "mPartition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    iget v8, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->count:I

    add-int v1, v4, v8

    .line 455
    .local v1, "end":I
    if-lt p1, v4, :cond_3

    if-ge p1, v1, :cond_3

    .line 456
    sub-int v3, p1, v4

    .line 457
    .local v3, "offset":I
    iget-boolean v5, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    .line 458
    add-int/lit8 v3, v3, -0x1

    .line 460
    :cond_0
    if-ne v3, v9, :cond_2

    .line 476
    .end local v1    # "end":I
    .end local v2    # "mPartition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    .end local v3    # "offset":I
    :cond_1
    :goto_1
    return-wide v6

    .line 463
    .restart local v1    # "end":I
    .restart local v2    # "mPartition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    .restart local v3    # "offset":I
    :cond_2
    iget v5, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->idColumnIndex:I

    if-eq v5, v9, :cond_1

    .line 467
    iget-object v0, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 468
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 471
    iget v5, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->idColumnIndex:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    goto :goto_1

    .line 473
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "offset":I
    :cond_3
    move v4, v1

    .line 474
    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, -0x1

    .line 312
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->ensureCacheValid()V

    .line 313
    const/4 v4, 0x0

    .line 314
    .local v4, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 315
    iget-object v5, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v5, v5, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v4, v5

    .line 316
    .local v0, "end":I
    if-lt p1, v4, :cond_2

    if-ge p1, v0, :cond_2

    .line 317
    sub-int v3, p1, v4

    .line 318
    .local v3, "offset":I
    iget-object v5, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-boolean v5, v5, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    .line 319
    add-int/lit8 v3, v3, -0x1

    .line 321
    :cond_0
    if-ne v3, v6, :cond_1

    move v5, v6

    .line 324
    :goto_1
    return v5

    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->getItemViewType(II)I

    move-result v5

    goto :goto_1

    .line 327
    .end local v3    # "offset":I
    :cond_2
    move v4, v0

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "end":I
    :cond_3
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v5
.end method

.method protected getItemViewType(II)I
    .locals 1
    .param p1, "partition"    # I
    .param p2, "position"    # I

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public getOffsetInPartition(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->ensureCacheValid()V

    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, "start":I
    iget-object v4, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    .line 263
    .local v2, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    iget v5, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v5

    .line 264
    .local v0, "end":I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 265
    sub-int v1, p1, v3

    .line 266
    .local v1, "offset":I
    iget-boolean v4, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_0

    .line 267
    add-int/lit8 v1, v1, -0x1

    .line 273
    .end local v0    # "end":I
    .end local v1    # "offset":I
    .end local v2    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_0
    :goto_1
    return v1

    .line 271
    .restart local v0    # "end":I
    .restart local v2    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_1
    move v3, v0

    .line 272
    goto :goto_0

    .line 273
    .end local v0    # "end":I
    .end local v2    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    return-object v0
.end method

.method public getPartitionCount()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPartitionForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->ensureCacheValid()V

    .line 244
    const/4 v3, 0x0

    .line 245
    .local v3, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 246
    iget-object v4, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v4, v4, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v4

    .line 247
    .local v0, "end":I
    if-lt p1, v3, :cond_0

    if-ge p1, v0, :cond_0

    .line 252
    .end local v0    # "end":I
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 250
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_0
    move v3, v0

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "end":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPositionForPartition(I)I
    .locals 3
    .param p1, "partition"    # I

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->ensureCacheValid()V

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v2, v2, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->count:I

    add-int/2addr v1, v2

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return v1
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 397
    if-eqz p4, :cond_0

    .line 398
    move-object v6, p4

    .line 402
    .local v6, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 403
    return-object v6

    .line 400
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->ensureCacheValid()V

    .line 335
    const/4 v8, 0x0

    .line 336
    .local v8, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "n":I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 337
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->count:I

    add-int v6, v8, v0

    .line 338
    .local v6, "end":I
    if-lt p1, v8, :cond_3

    if-ge p1, v6, :cond_3

    .line 339
    sub-int v3, p1, v8

    .line 340
    .local v3, "offset":I
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-boolean v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v0, :cond_0

    .line 341
    add-int/lit8 v3, v3, -0x1

    .line 344
    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 353
    .local v9, "view":Landroid/view/View;
    :goto_1
    if-nez v9, :cond_5

    .line 354
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View should not be null, partition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    .end local v9    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t move cursor to position "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_1

    .line 359
    .end local v3    # "offset":I
    .end local v9    # "view":Landroid/view/View;
    :cond_3
    move v8, v6

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 362
    .end local v6    # "end":I
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 357
    .restart local v3    # "offset":I
    .restart local v6    # "end":I
    .restart local v9    # "view":Landroid/view/View;
    :cond_5
    return-object v9
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasHeader(I)Z
    .locals 1
    .param p1, "partition"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-boolean v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->hasHeader:Z

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mCacheValid:Z

    .line 159
    return-void
.end method

.method public isEnabled(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 497
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->ensureCacheValid()V

    .line 498
    const/4 v4, 0x0

    .line 499
    .local v4, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 500
    iget-object v5, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v5, v5, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v4, v5

    .line 501
    .local v0, "end":I
    if-lt p1, v4, :cond_1

    if-ge p1, v0, :cond_1

    .line 502
    sub-int v3, p1, v4

    .line 503
    .local v3, "offset":I
    iget-object v5, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-boolean v5, v5, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    move v5, v6

    .line 512
    .end local v0    # "end":I
    .end local v3    # "offset":I
    :goto_1
    return v5

    .line 506
    .restart local v0    # "end":I
    .restart local v3    # "offset":I
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->isEnabled(II)Z

    move-result v5

    goto :goto_1

    .line 509
    .end local v3    # "offset":I
    :cond_1
    move v4, v0

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "end":I
    :cond_2
    move v5, v6

    .line 512
    goto :goto_1
.end method

.method protected isEnabled(II)Z
    .locals 1
    .param p1, "partition"    # I
    .param p2, "position"    # I

    .prologue
    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public isPartitionEmpty(I)Z
    .locals 2
    .param p1, "partition"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v0, v1, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 236
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mNotificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mNotificationNeeded:Z

    .line 538
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mNotificationNeeded:Z

    goto :goto_0
.end method

.method public removePartition(I)V
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v0, v1, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 107
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->invalidate()V

    .line 112
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method

.method public setHasHeader(IZ)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iput-boolean p2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->hasHeader:Z

    .line 145
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->invalidate()V

    .line 146
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mNotificationsEnabled:Z

    .line 529
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mNotificationNeeded:Z

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 532
    :cond_0
    return-void
.end method

.method public setShowIfEmpty(IZ)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iput-boolean p2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->invalidate()V

    .line 151
    return-void
.end method
