.class Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "AdvancedAppSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AdvancedAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultBrowserPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

.field private final mDefaultPhonePreferenceController:Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

.field private final mDefaultSmsPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mDefaultSmsPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mDefaultBrowserPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mDefaultPhonePreferenceController:Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    return-void
.end method

.method private concatSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const v2, 0x7f120e6c

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setListening(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mDefaultSmsPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mDefaultBrowserPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->concatSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mDefaultPhonePreferenceController:Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->concatSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
