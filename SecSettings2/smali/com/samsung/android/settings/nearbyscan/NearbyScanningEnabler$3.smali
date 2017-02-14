.class Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v4, "OnPreferenceChangeListener, context is null"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v0, 0x0

    instance-of v4, p2, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/nearbyscan/Util;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "Not Installed BeaconManager"

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v4

    if-eqz v0, :cond_5

    :goto_0
    invoke-static {v4, v2}, Lcom/samsung/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/nearbyscan/Util;->settingslogging(Landroid/content/Context;)Z

    :cond_3
    return v3

    :cond_4
    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v4, "OnPreferenceChangeListener, instance not Boolean"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    move v2, v3

    goto :goto_0
.end method
