.class Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogDisplayer"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f10000b

    iput v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;->b:I

    invoke-static {p1, p2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->a(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;->a:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;->b:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showDialog(I)V

    :cond_0
    return-void
.end method
