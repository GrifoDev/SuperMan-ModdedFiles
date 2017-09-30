.class public Lcom/android/contacts/common/vcard/ExportProcessor;
.super Lcom/android/contacts/common/vcard/ProcessorBase;


# instance fields
.field private final a:Lcom/android/contacts/common/vcard/VCardService;

.field private final b:Landroid/content/ContentResolver;

.field private final c:Landroid/app/NotificationManager;

.field private final d:Lcom/android/contacts/common/vcard/ExportRequest;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private volatile g:Z

.field private volatile h:Z

.field private final i:I

.field private final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ProcessorBase;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->i:I

    new-instance v0, Lcom/android/contacts/common/vcard/ExportProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/vcard/ExportProcessor$1;-><init>(Lcom/android/contacts/common/vcard/ExportProcessor;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->j:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {p1}, Lcom/android/contacts/common/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->b:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->c:Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->d:Lcom/android/contacts/common/vcard/ExportRequest;

    iput p3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    iput-object p4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/android/contacts/common/vcard/ExportProcessor;)Lcom/android/contacts/common/vcard/VCardService;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Failed to get database information"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f090522

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v1, "There\'s no exportable in the database"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f090523

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v1, "The vCard composer object is not correctly initialized"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090524

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;II)V
    .locals 8

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v1, 0x7f090587

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v1, 0x7f090588

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v1, 0x2

    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->c:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    iget v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    invoke-static {v1, p1, p2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->c:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    iget v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const/high16 v2, 0x10000000

    invoke-static {v1, p1, p2, v0, v2}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->c:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    iget v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v2, 0x7f090535

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 12

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->d:Lcom/android/contacts/common/vcard/ExportRequest;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VCardExport"

    const-string v3, "Export request is cancelled before handling the request"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/c/c;->b()V

    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    iget v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    invoke-virtual {v0, v1, v7}, Lcom/android/contacts/common/vcard/VCardService;->b(IZ)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VCardExport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v11, v10, Lcom/android/contacts/common/vcard/ExportRequest;->a:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->b:Landroid/content/ContentResolver;

    invoke-virtual {v0, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    :try_start_4
    iget-object v0, v10, Lcom/android/contacts/common/vcard/ExportRequest;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v1, 0x7f090529

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/c/d;->a(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_2
    new-instance v0, Lcom/android/c/c;

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v5, 0x1

    invoke-direct {v0, v4, v1, v5}, Lcom/android/c/c;-><init>(Landroid/content/Context;IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    sget-object v6, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/c/c;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/android/c/c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VCardExport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialization of vCard composer failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/contacts/common/vcard/ExportProcessor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v3, 0x7f09058e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/vcard/ExportProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/c/c;->b()V

    :cond_3
    if-eqz v9, :cond_4

    :try_start_7
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    iget v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    invoke-virtual {v0, v1, v7}, Lcom/android/contacts/common/vcard/VCardService;->b(IZ)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_8
    const-string v3, "VCardExport"

    const-string v4, "FileNotFoundException thrown"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v4, 0x7f09058f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/contacts/common/vcard/ExportProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/c/c;->b()V

    :cond_5
    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    iget v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    invoke-virtual {v0, v1, v7}, Lcom/android/contacts/common/vcard/VCardService;->b(IZ)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v1, "VCardExport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    :try_start_a
    invoke-static {v0}, Lcom/android/c/d;->a(Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v0

    move v1, v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v1, "VCardExport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    :try_start_b
    invoke-virtual {v0}, Lcom/android/c/c;->c()I

    move-result v2

    if-nez v2, :cond_b

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v2, 0x7f090595

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/vcard/ExportProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/c/c;->b()V

    :cond_9
    if-eqz v9, :cond_a

    :try_start_c
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    iget v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    invoke-virtual {v0, v1, v7}, Lcom/android/contacts/common/vcard/VCardService;->b(IZ)V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    const-string v1, "VCardExport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    move v1, v8

    :goto_6
    :try_start_d
    invoke-virtual {v0}, Lcom/android/c/c;->d()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v1, "VCardExport"

    const-string v2, "Export request is cancelled during composing vCard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/c/c;->b()V

    :cond_c
    if-eqz v9, :cond_d

    :try_start_e
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    iget v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    invoke-virtual {v0, v1, v7}, Lcom/android/contacts/common/vcard/VCardService;->b(IZ)V

    goto/16 :goto_1

    :catch_5
    move-exception v0

    const-string v1, "VCardExport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    :try_start_f
    invoke-virtual {v0}, Lcom/android/c/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    rem-int/lit8 v3, v1, 0x64

    if-ne v3, v8, :cond_f

    invoke-direct {p0, v11, v2, v1}, Lcom/android/contacts/common/vcard/ExportProcessor;->a(Landroid/net/Uri;II)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v0}, Lcom/android/c/c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VCardExport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read a contact: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/contacts/common/vcard/ExportProcessor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v3, 0x7f090590

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/vcard/ExportProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/c/c;->b()V

    :cond_10
    if-eqz v9, :cond_11

    :try_start_11
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :cond_11
    :goto_8
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    iget v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    invoke-virtual {v0, v1, v7}, Lcom/android/contacts/common/vcard/VCardService;->b(IZ)V

    goto/16 :goto_1

    :catch_7
    move-exception v0

    const-string v1, "VCardExport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_12
    :try_start_12
    const-string v1, "VCardExport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully finished exporting vCard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcom/android/contacts/common/vcard/ExportRequest;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v2, v10, Lcom/android/contacts/common/vcard/ExportRequest;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->a(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    invoke-static {v1, v11}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v11}, Lcom/android/contacts/common/vcard/ExportProcessor;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->j:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->j:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v2, 0x7f09058c

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v3, 0x7f090678

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v11}, Lcom/android/contacts/common/vcard/ExportProcessor;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :goto_9
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/c/c;->b()V

    :cond_13
    if-eqz v9, :cond_14

    :try_start_14
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    :cond_14
    :goto_a
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    iget v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    invoke-virtual {v0, v1, v8}, Lcom/android/contacts/common/vcard/VCardService;->b(IZ)V

    goto/16 :goto_1

    :cond_15
    if-nez v1, :cond_18

    :try_start_15
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v2, 0x7f09058c

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_b
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/common/vcard/ExportProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v1

    move-object v2, v9

    move-object v3, v0

    move-object v0, v1

    move v1, v8

    :goto_c
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/android/c/c;->b()V

    :cond_16
    if-eqz v2, :cond_17

    :try_start_16
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    :cond_17
    :goto_d
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    iget v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    invoke-virtual {v2, v3, v1}, Lcom/android/contacts/common/vcard/VCardService;->b(IZ)V

    throw v0

    :cond_18
    :try_start_17
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v3, 0x7f09058b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result-object v1

    goto :goto_b

    :catch_8
    move-exception v0

    const-string v1, "VCardExport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_9
    move-exception v2

    const-string v3, "VCardExport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catchall_1
    move-exception v0

    move v1, v7

    move-object v3, v2

    goto :goto_c

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move v1, v7

    goto :goto_c

    :catchall_3
    move-exception v1

    move-object v2, v9

    move-object v3, v0

    move-object v0, v1

    move v1, v7

    goto :goto_c
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    const v1, 0x7f090589

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->d:Lcom/android/contacts/common/vcard/ExportRequest;

    iget-object v4, v4, Lcom/android/contacts/common/vcard/ExportRequest;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    invoke-static {v1, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->c:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    iget v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->e:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public b()Lcom/android/contacts/common/vcard/ExportRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->d:Lcom/android/contacts/common/vcard/ExportRequest;

    return-object v0
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->h:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->c()V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->d()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->h:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "VCardExport"

    const-string v2, "OutOfMemoryError thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->h:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "VCardExport"

    const-string v2, "RuntimeException thrown during export"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method
