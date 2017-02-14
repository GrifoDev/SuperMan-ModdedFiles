.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;
.super Ljava/lang/Object;
.source "WifiApWhitelistDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnFocusChangeListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
