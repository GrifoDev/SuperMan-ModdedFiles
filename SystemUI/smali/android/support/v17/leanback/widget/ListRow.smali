.class public Landroid/support/v17/leanback/widget/ListRow;
.super Landroid/support/v17/leanback/widget/Row;
.source "ListRow.java"


# instance fields
.field private final mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mContentDescription:Ljava/lang/CharSequence;


# virtual methods
.method public final getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRow;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRow;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ListRow;->mContentDescription:Ljava/lang/CharSequence;

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRow;->getHeaderItem()Landroid/support/v17/leanback/widget/HeaderItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/HeaderItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/HeaderItem;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    return-object v3
.end method
