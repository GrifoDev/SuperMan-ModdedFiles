.class public abstract Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;
.super Lcom/android/settings/core/DynamicAvailabilityPreferenceController;
.source "FailedPasswordWipePreferenceControllerBase.java"


# instance fields
.field protected final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    return-void
.end method


# virtual methods
.method protected abstract getMaximumFailedPasswordsBeforeWipe()I
.end method

.method public isAvailable()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;->getMaximumFailedPasswordsBeforeWipe()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;->getMaximumFailedPasswordsBeforeWipe()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100014

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
