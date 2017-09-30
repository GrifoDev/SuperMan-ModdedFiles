.class Lcom/android/contacts/common/vcard/ImportVCardActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;->a([Landroid/net/Uri;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/net/Uri;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;[Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->c:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->a:[Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->c:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->c:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->c:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->a:[Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->b:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;[Landroid/net/Uri;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->c:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/common/vcard/NotificationImportExportListener;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->c:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {v1, v2}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;->c:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showDialog(I)V

    :cond_0
    return-void
.end method
