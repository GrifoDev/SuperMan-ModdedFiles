.class Lcom/samsung/android/settings/nfc/PaymentBackend$1;
.super Ljava/lang/Object;
.source "PaymentBackend.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentBackend;->showErrorDialog(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentBackend;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->-get0(Lcom/samsung/android/settings/nfc/PaymentBackend;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->-get0(Lcom/samsung/android/settings/nfc/PaymentBackend;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
