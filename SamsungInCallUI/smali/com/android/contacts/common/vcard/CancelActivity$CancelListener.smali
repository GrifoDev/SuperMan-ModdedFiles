.class Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/CancelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/vcard/CancelActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/CancelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;->a:Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/CancelActivity;Lcom/android/contacts/common/vcard/CancelActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/CancelActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;->a:Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/CancelActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;->a:Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/CancelActivity;->finish()V

    return-void
.end method
