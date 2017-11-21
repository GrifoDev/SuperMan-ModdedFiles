.class Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;
.super Landroid/preference/Preference;
.source "ToggleAccessControlPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f11010c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const v2, 0x7f0202b4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v2, 0x7f0202b8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
