.class Lcom/android/settings/DreamSettings$DreamInfoPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoPreference"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/DreamSettings$DreamInfoPreference;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v3, 0x1020019

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v3, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v3, Lcom/android/settings/DreamSettings$DreamInfoPreference$1;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/DreamSettings$DreamInfoPreference$1;-><init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v5, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;

    invoke-direct {v5, p0, p1}, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;-><init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v3, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    const v3, 0x102001a

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v3, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v3, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v3, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVerticalScrollBarEnabled(Z)V

    new-instance v3, Lcom/android/settings/DreamSettings$DreamInfoPreference$3;

    invoke-direct {v3, p0}, Lcom/android/settings/DreamSettings$DreamInfoPreference$3;-><init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    const v3, 0x3ecccccd    # 0.4f

    goto :goto_2
.end method

.method public performClick()V
    .locals 5

    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v3, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v3}, Lcom/android/settings/DreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v3}, Lcom/android/settings/DreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/android/settings/DreamSettings$DreamInfoPreference;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/android/settings/DreamSettings$DreamInfoPreference;

    iget-object v3, v0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->notifyChanged()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    iget-object v3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-static {v3}, Lcom/android/settings/DreamSettings;->-get4(Lcom/android/settings/DreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v4, v4, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->notifyChanged()V

    return-void
.end method
