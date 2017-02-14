.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->initializeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v1, " Add Network "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get14(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get15(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_0
    return-void
.end method
