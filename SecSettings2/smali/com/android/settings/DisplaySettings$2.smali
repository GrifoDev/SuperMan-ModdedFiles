.class final Lcom/android/settings/DisplaySettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
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
    .locals 3
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "screensaver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-wrap0(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "auto_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->-wrap4(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "lift_to_wake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->-wrap3(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "doze"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "auto_rotate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-wrap5(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "tap_to_wake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-wrap2(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "camera_gesture"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-wrap1(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "camera_double_tap_power_gesture"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->-wrap6(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "vr_display_pref"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
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

    const v2, 0x7f080065

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
