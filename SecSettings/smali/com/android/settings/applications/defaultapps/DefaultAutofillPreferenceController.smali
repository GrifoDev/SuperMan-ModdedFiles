.class public Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultAutofillPreferenceController.java"


# instance fields
.field private mAutofillManager:Lcom/android/settings/applications/AutofillManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/applications/AutofillManagerWrapperImpl;

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/AutofillManagerWrapperImpl;-><init>(Landroid/view/autofill/AutofillManager;)V

    iput-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mAutofillManager:Lcom/android/settings/applications/AutofillManagerWrapper;

    return-void
.end method


# virtual methods
.method protected getDefaultAppInfo()Lcom/android/settings/applications/defaultapps/DefaultAppInfo;
    .locals 5

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "autofill_service"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    iget v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mUserId:I

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "default_autofill"

    return-object v0
.end method

.method protected getSettingIntent(Lcom/android/settings/applications/defaultapps/DefaultAppInfo;)Landroid/content/Intent;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v1}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;->getIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mAutofillManager:Lcom/android/settings/applications/AutofillManagerWrapper;

    invoke-interface {v0}, Lcom/android/settings/applications/AutofillManagerWrapper;->hasAutofillFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->mAutofillManager:Lcom/android/settings/applications/AutofillManagerWrapper;

    invoke-interface {v0}, Lcom/android/settings/applications/AutofillManagerWrapper;->isAutofillSupported()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
