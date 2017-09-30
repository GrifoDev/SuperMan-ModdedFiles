.class public Lcom/android/contacts/common/vcard/ImportProcessor;
.super Lcom/android/contacts/common/vcard/ProcessorBase;

# interfaces
.implements Lcom/android/c/i;


# instance fields
.field private final a:Lcom/android/contacts/common/vcard/VCardService;

.field private final b:Landroid/content/ContentResolver;

.field private final c:Lcom/android/contacts/common/vcard/ImportRequest;

.field private final d:I

.field private final e:Lcom/android/contacts/common/vcard/VCardImportExportListener;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/android/c/k;

.field private volatile h:Z

.field private volatile i:Z

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardImportExportListener;Lcom/android/contacts/common/vcard/ImportRequest;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ProcessorBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->f:Ljava/util/List;

    iput v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->j:I

    iput v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->k:I

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->b:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->e:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->c:Lcom/android/contacts/common/vcard/ImportRequest;

    iput p4, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->d:I

    return-void
.end method

.method private a(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/c/j;[I)Z
    .locals 8

    const/4 v2, 0x0

    array-length v4, p5

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_7

    aget v5, p5, v3

    if-lez v3, :cond_0

    :try_start_0
    instance-of v1, p4, Lcom/android/c/g;

    if-eqz v1, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/android/c/g;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/c/g;->c()V

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/c/a/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/c/a/f; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/c/a/g; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/c/a/b; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x2

    if-ne v5, v1, :cond_3

    :try_start_1
    new-instance v1, Lcom/android/c/p;

    invoke-direct {v1, p2}, Lcom/android/c/p;-><init>(I)V

    :goto_1
    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->g:Lcom/android/c/k;

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VCardImport"

    const-string v5, "ImportProcessor already recieves cancel request, so send cancel request to vCard parser too."

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->g:Lcom/android/c/k;

    invoke-virtual {v1}, Lcom/android/c/k;->a()V

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->g:Lcom/android/c/k;

    invoke-virtual {v1, p1, p4}, Lcom/android/c/k;->a(Ljava/io/InputStream;Lcom/android/c/j;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/c/a/e; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/c/a/f; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/c/a/g; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/c/a/b; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    :cond_2
    :goto_2
    return v1

    :cond_3
    :try_start_4
    new-instance v1, Lcom/android/c/o;

    invoke-direct {v1, p2}, Lcom/android/c/o;-><init>(I)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/c/a/e; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/c/a/f; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/android/c/a/g; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/android/c/a/b; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v1

    :try_start_6
    const-string v5, "VCardImport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException was emitted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p1, :cond_4

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    :cond_4
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_8
    const-string v1, "VCardImport"

    const-string v5, "Nested Exception is found."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz p1, :cond_4

    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_a
    const-string v5, "VCardImport"

    invoke-virtual {v1}, Lcom/android/c/a/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz p1, :cond_4

    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    add-int/lit8 v1, v4, -0x1

    if-ne v3, v1, :cond_5

    :try_start_c
    const-string v1, "VCardImport"

    const-string v5, "Appropriate version for this vCard is not found."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_5
    if-eqz p1, :cond_4

    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    :try_start_e
    const-string v5, "VCardImport"

    invoke-virtual {v1}, Lcom/android/c/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz p1, :cond_4

    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_6

    :try_start_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    :cond_6
    :goto_4
    throw v1

    :catch_9
    move-exception v2

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v2

    goto :goto_4

    :cond_7
    move v1, v2

    goto/16 :goto_2
.end method

.method private d()V
    .locals 12

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    const-string v0, "VCardImport"

    const-string v1, "vCard import (id: %d) has started."

    new-array v2, v11, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->c:Lcom/android/contacts/common/vcard/ImportRequest;

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VCardImport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canceled before actually handling parameter ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportRequest;->b:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lcom/android/contacts/common/vcard/ImportRequest;->g:I

    if-nez v1, :cond_3

    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    :goto_1
    iget-object v8, v0, Lcom/android/contacts/common/vcard/ImportRequest;->b:Landroid/net/Uri;

    iget-object v1, v0, Lcom/android/contacts/common/vcard/ImportRequest;->a:Landroid/accounts/Account;

    iget v2, v0, Lcom/android/contacts/common/vcard/ImportRequest;->e:I

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ImportRequest;->f:Ljava/lang/String;

    iget v4, v0, Lcom/android/contacts/common/vcard/ImportRequest;->h:I

    iget v9, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->k:I

    add-int/2addr v4, v9

    iput v4, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->k:I

    new-instance v4, Lcom/android/c/g;

    invoke-direct {v4, v2, v1, v3}, Lcom/android/c/g;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    new-instance v9, Lcom/android/c/f;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->b:Landroid/content/ContentResolver;

    invoke-direct {v9, v1}, Lcom/android/c/f;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v4, v9}, Lcom/android/c/g;->a(Lcom/android/c/i;)V

    invoke-virtual {v4, p0}, Lcom/android/c/g;->a(Lcom/android/c/i;)V

    if-eqz v8, :cond_4

    :try_start_0
    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start importing one vCard (Uri: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->b:Landroid/content/ContentResolver;

    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_c

    move-object v0, p0

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/vcard/ImportProcessor;->a(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/c/j;[I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    :goto_3
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->a:Lcom/android/contacts/common/vcard/VCardService;

    iget v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->d:I

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/vcard/VCardService;->a(IZ)V

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vCard import has been canceled (uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    new-array v5, v11, [I

    iget v1, v0, Lcom/android/contacts/common/vcard/ImportRequest;->g:I

    aput v1, v5, v6

    goto/16 :goto_1

    :cond_4
    :try_start_3
    iget-object v1, v0, Lcom/android/contacts/common/vcard/ImportRequest;->c:[B

    if-eqz v1, :cond_d

    const-string v1, "VCardImport"

    const-string v10, "start importing one vCard (byte[])"

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportRequest;->c:[B

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_5
    if-eqz v1, :cond_b

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v6

    goto :goto_4

    :catch_1
    move-exception v0

    move v0, v6

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v7, :cond_5

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_7
    throw v0

    :cond_6
    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully finished importing one vCard file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/android/c/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->e:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v11, :cond_7

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->e:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->c:Lcom/android/contacts/common/vcard/ImportRequest;

    iget v3, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->d:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->a(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const-string v0, "VCardImport"

    const-string v1, "Created Uris is null or 0 length though the creation itself is successful."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->e:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->c:Lcom/android/contacts/common/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->d:I

    invoke-interface {v0, v1, v2, v7}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->a(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read one vCard file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->f:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_4

    :catch_3
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_6

    :catch_4
    move-exception v0

    goto/16 :goto_5

    :cond_b
    move v0, v6

    goto/16 :goto_4

    :cond_c
    move v0, v6

    goto/16 :goto_3

    :cond_d
    move-object v1, v7

    goto/16 :goto_2

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/android/c/e;)V
    .locals 6

    iget v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->j:I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->e:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->e:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->c:Lcom/android/contacts/common/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->d:I

    iget v4, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->j:I

    iget v5, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->k:I

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->a(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/android/c/e;II)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->i:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->h:Z

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->g:Lcom/android/c/k;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->g:Lcom/android/c/k;

    invoke-virtual {v1}, Lcom/android/c/k;->a()V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->h:Z
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
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->i:Z
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
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->d()V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->e:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->e:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->c:Lcom/android/contacts/common/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->d:I

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->a(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->i:Z

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
    const-string v1, "VCardImport"

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
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->i:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "VCardImport"

    const-string v2, "RuntimeException thrown during import"

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
