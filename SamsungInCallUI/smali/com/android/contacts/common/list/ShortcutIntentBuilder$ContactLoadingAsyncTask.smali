.class final Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;
.super Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactLoadingAsyncTask"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/list/ShortcutIntentBuilder;


# virtual methods
.method protected a()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->a:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-static {v0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->a(Lcom/android/contacts/common/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->b:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->b()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->d:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->g:J

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 6

    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->a:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->f:[B

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->a(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->a(Ljava/lang/Void;)V

    return-void
.end method
