.class public Lcom/android/settings/AppListPreferenceWithSettings;
.super Lcom/android/settings/AppListPreference;
.source "AppListPreferenceWithSettings.java"


# instance fields
.field private mSettingsComponent:Landroid/content/ComponentName;

.field private mSettingsIcon:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/settings/AppListPreferenceWithSettings;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f040214

    invoke-virtual {p0, v0}, Lcom/android/settings/AppListPreferenceWithSettings;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private updateSettingsVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected loggingSettingsIcon()V
    .locals 0

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/AppListPreference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f110583

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    new-instance v2, Lcom/android/settings/AppListPreferenceWithSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/AppListPreferenceWithSettings$1;-><init>(Lcom/android/settings/AppListPreferenceWithSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    invoke-direct {p0}, Lcom/android/settings/AppListPreferenceWithSettings;->updateSettingsVisibility()V

    return-void
.end method

.method protected setSettingsComponent(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsComponent:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/settings/AppListPreferenceWithSettings;->updateSettingsVisibility()V

    return-void
.end method
