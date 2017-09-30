.class abstract Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LoadingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:Landroid/net/Uri;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:[B

.field protected g:J

.field final synthetic h:Lcom/android/contacts/common/list/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->h:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->b:Landroid/net/Uri;

    return-void
.end method

.method private b()V
    .locals 9

    const/4 v8, 0x0

    iget-wide v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->h:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-static {v0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->a(Lcom/android/contacts/common/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->a()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->g:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->f:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->h:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-static {v0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->a(Lcom/android/contacts/common/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->a()V

    invoke-direct {p0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->b()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a()V
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
