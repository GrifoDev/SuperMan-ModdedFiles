.class public Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;
.super Landroid/support/v7/preference/PreferenceGroupAdapter;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighlightablePreferenceGroupAdapter"
.end annotation


# instance fields
.field private mHighlightPosition:I


# direct methods
.method public constructor <init>(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    return-void
.end method


# virtual methods
.method public highlight(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method synthetic lambda$-com_android_settings_SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter_40065(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V

    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v1, :cond_0

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/-$Lambda$o3RZjEzUBY-oqvyDKSMZZcNpk60;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/-$Lambda$o3RZjEzUBY-oqvyDKSMZZcNpk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
