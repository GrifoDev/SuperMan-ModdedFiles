.class public Lcom/android/contacts/common/list/ProfileAndContactsLoader;
.super Landroid/content/CursorLoader;


# instance fields
.field private a:Z

.field private b:[Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:[Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Z


# direct methods
.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->c:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Landroid/database/MatrixCursor;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->b:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    new-instance v3, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->b:[Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->b:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/Object;

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private c()Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->c:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->f:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->a:Z

    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->b()Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->g:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->c()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->g:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->c()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v3, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/Cursor;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;-><init>(Lcom/android/contacts/common/list/ProfileAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-object v3

    :catch_0
    move-exception v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->b:[Ljava/lang/String;

    return-void
.end method
