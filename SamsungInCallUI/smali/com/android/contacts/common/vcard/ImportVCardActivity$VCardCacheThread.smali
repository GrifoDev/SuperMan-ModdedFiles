.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
.super Ljava/lang/Thread;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardCacheThread"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

.field private b:Z

.field private c:Landroid/os/PowerManager$WakeLock;

.field private d:Lcom/android/c/k;

.field private final e:[Landroid/net/Uri;

.field private final f:[Ljava/lang/String;

.field private final g:[B

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;[Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->e:[Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->f:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->g:[B

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->h:Ljava/lang/String;

    return-void
.end method

.method private a([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 11

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    new-instance v1, Lcom/android/c/o;

    invoke-direct {v1}, Lcom/android/c/o;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->d:Lcom/android/c/k;
    :try_end_0
    .catch Lcom/android/c/a/e; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    new-instance v3, Lcom/android/c/h;

    invoke-direct {v3}, Lcom/android/c/h;-><init>()V
    :try_end_1
    .catch Lcom/android/c/a/g; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Lcom/android/c/t;

    invoke-direct {v1}, Lcom/android/c/t;-><init>()V
    :try_end_2
    .catch Lcom/android/c/a/g; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->d:Lcom/android/c/k;

    invoke-virtual {v2, v3}, Lcom/android/c/k;->a(Lcom/android/c/j;)V

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->d:Lcom/android/c/k;

    invoke-virtual {v2, v1}, Lcom/android/c/k;->a(Lcom/android/c/j;)V

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->d:Lcom/android/c/k;

    invoke-virtual {v2, v4}, Lcom/android/c/k;->a(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/c/a/g; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/c/a/e; {:try_start_4 .. :try_end_4} :catch_8

    move-object v2, v3

    move v3, v5

    :goto_1
    if-eqz v3, :cond_0

    const/4 v0, 0x2

    :cond_0
    move v7, v0

    move-object v3, v2

    move-object v2, v1

    :goto_2
    new-instance v0, Lcom/android/contacts/common/vcard/ImportRequest;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->d(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/c/t;->c()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/c/t;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/c/h;->c()I

    move-result v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/contacts/common/vcard/ImportRequest;-><init>(Lcom/android/contacts/common/model/account/AccountWithDataSet;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v0

    :cond_1
    :try_start_5
    invoke-virtual {v6, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5
    .catch Lcom/android/c/a/e; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v2, v3

    move v3, v5

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v1, v2

    :goto_3
    if-eqz v4, :cond_2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_2
    :goto_4
    if-eqz p1, :cond_3

    :try_start_7
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v3

    :goto_5
    new-instance v3, Lcom/android/c/p;

    invoke-direct {v3}, Lcom/android/c/p;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->d:Lcom/android/c/k;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    new-instance v3, Lcom/android/c/h;

    invoke-direct {v3}, Lcom/android/c/h;-><init>()V
    :try_end_8
    .catch Lcom/android/c/a/g; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    new-instance v2, Lcom/android/c/t;

    invoke-direct {v2}, Lcom/android/c/t;-><init>()V
    :try_end_9
    .catch Lcom/android/c/a/g; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->d:Lcom/android/c/k;

    invoke-virtual {v1, v3}, Lcom/android/c/k;->a(Lcom/android/c/j;)V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->d:Lcom/android/c/k;

    invoke-virtual {v1, v2}, Lcom/android/c/k;->a(Lcom/android/c/j;)V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->d:Lcom/android/c/k;

    invoke-virtual {v1, v4}, Lcom/android/c/k;->a(Ljava/io/InputStream;)V
    :try_end_a
    .catch Lcom/android/c/a/g; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v4, :cond_5

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/android/c/a/e; {:try_start_b .. :try_end_b} :catch_9

    move-object v1, v2

    move-object v2, v3

    move v3, v0

    goto :goto_1

    :cond_3
    :try_start_c
    invoke-virtual {v6, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result-object v4

    goto :goto_5

    :catch_2
    move-exception v3

    :goto_6
    :try_start_d
    new-instance v3, Lcom/android/c/a/b;

    const-string v5, "vCard with unspported version."

    invoke-direct {v3, v5}, Lcom/android/c/a/b;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_0
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    :goto_7
    if-eqz v2, :cond_4

    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lcom/android/c/a/e; {:try_start_e .. :try_end_e} :catch_3

    :cond_4
    :goto_8
    :try_start_f
    throw v1
    :try_end_f
    .catch Lcom/android/c/a/e; {:try_start_f .. :try_end_f} :catch_3

    :catch_3
    move-exception v1

    move-object v1, v3

    move-object v2, v4

    :goto_9
    const-string v3, "VCardImport"

    const-string v4, "Nested Exception is found (it may be false-positive)."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_2

    :catch_4
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move v3, v0

    goto/16 :goto_1

    :catch_5
    move-exception v3

    goto :goto_4

    :catch_6
    move-exception v2

    goto :goto_8

    :catch_7
    move-exception v1

    move-object v1, v2

    goto :goto_9

    :catch_8
    move-exception v2

    move-object v2, v3

    goto :goto_9

    :catch_9
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_9

    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v9, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_7

    :catchall_3
    move-exception v2

    move-object v9, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_7

    :catchall_4
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_7

    :catchall_5
    move-exception v2

    move-object v9, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_7

    :catchall_6
    move-exception v1

    move-object v9, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_7

    :catch_a
    move-exception v2

    move-object v2, v3

    goto :goto_6

    :catch_b
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_6

    :catch_c
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_3

    :catch_d
    move-exception v2

    move-object v2, v3

    goto/16 :goto_3

    :cond_5
    move-object v1, v2

    move-object v2, v3

    move v3, v0

    goto/16 :goto_1

    :cond_6
    move-object v2, v3

    move v3, v5

    goto/16 :goto_1
.end method


# virtual methods
.method public a()[Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->e:[Landroid/net/Uri;

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->b:Z

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->d:Lcom/android/c/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->d:Lcom/android/c/k;

    invoke-virtual {v0}, Lcom/android/c/k;->a()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VCardImport"

    const-string v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "VCardImport"

    const-string v1, "Cancel request has come. Abort caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->b()V

    return-void
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x0

    const-string v1, "VCardImport"

    const-string v2, "vCard cache thread starts running."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->b(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "vCard cache thread must be launched after a service connection is established"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_0
    iget-boolean v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->b:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "VCardImport"

    const-string v1, "vCard cache operation is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "VCardImport"

    const-string v1, "Finished caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->b(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->c(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->g:[B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->g:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/android/c/a/b; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->b(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->a(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const-string v0, "VCardImport"

    const-string v1, "Finished caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->b(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->c(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "VCardImport"

    const-string v2, "Maybe the file is in wrong format"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v1, 0x7f090597

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(I)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v0, "VCardImport"

    const-string v1, "Finished caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->b(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->c(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :cond_3
    :try_start_5
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->e:[Landroid/net/Uri;

    array-length v5, v4

    move v1, v0

    :goto_3
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    iget-boolean v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->b:Z

    if-eqz v2, :cond_4

    const-string v0, "VCardImport"

    const-string v1, "vCard cache operation is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string v0, "VCardImport"

    const-string v1, "OutOfMemoryError occured during caching vCard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v4, 0x7f090595

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v0, "VCardImport"

    const-string v1, "Finished caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->b(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->c(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    :try_start_7
    iget-object v7, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->f:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aget-object v1, v7, v1
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v7, 0x0

    :try_start_8
    invoke-direct {p0, v7, v6, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;
    :try_end_8
    .catch Lcom/android/c/a/b; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v1

    :try_start_9
    iget-boolean v6, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->b:Z

    if-eqz v6, :cond_5

    const-string v0, "VCardImport"

    const-string v1, "vCard cache operation is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v0, "VCardImport"

    const-string v1, "Finished caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->b(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->c(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_a
    const-string v1, "VCardImport"

    const-string v2, "Maybe the file is in wrong format"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v1, 0x7f090597

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(I)V
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v0, "VCardImport"

    const-string v1, "Finished caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->b(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->c(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_b
    const-string v1, "VCardImport"

    const-string v2, "Unexpected IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v1, 0x7f090594

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(I)V
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v0, "VCardImport"

    const-string v1, "Finished caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->b(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->c(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    :try_start_c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto/16 :goto_3

    :cond_6
    const-string v0, "VCardImport"

    const-string v1, "Empty import requests. Ignore it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_d
    const-string v1, "VCardImport"

    const-string v2, "IOException during caching vCard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v4, 0x7f090594

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-string v0, "VCardImport"

    const-string v1, "Finished caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->b(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->c(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "VCardImport"

    const-string v2, "Finished caching vCard."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->b(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->c(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    throw v0
.end method
