.class Lcom/android/contacts/common/vcard/ExportProcessor$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ExportProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/vcard/ExportProcessor;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/ExportProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportProcessor$1;->a:Lcom/android/contacts/common/vcard/ExportProcessor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor$1;->a:Lcom/android/contacts/common/vcard/ExportProcessor;

    invoke-static {v0}, Lcom/android/contacts/common/vcard/ExportProcessor;->a(Lcom/android/contacts/common/vcard/ExportProcessor;)Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    const v1, 0x7f09058d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
