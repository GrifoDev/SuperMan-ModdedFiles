.class Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/NfcImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/contacts/common/vcard/VCardService;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/common/vcard/ImportRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/vcard/NfcImportVCardActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/NfcImportVCardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->a:Lcom/android/contacts/common/vcard/NfcImportVCardActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/android/contacts/common/vcard/VCardService;)Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->a:Lcom/android/contacts/common/vcard/NfcImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->a()Lcom/android/contacts/common/vcard/ImportRequest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->a:Lcom/android/contacts/common/vcard/NfcImportVCardActivity;

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/common/vcard/VCardService;->a(Ljava/util/List;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V

    goto :goto_0
.end method

.method public a(Lcom/android/contacts/common/vcard/ImportRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->a:Lcom/android/contacts/common/vcard/NfcImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->a:Lcom/android/contacts/common/vcard/NfcImportVCardActivity;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->a([Lcom/android/contacts/common/vcard/VCardService;)Lcom/android/contacts/common/vcard/ImportRequest;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->a:Lcom/android/contacts/common/vcard/NfcImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->a:Lcom/android/contacts/common/vcard/NfcImportVCardActivity;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/contacts/common/vcard/ImportRequest;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->a(Lcom/android/contacts/common/vcard/ImportRequest;)V

    return-void
.end method
