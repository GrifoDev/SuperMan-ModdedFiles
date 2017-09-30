.class public Lcom/android/contacts/common/vcard/NfcImportVCardActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/contacts/common/vcard/VCardImportExportListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;
    }
.end annotation


# instance fields
.field private a:Landroid/nfc/NdefRecord;

.field private b:Lcom/android/contacts/common/model/account/AccountWithDataSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method a()Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 10

    const/4 v3, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->a:Landroid/nfc/NdefRecord;

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    new-instance v4, Lcom/android/c/o;

    invoke-direct {v4}, Lcom/android/c/o;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/c/a/e; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/c/a/b; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    new-instance v2, Lcom/android/c/h;

    invoke-direct {v2}, Lcom/android/c/h;-><init>()V
    :try_end_1
    .catch Lcom/android/c/a/g; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Lcom/android/c/t;

    invoke-direct {v1}, Lcom/android/c/t;-><init>()V
    :try_end_2
    .catch Lcom/android/c/a/g; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v4, v2}, Lcom/android/c/k;->a(Lcom/android/c/j;)V

    invoke-virtual {v4, v1}, Lcom/android/c/k;->a(Lcom/android/c/j;)V

    invoke-virtual {v4, v5}, Lcom/android/c/k;->a(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/c/a/g; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/android/c/a/e; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/android/c/a/b; {:try_start_4 .. :try_end_4} :catch_6

    :cond_0
    :goto_0
    move v7, v0

    move-object v6, v1

    move-object v8, v2

    :goto_1
    new-instance v0, Lcom/android/contacts/common/vcard/ImportRequest;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->b:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->a:Landroid/nfc/NdefRecord;

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    const v4, 0x7f0905f8

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/android/c/t;->c()I

    move-result v5

    invoke-virtual {v6}, Lcom/android/c/t;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/c/h;->c()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/contacts/common/vcard/ImportRequest;-><init>(Lcom/android/contacts/common/model/account/AccountWithDataSet;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    move-object v3, v0

    :cond_1
    :goto_2
    return-object v3

    :catch_0
    move-exception v1

    move-object v4, v3

    move-object v1, v3

    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v0, 0x2

    new-instance v6, Lcom/android/c/p;

    invoke-direct {v6}, Lcom/android/c/p;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-instance v2, Lcom/android/c/h;

    invoke-direct {v2}, Lcom/android/c/h;-><init>()V
    :try_end_6
    .catch Lcom/android/c/a/g; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    new-instance v1, Lcom/android/c/t;

    invoke-direct {v1}, Lcom/android/c/t;-><init>()V
    :try_end_7
    .catch Lcom/android/c/a/g; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v6, v2}, Lcom/android/c/k;->a(Lcom/android/c/j;)V

    invoke-virtual {v6, v1}, Lcom/android/c/k;->a(Lcom/android/c/j;)V

    invoke-virtual {v6, v5}, Lcom/android/c/k;->a(Ljava/io/InputStream;)V
    :try_end_8
    .catch Lcom/android/c/a/g; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v5, :cond_0

    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/android/c/a/e; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lcom/android/c/a/b; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v2, v1

    :goto_4
    if-eqz v5, :cond_1

    :try_start_a
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/android/c/a/e; {:try_start_a .. :try_end_a} :catch_a
    .catch Lcom/android/c/a/b; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v4, v3

    move-object v2, v3

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    :goto_5
    if-eqz v5, :cond_2

    :try_start_b
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lcom/android/c/a/e; {:try_start_b .. :try_end_b} :catch_b
    .catch Lcom/android/c/a/b; {:try_start_b .. :try_end_b} :catch_6

    :cond_2
    :goto_6
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/android/c/a/e; {:try_start_c .. :try_end_c} :catch_b
    .catch Lcom/android/c/a/b; {:try_start_c .. :try_end_c} :catch_6

    :catch_4
    move-exception v0

    const-string v1, "NfcImportVCardActivity"

    const-string v2, "Failed reading vcard data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_5
    move-exception v1

    move v7, v0

    move-object v1, v3

    move-object v2, v3

    :goto_7
    const-string v0, "NfcImportVCardActivity"

    const-string v4, "Nested Exception is found (it may be false-positive)."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v1

    move-object v8, v2

    goto :goto_1

    :catch_6
    move-exception v0

    const-string v1, "NfcImportVCardActivity"

    const-string v2, "Error parsing vcard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_7
    move-exception v4

    goto/16 :goto_0

    :catch_8
    move-exception v5

    goto :goto_6

    :catch_9
    move-exception v4

    move v7, v0

    goto :goto_7

    :catch_a
    move-exception v1

    move v7, v0

    move-object v1, v4

    goto :goto_7

    :catch_b
    move-exception v0

    move v7, v1

    move-object v1, v4

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v4, v3

    move v9, v0

    move-object v0, v1

    move v1, v9

    goto :goto_5

    :catchall_2
    move-exception v4

    move-object v9, v4

    move-object v4, v1

    move v1, v0

    move-object v0, v9

    goto :goto_5

    :catchall_3
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v9

    goto :goto_5

    :catchall_4
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_5

    :catchall_5
    move-exception v4

    move-object v9, v4

    move-object v4, v1

    move v1, v0

    move-object v0, v9

    goto :goto_5

    :catch_c
    move-exception v1

    goto :goto_4

    :catch_d
    move-exception v4

    move-object v4, v1

    goto :goto_4

    :catch_e
    move-exception v1

    move-object v4, v3

    move-object v1, v2

    goto/16 :goto_3

    :catch_f
    move-exception v4

    move-object v4, v1

    move-object v1, v2

    goto/16 :goto_3
.end method

.method public a(Lcom/android/contacts/common/vcard/CancelRequest;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/contacts/common/vcard/ExportRequest;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/contacts/common/vcard/ImportRequest;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NfcImportVCardActivity"

    const-string v1, "Late import failure -- ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public a(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/contacts/common/vcard/ImportRequest;II)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NfcImportVCardActivity"

    const-string v1, "Late import -- ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v1}, Lcom/android/contacts/common/util/ImplicitIntentsUtil;->a(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method public a(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/android/c/e;II)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string v1, "account_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->b:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NfcImportVCardActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknowon intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "text/x-vcard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "text/vcard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v0, "NfcImportVCardActivity"

    const-string v1, "Not a vcard"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0

    :cond_3
    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->a:Landroid/nfc/NdefRecord;

    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->a(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->b:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->b()V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->b:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->a()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;-><init>(Lcom/android/contacts/common/vcard/NfcImportVCardActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/contacts/common/vcard/VCardService;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
