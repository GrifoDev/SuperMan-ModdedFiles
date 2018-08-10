.class public Lcom/android/settings/notification/ChannelImportanceSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "ChannelImportanceSettings.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ChannelImportanceSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field mImportances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/widget/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/ChannelImportanceSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ChannelImportanceSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ChannelImportanceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mImportances:Ljava/util/List;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelImportanceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v4, 0x7f1500a7

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ChannelImportanceSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelImportanceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    instance-of v4, v1, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v4, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/widget/RadioButtonPreference;

    const v4, 0x7f0d020c

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/RadioButtonPreference;->setLayoutResource(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/RadioButtonPreference;->setIconVisibility(Z)V

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mImportances:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    return-object v3

    :pswitch_0
    const-string/jumbo v4, "importance_min"

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ChannelImportanceSettings;->updateRadioButtons(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v4, "importance_low"

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ChannelImportanceSettings;->updateRadioButtons(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string/jumbo v4, "importance_default"

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ChannelImportanceSettings;->updateRadioButtons(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string/jumbo v4, "importance_high"

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ChannelImportanceSettings;->updateRadioButtons(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateRadioButtons(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mImportances:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3ad

    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onPause()V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 4

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "importance_high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ChannelImportanceSettings;->updateRadioButtons(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v3, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return-void

    :cond_1
    const-string/jumbo v1, "importance_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "importance_low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "importance_min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    iget v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mUid:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "NotiImportance"

    const-string/jumbo v1, "Missing package or uid or packageinfo or channel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelImportanceSettings;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/ChannelImportanceSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method setupBadge()V
    .locals 0

    return-void
.end method

.method updateDependents(Z)V
    .locals 0

    return-void
.end method
