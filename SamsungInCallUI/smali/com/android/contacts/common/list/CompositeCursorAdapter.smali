.class public abstract Lcom/android/contacts/common/list/CompositeCursorAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->c:I

    iput-boolean v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->d:Z

    iput-boolean v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->e:Z

    iput-object p1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected a(II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected a(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-eqz p4, :cond_0

    :goto_0
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->a(Landroid/view/View;ILandroid/database/Cursor;I)V

    return-object p4

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->a:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->a(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    goto :goto_0
.end method

.method protected a(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p3, :cond_0

    :goto_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->a(Landroid/view/View;ILandroid/database/Cursor;)V

    return-object p3

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, p4}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->a(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method protected abstract a(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected a(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->c()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(ILandroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->c:Landroid/database/Cursor;

    if-eq v0, p2, :cond_2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iput-object p2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->c:Landroid/database/Cursor;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->d:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->c()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public a(ILcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->c()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iput-boolean p2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->b:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->c()V

    return-void
.end method

.method protected a(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Landroid/view/View;ILandroid/database/Cursor;I)V
.end method

.method public a(Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->c()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-boolean v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    return-object v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->c:Landroid/database/Cursor;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->c()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iput-boolean p2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->a:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->c()V

    return-void
.end method

.method protected b(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->d:Z

    return-void
.end method

.method public c(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-boolean v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->b:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public d(I)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method protected e()V
    .locals 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->c:I

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v1, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->c:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    move v1, v2

    :goto_2
    iget-boolean v4, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->b:Z

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    iget-boolean v4, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->a:Z

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    iput v1, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->e:I

    iget v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->c:I

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->d:Z

    goto :goto_0
.end method

.method public e(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(I)I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->e()V

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->e:I

    add-int/2addr v0, v2

    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public g(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->e()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->e:I

    add-int/2addr v2, v1

    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    sub-int v1, p1, v1

    iget-boolean v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->b:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    :goto_1
    return v0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->e()V

    iget v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->c:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->e()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->e:I

    add-int/2addr v2, v1

    if-lt p1, v1, :cond_4

    if-ge p1, v2, :cond_4

    sub-int v1, p1, v1

    iget-boolean v2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->b:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    move-object v0, v3

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    move-object v0, v3

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 7

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->e()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->e:I

    add-int/2addr v2, v1

    if-lt p1, v1, :cond_5

    if-ge p1, v2, :cond_5

    sub-int v1, p1, v1

    iget-boolean v2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->b:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    if-ne v1, v6, :cond_1

    move-wide v0, v4

    :goto_1
    return-wide v0

    :cond_1
    iget v2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->d:I

    if-ne v2, v6, :cond_2

    move-wide v0, v4

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->c:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move-wide v0, v4

    goto :goto_1

    :cond_4
    iget v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->d:I

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move-wide v0, v4

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->e()V

    iget-object v2, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v5, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->e:I

    add-int v4, v2, v0

    if-lt p1, v2, :cond_1

    if-ge p1, v4, :cond_1

    sub-int v2, p1, v2

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-boolean v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->b:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_2
    return v0

    :cond_0
    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->a(II)I

    move-result v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v2, v4

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->e()V

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v1, v3, :cond_4

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->e:I

    add-int/2addr v0, v2

    if-lt p1, v2, :cond_3

    if-ge p1, v0, :cond_3

    sub-int v3, p1, v2

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-boolean v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->b:Z

    if-eqz v0, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->a(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View should not be null, partition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->c:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-object v2, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->c:Landroid/database/Cursor;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->a(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_5
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public h(I)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->e()V

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->e:I

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return v2
.end method

.method public isEnabled(I)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->e()V

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v2, v5, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->e:I

    add-int v4, v3, v0

    if-lt p1, v3, :cond_1

    if-ge p1, v4, :cond_1

    sub-int v3, p1, v3

    iget-object v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    iget-boolean v0, v0, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->b:Z

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/list/CompositeCursorAdapter;->b(II)Z

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v4

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->f:Z

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CompositeCursorAdapter;->f:Z

    goto :goto_0
.end method
