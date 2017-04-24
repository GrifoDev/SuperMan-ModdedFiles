.class final Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SPenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/spen/SPenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "com.sec.android.app.SPenKeeper"

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "loss_prevention_alert"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v4, "action_memo_on_off_screen"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_0
    const-string/jumbo v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "key_spen_screen_on"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "spen_contact_us"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v4, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v4, v0, 0xa

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    const-string/jumbo v4, "pen_detachment_category"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "pen_detachment_option_list"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "loss_prevention_alert"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "battery_saving"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "key_additional_feedback_pen_haptic"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v3

    :cond_3
    const-string/jumbo v4, "key_additional_feedback_pen_haptic"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "key_writing_buddy"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "key_spen_pointer_switch"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "key_additional_feedback_pen_sound"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "battery_saving"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "screen_off_note"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const v5, 0x7f0b0bd3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "screen_off_note"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v4, 0x7f0b0bd8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0b0bda

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "loss_prevention_alert"

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v4, 0x7f0b0bff

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0b0bfe

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3

    :cond_0
    const v4, 0x7f0b0bd9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const v4, 0x7f0b0bfd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v2, 0x7f0800b6

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
