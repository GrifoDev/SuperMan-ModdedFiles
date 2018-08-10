.class public Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;
.super Landroid/preference/PreferenceFragment;
.source "KnoxFingerprintPlusActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxFingerprintPlusFragment"
.end annotation


# static fields
.field private static mPreferenceScreen:Landroid/preference/PreferenceScreen;


# instance fields
.field private final PREF_DIVIDER:Ljava/lang/String;

.field private final PREF_KNOX_FINGERPRINT_PLUS:Ljava/lang/String;

.field private final SWITCH_PREF_ENABLE_FINGERPRINT_PLUS:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private fingerPrintName:Ljava/lang/String;

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mKnoxEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-string/jumbo v0, "KnoxFingerprintPlusFragment"

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "pref_enable_fingerprint_plus"

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->SWITCH_PREF_ENABLE_FINGERPRINT_PLUS:Ljava/lang/String;

    const-string/jumbo v0, "prefc_biometrics_divider"

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->PREF_DIVIDER:Ljava/lang/String;

    const-string/jumbo v0, "pref_knox_fingerprint_plus"

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->PREF_KNOX_FINGERPRINT_PLUS:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->activity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->fingerPrintName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->view:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    return-void
.end method

.method private getFingerprintPlusForKey(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget v2, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v1, p1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setFingerprintPlusForKey(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private showFingerprintPlusIndexMenu()V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v7, "KnoxFingerprintPlusFragment"

    const-string/jumbo v8, "showFingerprintPlusIndexMenu"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    const-string/jumbo v1, ""

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->-get0()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->-get0()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    new-instance v6, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/settings/fingerprint/MultiLinePreference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/settings/fingerprint/MultiLinePreference;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v7, "FINGERPRINT_PLUS_STATE"

    invoke-direct {p0, v7}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    const-string/jumbo v7, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v7}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-eqz v6, :cond_1

    const-string/jumbo v7, "key_fingerprint_plus_toggle"

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/preference/SwitchPreference;->setOrder(I)V

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget-object v7, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    if-ne v0, v11, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120850

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120bd9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/settings/fingerprint/MultiLinePreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/settings/fingerprint/MultiLinePreference;->setOrder(I)V

    sget-object v7, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    if-eqz v4, :cond_5

    const-string/jumbo v7, "pref_knox_fingerprint_plus"

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120786

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v7, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v7

    if-ne v0, v7, :cond_3

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-ne v0, v11, :cond_7

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->fingerPrintName:Ljava/lang/String;

    sget-object v7, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f12091f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v0, "KnoxFingerprintPlusFragment"

    const-string/jumbo v1, "KnoxFingerprintPlusFragment onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const-string/jumbo v6, "KnoxFingerprintPlusFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", resultCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x2711

    if-ne p1, v6, :cond_5

    const/16 v6, 0x271a

    if-ne p2, v6, :cond_3

    invoke-static {}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->-get0()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->-get0()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    if-le v2, v5, :cond_0

    move v5, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "FINGERPRINT_PLUS_STATE"

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    const-string/jumbo v6, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v6, v5}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->showFingerprintPlusIndexMenu()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v6, 0x271b

    if-ne p2, v6, :cond_4

    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mIsFromRegisterFingerPrintPlus:Z

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->-set0(Z)Z

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v6, "preftype"

    const-string/jumbo v7, "normaltype"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x271c

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    const-string/jumbo v6, "KnoxFingerprintPlusFragment"

    const-string/jumbo v7, "onActivityResult: RESULT_CODE not recognized"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/16 v6, 0x271c

    if-ne p1, v6, :cond_8

    const/16 v6, -0x63

    if-ne p2, v6, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    :cond_6
    if-nez p2, :cond_7

    sget-boolean v6, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mIsFromRegisterFingerPrintPlus:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->-set0(Z)Z

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v6, 0x2711

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f010030

    const v8, 0x7f010031

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_2
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mIsFromRegisterFingerPrintPlus:Z

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->showFingerprintPlusIndexMenu()V

    goto :goto_2

    :cond_8
    const-string/jumbo v6, "KnoxFingerprintPlusFragment"

    const-string/jumbo v7, "onActivityResult: REQUEST_CODE not recognized"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f150082

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    sput-object v1, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    sget v1, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    :cond_0
    const-string/jumbo v1, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->showFingerprintPlusIndexMenu()V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->-set0(Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    const-string/jumbo v0, "KnoxFingerprintPlusFragment"

    const-string/jumbo v1, "KnoxFingerprintPlusFragment onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "key_fingerprint_plus_toggle"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "key_fingerprint_plus_toggle"

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    const-string/jumbo v8, "pref_knox_fingerprint_plus"

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v2, :cond_3

    const-string/jumbo v8, "FINGERPRINT_PLUS_STATE"

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    if-eqz v7, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120850

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v6, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v8, ""

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    sget v8, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0b0451

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0b0453

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    if-eqz v2, :cond_7

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10, v11, v8}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    sget v10, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v8, v9, v10}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v8, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_2
    const/4 v8, 0x0

    return v8

    :cond_3
    const-string/jumbo v1, ""

    const-string/jumbo v8, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v8}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->-get0()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->-get0()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    iget-object v8, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    if-eqz v8, :cond_1

    const-string/jumbo v8, "FINGERPRINT_PLUS_STATE"

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v8

    if-ne v0, v8, :cond_4

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v7, :cond_6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f12091f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v6, :cond_1

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v8, "KnoxFingerprintPlusFragment"

    const-string/jumbo v9, "onPreferenceChange: key not recognized."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_knox_fingerprint_plus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0451

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0452

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(II)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    sget v4, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-static {v6}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->-set0(Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "preftype"

    const-string/jumbo v3, "switchtype"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x271c

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return v6
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const-string/jumbo v0, "KnoxFingerprintPlusFragment"

    const-string/jumbo v1, "KnoxFingerprintPlusFragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0451

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/Utils$KnoxLogging;->addScreen(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
