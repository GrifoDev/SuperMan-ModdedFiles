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

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V

    iget v3, p0, Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v3, :cond_1

    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    :cond_1
    return-void
.end method
