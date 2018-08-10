.class Lcom/android/settings/datausage/DataUsageSummary$1;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "DataUsageSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPcoSettingObserver onChange(selfChange="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v5, "usage"

    invoke-virtual {v4, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    if-nez v2, :cond_0

    const-string/jumbo v3, "DataUsageSummary"

    const-string/jumbo v4, "\'usage\' preference category not found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    const-string/jumbo v3, "DataUsageSummary"

    const-string/jumbo v4, "Invalid context or content-resolver"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "background_data_by_pco"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_4

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v4, "DataUsageSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPcoSettingObserver restrictBackgroundByPco: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3, v7}, Lcom/android/settings/datausage/DataUsageSummary;->-set0(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)Lcom/android/settings/datausage/DataSaverPreference;

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    :cond_6
    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    :cond_7
    const-string/jumbo v3, "DataUsageSummary"

    const-string/jumbo v4, "Returning due to no mobile data or not admin"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v4}, Lcom/android/settings/datausage/DataUsageSummary;->-get2(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/datausage/DataUsageSummary;->-set0(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)Lcom/android/settings/datausage/DataSaverPreference;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary$1;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummary;->-wrap2(Lcom/android/settings/datausage/DataUsageSummary;)V

    goto :goto_1
.end method
