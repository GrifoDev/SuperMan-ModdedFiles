.class Lcom/samsung/android/settings/nfc/AndroidBeam$3;
.super Ljava/lang/Object;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/AndroidBeam;->makeAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$3;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$3;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get3(Lcom/samsung/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$3;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-set0(I)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$3;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get0()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void
.end method
