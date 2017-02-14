.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$17;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$17;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$17;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$17;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->finish()V

    return-void
.end method
