.class Lcom/android/settings/wfd/Wfd_Certification$4;
.super Landroid/preference/ListPreference;
.source "Wfd_Certification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/Wfd_Certification;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/Wfd_Certification;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/Wfd_Certification;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/Wfd_Certification$4;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-direct {p0, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$4;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-virtual {p0}, Lcom/android/settings/wfd/Wfd_Certification$4;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wfd/Wfd_Certification;->-set4(Lcom/android/settings/wfd/Wfd_Certification;I)I

    const-string/jumbo v0, "%1$s"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/Wfd_Certification$4;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$4;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->-get6(Lcom/android/settings/wfd/Wfd_Certification;)Lcom/android/settings/wfd/WifiDisplaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->invalidate()V

    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$4;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->-get1(Lcom/android/settings/wfd/Wfd_Certification;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_wps_config"

    iget-object v2, p0, Lcom/android/settings/wfd/Wfd_Certification$4;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-static {v2}, Lcom/android/settings/wfd/Wfd_Certification;->-get7(Lcom/android/settings/wfd/Wfd_Certification;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
