.class Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;
.super Ljava/lang/Object;
.source "WifiConnectionHandlerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->showdataConnectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

.field final synthetic val$mcheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->val$mcheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "WifiConnectionHandlerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Selected button is Disconnect , Do not Show again : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->-get2(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "connhan_do_not_show"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->-get0(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "WifiConnectionHandlerActivity"

    const-string/jumbo v5, "donotshow checked. connhan_value : BUTTON_DISCONNECT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "connhan_value"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->OnOffData(Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0xf1

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "parameters"

    const-string/jumbo v5, "EVENT_WATCHDOG_SETTINGS_CHANGE"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->-get5(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->-get5(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_1
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->finish()V

    return-void
.end method
