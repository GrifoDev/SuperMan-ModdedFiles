.class public Lcom/android/settings/datausage/SecDividerPreference;
.super Landroid/support/v7/preference/Preference;
.source "SecDividerPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datausage/SecDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d01fc

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/SecDividerPreference;->setLayoutResource(I)V

    return-void
.end method
