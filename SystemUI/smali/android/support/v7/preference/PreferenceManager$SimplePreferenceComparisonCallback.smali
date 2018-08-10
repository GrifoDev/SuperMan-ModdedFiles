.class public Landroid/support/v7/preference/PreferenceManager$SimplePreferenceComparisonCallback;
.super Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePreferenceComparisonCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public arePreferenceContentsTheSame(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    return v4

    :cond_0
    if-ne p1, p2, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->wasDetached()Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return v4

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    return v4

    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    :cond_4
    return v4

    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_6

    return v4

    :cond_6
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isSelectable()Z

    move-result v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->isSelectable()Z

    move-result v3

    if-eq v2, v3, :cond_7

    return v4

    :cond_7
    instance-of v2, p1, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v2, :cond_8

    move-object v2, p1

    check-cast v2, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    move-object v2, p2

    check-cast v2, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eq v3, v2, :cond_8

    return v4

    :cond_8
    instance-of v2, p1, Landroid/support/v7/preference/DropDownPreference;

    if-eqz v2, :cond_9

    if-eq p1, p2, :cond_9

    return v4

    :cond_9
    const/4 v2, 0x1

    return v2
.end method

.method public arePreferenceItemsTheSame(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
