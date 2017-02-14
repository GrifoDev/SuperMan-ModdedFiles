.class Lcom/samsung/android/settings/wifi/WifiApDialogSec$7;
.super Ljava/lang/Object;
.source "WifiApDialogSec.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showHideSsidWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$7;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$7;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get6(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
