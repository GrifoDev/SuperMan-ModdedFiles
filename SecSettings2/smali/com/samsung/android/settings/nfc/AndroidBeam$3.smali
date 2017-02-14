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
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$3;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get2(Lcom/samsung/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    return-void
.end method
