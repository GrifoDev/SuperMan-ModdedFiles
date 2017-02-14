.class Lcom/samsung/android/settings/nfc/AndroidBeam$5;
.super Ljava/lang/Object;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$5;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$5;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-get3(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method
