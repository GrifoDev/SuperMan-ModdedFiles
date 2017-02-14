.class Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$3;
.super Ljava/lang/Object;
.source "DeviceNameSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->showInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DeviceNameSettings"

    const-string/jumbo v3, "Caught showInputMethod Exception"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
