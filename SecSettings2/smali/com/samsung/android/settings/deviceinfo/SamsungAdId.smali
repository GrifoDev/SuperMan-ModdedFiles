.class public Lcom/samsung/android/settings/deviceinfo/SamsungAdId;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SamsungAdId.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;
    }
.end annotation


# instance fields
.field private mAdId:Landroid/preference/Preference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mResetAdId:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->resetSamsungAdId()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$1;-><init>(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method public static checkSamsungAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "samsung_adid"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->generateAndUpdateSamsungAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static generateAndUpdateSamsungAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "samsung_adid"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "SamsungAdId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "samsung ad id generateAndUpdated as : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v2, "SamsungAdId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "samsung ad id update fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetSamsungAdId()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mAdId:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->generateAndUpdateSamsungAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "ad_id"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mAdId:Landroid/preference/Preference;

    const-string/jumbo v0, "reset_ad_id"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mResetAdId:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mAdId:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->checkSamsungAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mResetAdId:Landroid/preference/Preference;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$2;-><init>(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SamsungAdId"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SamsungAdId"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
