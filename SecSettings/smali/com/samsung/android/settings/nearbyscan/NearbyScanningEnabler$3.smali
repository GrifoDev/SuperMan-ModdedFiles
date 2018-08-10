.class Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v5}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v5, "OnPreferenceChangeListener, context is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const/4 v1, 0x0

    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "on"

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    const-string/jumbo v6, "BLEM_100"

    const-string/jumbo v7, "BLEM_0101"

    invoke-static {v5, v6, v7, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-wrap0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v5}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v5}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/nearbyscan/Util;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v5}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "Not Installed BeaconManager"

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v5}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v5

    if-eqz v1, :cond_6

    :goto_1
    invoke-static {v5, v3}, Lcom/samsung/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/Util;->settingslogging(Landroid/content/Context;)Z

    :cond_3
    return v4

    :cond_4
    const-string/jumbo v0, "off"

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v5, "OnPreferenceChangeListener, instance not Boolean"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    move v3, v4

    goto :goto_1
.end method
