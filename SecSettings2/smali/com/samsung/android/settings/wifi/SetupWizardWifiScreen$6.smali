.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$6;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->resetAnimation()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$6;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$6;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get16(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$6;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get0(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$6$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$6$1;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$6;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method
