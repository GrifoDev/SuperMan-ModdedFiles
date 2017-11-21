.class public Lcom/samsung/android/settings/activekey/ActiveKeySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ActiveKeySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCurrentHeaderView:Landroid/view/View;

.field private mDoublePress:Landroid/preference/PreferenceScreen;

.field private mLongPress:Landroid/preference/PreferenceScreen;

.field private mOnLockScreen:Landroid/preference/SwitchPreference;

.field private mShortPress:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    return-void
.end method

.method private getXCoverKeyDescString()Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "&#8226 "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0348

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0349

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b034a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b034b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<br/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<br/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<br/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private updateDescriptionUI()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->semGetListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    move-result v2

    const-string/jumbo v4, "ActiveKeySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshUI() - isRemoved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f040022

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f110120

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getXCoverKeyDescString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b034d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b034c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->semGetListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0b0338

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0b033d

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePressActionItems()V
    .locals 11

    const v10, 0x7f0b0457

    const v9, 0x7f0b0353

    const v8, 0x7f0b0352

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "short_press_app"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "short_press_app"

    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "short_press_app_battery_conserve"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "short_press_app_battery_conserve"

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v5, "ActiveKeySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shortpress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "ActiveKeySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "longpress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "xcover3ve"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    if-eqz v3, :cond_5

    const-string/jumbo v5, "torch/torch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_1
    if-eqz v1, :cond_2

    const-string/jumbo v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "xcover3ve"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_3
    if-eqz v0, :cond_8

    const-string/jumbo v5, "torch/torch"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_2
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "long_press_app"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "long_press_app"

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "short_press_app"

    const-string/jumbo v7, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "long_press_app"

    const-string/jumbo v7, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updatePressActionItemsGridViewConcept()V
    .locals 12

    const v11, 0x7f0b0840

    const v10, 0x7f0b083f

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-nez v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b19dd

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_0
    invoke-static {v0, v9}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-nez v4, :cond_7

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b19dd

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_1
    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-nez v4, :cond_b

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b19dd

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_2
    return-void

    :cond_3
    const-string/jumbo v4, ""

    iget-object v5, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string/jumbo v4, ""

    iget-object v5, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_5
    iget-boolean v4, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    iget-object v5, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v4, ""

    iget-object v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string/jumbo v4, ""

    iget-object v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_9
    iget-boolean v4, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    iget-object v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v4, ""

    iget-object v5, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_c

    const-string/jumbo v4, ""

    iget-object v5, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_2

    :cond_d
    iget-boolean v4, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_e
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/preference/PreferenceScreen;

    iget-object v5, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v7, "ActiveKeySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "db: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-object v2

    :cond_1
    const/16 v7, 0x2f

    invoke-virtual {p1, v7, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    invoke-virtual {p1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v7, "short_press_app_battery_conserve"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x280

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_1
    return-object v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v7, "ActiveKeySettings"

    const-string/jumbo v8, "cannot find app name !"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKeyGridViewConcept()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    :goto_0
    const-string/jumbo v0, "short_press_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "long_press_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "double_press_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "active_key_on_lockscreen_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "ActiveKeySettings"

    const-string/jumbo v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "active_key_on_lockscreen"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_1
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKeyGridViewConcept()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.activekey.AppList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pressed_type"

    const-string/jumbo v2, "short"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.activekey.AppList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pressed_type"

    const-string/jumbo v2, "long"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.settings.ACTIVE_KEY_CLEAR"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updateDescriptionUI()V

    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKeyGridViewConcept()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updatePressActionItemsGridViewConcept()V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "active_key_on_lockscreen"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v1, "ActiveKeySettings"

    const-string/jumbo v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updatePressActionItems()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    const-string/jumbo v0, "ActiveKeySettings"

    const-string/jumbo v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
