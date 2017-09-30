.class public abstract Lcom/android/contacts/common/list/ContactListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/CharSequence;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;


# direct methods
.method protected static a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->d:Ljava/lang/String;

    return-object v0
.end method

.method public B()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->e:J

    return-wide v0
.end method

.method protected synthetic a(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactListAdapter;->b(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(ILandroid/database/Cursor;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->g(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->C()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->p(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->n()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/database/Cursor;II)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->a(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    return-void
.end method

.method protected b(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;
    .locals 2

    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setActivatedStateSupported(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->f:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->f:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    :cond_0
    return-object v0
.end method

.method protected b(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->o(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :goto_1
    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->p()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->r()Z

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v3, v6

    :goto_2
    if-nez v3, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->a(Landroid/database/Cursor;II)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v6

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->p()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->r()Z

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-wide v2, v0

    goto :goto_1
.end method

.method protected b(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->b(Landroid/database/Cursor;II)V

    return-void
.end method

.method public b(ILandroid/database/Cursor;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->z()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->A()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->B()J

    move-result-wide v4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected c(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected final i(Z)[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->n()I

    move-result v0

    if-eqz p1, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->a()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->b()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->c()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->d()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public z()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->c:J

    return-wide v0
.end method
