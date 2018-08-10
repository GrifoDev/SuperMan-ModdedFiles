.class Lcom/samsung/android/settings/wifi/WifiWarning$2;
.super Ljava/lang/Object;
.source "WifiWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get6(Lcom/samsung/android/settings/wifi/WifiWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get6(Lcom/samsung/android/settings/wifi/WifiWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-set2(Lcom/samsung/android/settings/wifi/WifiWarning;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get9(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get8(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->saveIsShowPassword()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get6(Lcom/samsung/android/settings/wifi/WifiWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const-string/jumbo v2, "WifiWarning"

    const-string/jumbo v3, "mDialogConfigure.dismiss()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get6(Lcom/samsung/android/settings/wifi/WifiWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, -0x2

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get6(Lcom/samsung/android/settings/wifi/WifiWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WifiWarning"

    const-string/jumbo v3, "mDialogConfigure.dismiss()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get6(Lcom/samsung/android/settings/wifi/WifiWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-wrap2(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    goto :goto_0
.end method
