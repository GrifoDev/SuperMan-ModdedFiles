.class public abstract Lcom/android/contacts/common/list/ContactEntryListAdapter;
.super Lcom/android/contacts/common/list/IndexerListAdapter;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Lcom/android/contacts/common/ContactPhotoManager;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Lcom/android/contacts/common/list/ContactListFilter;

.field private t:Z

.field private u:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->e:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->p:I

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->q:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->t:Z

    const v0, 0x7f0905d2

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->i(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->g()V

    return-void
.end method

.method private b(Landroid/database/Cursor;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Landroid/widget/SectionIndexer;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    move v0, v1

    :goto_1
    array-length v6, v2

    if-ge v0, v6, :cond_2

    add-int/lit8 v6, v0, 0x1

    aget-object v7, v2, v0

    aput-object v7, v4, v6

    add-int/lit8 v6, v0, 0x1

    aget v7, v3, v0

    aput v7, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    aput v0, v5, v1

    const-string v0, ""

    aput-object v0, v4, v1

    new-instance v0, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-direct {v0, v4, v5}, Lcom/android/contacts/common/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/common/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Landroid/widget/SectionIndexer;)V

    goto :goto_0
.end method


# virtual methods
.method public a(II)I
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->a(II)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->n(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->D()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->p(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->a:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->f()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected a(J)I
    .locals 7

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v3, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(Lcom/android/contacts/common/list/DirectoryPartition;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/contacts/common/list/DirectoryPartition;->i()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->p:I

    :cond_0
    return v0
.end method

.method protected a(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 6

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v4

    invoke-static {v2, v3, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected synthetic a(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040054

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->G()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v0
.end method

.method protected a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V

    return-object v0
.end method

.method public a(Landroid/database/Cursor;II)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 4

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    iget-boolean v3, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->e:Z

    invoke-direct {v2, v0, v1, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method

.method public a(ILandroid/database/Cursor;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->a(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->k:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->o(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->k:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->c()V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->a(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->C()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->D()I

    move-result v0

    if-ne p1, v0, :cond_4

    invoke-direct {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(Landroid/database/Cursor;)V

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->k:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->k:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public abstract a(Landroid/content/CursorLoader;J)V
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 12

    const/4 v1, 0x0

    const/4 v11, -0x1

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ContactEntryListAdapter"

    const-string v1, "Directory search loader returned an empty cursor, which implies we have no directory entries."

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "directoryType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "displayName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "photoSupport"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v8, v9}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(J)I

    move-result v0

    if-ne v0, v11, :cond_1

    new-instance v10, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-direct {v10, v1, v2}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    invoke-virtual {v10, v8, v9}, Lcom/android/contacts/common/list/DirectoryPartition;->a(J)V

    invoke-static {v8, v9}, Lcom/android/contacts/common/compat/DirectoryCompat;->b(J)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v8, v9}, Lcom/android/contacts/common/compat/DirectoryCompat;->c(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a:Landroid/content/Context;

    const v8, 0x7f090571

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/contacts/common/list/DirectoryPartition;->c(Ljava/lang/String;)V

    :goto_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/contacts/common/list/DirectoryPartition;->a(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b(Ljava/lang/String;)V

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v8, 0x3

    if-ne v0, v8, :cond_6

    :cond_2
    move v0, v2

    :goto_3
    invoke-virtual {v10, v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b(Z)V

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a:Landroid/content/Context;

    const v8, 0x7f090570

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/contacts/common/list/DirectoryPartition;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v8, v9}, Lcom/android/contacts/common/compat/DirectoryCompat;->c(J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a:Landroid/content/Context;

    const v8, 0x7f0905cf

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/contacts/common/list/DirectoryPartition;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->u:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/contacts/common/list/DirectoryPartition;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d()I

    move-result v0

    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v2, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v2, :cond_8

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(I)V

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->c()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->j:Landroid/view/View;

    return-void
.end method

.method protected a(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v4

    const v1, 0x7f10014f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100150

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4, v5}, Lcom/android/contacts/common/compat/DirectoryCompat;->b(J)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v3

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    const v1, 0x7f0a0462

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_2
.end method

.method protected a(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1

    check-cast p1, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->C()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Lcom/android/contacts/common/list/ContactListItemView;I)V

    return-void
.end method

.method protected a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setSectionHeaderTitle(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->k:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method

.method public a(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->s:Lcom/android/contacts/common/list/ContactListFilter;

    return-void
.end method

.method protected a(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/common/ContactsUtils;->a(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setWorkProfileIconEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIIII)V
    .locals 7

    const-wide/16 v2, 0x0

    invoke-interface {p3, p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v1

    invoke-virtual {p0, p2, p3, p6, p7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setPrioritizedMimeType(Ljava/lang/String;)V

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p5, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->p()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->t:Z

    iget-boolean v5, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->e:Z

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    :goto_0
    return-void

    :cond_3
    invoke-interface {p3, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x0

    if-nez v2, :cond_4

    invoke-virtual {p0, p3, p8, p7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Landroid/database/Cursor;II)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v6

    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->p()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    const/4 v3, -0x1

    iget-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->t:Z

    iget-boolean v5, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->e:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method protected a(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 4

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setId(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->m:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/SearchUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->n:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 8

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v4, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(IZ)V

    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(IZ)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected b(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;
    .locals 2

    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->C()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    return-object v0
.end method

.method protected b(J)Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 7

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v3, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v4, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/DirectoryPartition;->a(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->b()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->r:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->f:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->g:Z

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->h:Z

    return-void
.end method

.method protected g()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->h()Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V

    return-void
.end method

.method public g(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->i:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->E()Landroid/widget/SectionIndexer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09068a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->f()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected h()Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-direct {v0, v4, v4}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->a(J)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090534

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->a(Z)V

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->b(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->u:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->t:Z

    return-void
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v5, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v5, :cond_1

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->f()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->a(I)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method protected i(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->u:Ljava/lang/CharSequence;

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->o:I

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->n:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->p:I

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->m:Ljava/lang/String;

    return-object v0
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b:I

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->o:I

    return v0
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->c:I

    return-void
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b:I

    return v0
.end method

.method protected n(I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->f(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const-string v4, "is_user_profile"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v2, v1

    :cond_0
    return v2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->c:I

    return v0
.end method

.method public o(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->h()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected p()Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->k:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->e:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->r:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->f:Z

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->g:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->h:Z

    return v0
.end method

.method protected w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v4, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public y()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->s:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method
