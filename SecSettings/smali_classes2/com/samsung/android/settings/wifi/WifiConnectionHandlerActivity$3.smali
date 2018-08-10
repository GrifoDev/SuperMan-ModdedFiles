.class Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$3;
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$3;->val$mcheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v2, "WifiConnectionHandlerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Selected button is Connect , Do not Show again : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$3;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$3;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->-get2(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "connhan_do_not_show"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->-get0(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "WifiConnectionHandlerActivity"

    const-string/jumbo v3, "donotshow checked. connhan_value : BUTTON_CONNECT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "connhan_value"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->OnOffData(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->finish()V

    return-void
.end method
