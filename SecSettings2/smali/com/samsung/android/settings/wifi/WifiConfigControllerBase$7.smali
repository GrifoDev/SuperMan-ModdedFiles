.class Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$7;
.super Ljava/lang/Object;
.source "WifiConfigControllerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showSoftKeyboardOnResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

.field final synthetic val$focusedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$7;->val$focusedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiConfigController"

    const-string/jumbo v3, "showSoftKeyboardOnResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$7;->val$focusedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$7;->val$focusedView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiConfigController"

    const-string/jumbo v3, "Caught showInputMethod Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
