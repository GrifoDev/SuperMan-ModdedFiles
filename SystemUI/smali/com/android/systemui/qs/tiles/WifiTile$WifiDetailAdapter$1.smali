.class Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9

    const v7, 0x7f120884

    const/4 v8, 0x0

    if-eqz p2, :cond_4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->-get5(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->-get5(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_eula_agreement"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10800000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.samsung.android.app.sprotect"

    const-string/jumbo v7, "com.samsung.android.app.sprotect.securewifi.EulaActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->-get4(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v5

    invoke-interface {v5, v2, v8}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->getSecureWifiState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->-get5(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v6, v6, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/WifiTile;->-get5(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->-get9(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/widget/Switch;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_2
    if-nez v3, :cond_0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.samsung.android.app.sprotect.ENABLE_SECURE_WIFI"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->-get5(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->-get5(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v6, v6, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/WifiTile;->-get5(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->-get9(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/widget/Switch;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/systemui/util/SettingsHelper;->setSecureWifi(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->-get9(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/widget/Switch;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->-get5(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v6, v6, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/WifiTile;->-get5(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120886

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->getSecureWifiState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.samsung.android.app.sprotect.DISABLE_SECURE_WIFI"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-object v5, v5, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->-get5(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
