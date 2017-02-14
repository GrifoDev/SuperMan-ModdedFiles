.class Lcom/android/settings/wifi/AdvancedWifiSettings$6;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;->showPasspointWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set0(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap2(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get1(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const-string/jumbo v1, "USER_ON"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
