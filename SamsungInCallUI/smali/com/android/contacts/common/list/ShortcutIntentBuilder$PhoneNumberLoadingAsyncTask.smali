.class final Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;
.super Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneNumberLoadingAsyncTask"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->a:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;-><init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    iput-object p3, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->a:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-static {v0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->a(Lcom/android/contacts/common/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->b:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->c()[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->d:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->g:J

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->j:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->k:I

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->l:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->e:Ljava/lang/String;
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
    .locals 9

    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->a:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->f:[B

    iget-object v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->j:Ljava/lang/String;

    iget v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->k:I

    iget-object v7, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->l:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->i:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->a(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->a(Ljava/lang/Void;)V

    return-void
.end method
