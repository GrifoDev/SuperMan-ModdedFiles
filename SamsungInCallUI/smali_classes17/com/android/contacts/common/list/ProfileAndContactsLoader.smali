.class public Lcom/android/contacts/common/list/ProfileAndContactsLoader;
.super Landroid/content/CursorLoader;
.source "ProfileAndContactsLoader.java"


# instance fields
.field private mExtraProjection:[Ljava/lang/String;

.field private mExtraSelection:Ljava/lang/String;

.field private mExtraSelectionArgs:[Ljava/lang/String;

.field private mExtraUri:Landroid/net/Uri;

.field private mLoadProfile:Z

.field private mMergeExtraContactsAfterPrimary:Z

.field private mProjection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private canLoadExtraContacts()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraProjection:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadExtraContacts()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private loadProfile()Landroid/database/MatrixCursor;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 137
    :goto_0
    return-object v3

    .line 127
    :cond_0
    :try_start_0
    new-instance v8, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 128
    .local v8, "matrix":Landroid/database/MatrixCursor;
    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    array-length v0, v0

    new-array v9, v0, [Ljava/lang/Object;

    .line 129
    .local v9, "row":[Ljava/lang/Object;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v0, v9

    if-ge v7, v0, :cond_1

    .line 131
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 130
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 133
    :cond_1
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 137
    .end local v7    # "i":I
    .end local v8    # "matrix":Landroid/database/MatrixCursor;
    .end local v9    # "row":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8    # "matrix":Landroid/database/MatrixCursor;
    .restart local v9    # "row":[Ljava/lang/Object;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    goto :goto_0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 85
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 86
    .local v2, "cursors":Ljava/util/List;, "Ljava/util/List<Landroid/database/Cursor;>;"
    iget-boolean v3, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mLoadProfile:Z

    if-eqz v3, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadProfile()Landroid/database/MatrixCursor;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->canLoadExtraContacts()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mMergeExtraContactsAfterPrimary:Z

    if-nez v3, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadExtraContacts()Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    const/4 v1, 0x0

    .line 96
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 100
    :goto_0
    move-object v0, v1

    .line 101
    .local v0, "contactsCursor":Landroid/database/Cursor;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->canLoadExtraContacts()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mMergeExtraContactsAfterPrimary:Z

    if-eqz v3, :cond_2

    .line 103
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadExtraContacts()Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_2
    new-instance v4, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/database/Cursor;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/database/Cursor;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;-><init>(Lcom/android/contacts/common/list/ProfileAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-object v4

    .line 97
    .end local v0    # "contactsCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoadExtraContactsFirst(Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraUri:Landroid/net/Uri;

    .line 64
    iput-object p2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraProjection:[Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mMergeExtraContactsAfterPrimary:Z

    .line 66
    return-void
.end method

.method public setLoadExtraContactsLast(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraUri:Landroid/net/Uri;

    .line 72
    iput-object p2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraProjection:[Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraSelection:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraSelectionArgs:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mMergeExtraContactsAfterPrimary:Z

    .line 76
    return-void
.end method

.method public setLoadProfile(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mLoadProfile:Z

    .line 54
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    .line 59
    return-void
.end method
