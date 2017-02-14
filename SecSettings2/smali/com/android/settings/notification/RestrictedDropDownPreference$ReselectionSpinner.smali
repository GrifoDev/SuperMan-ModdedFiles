.class public Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;
.super Landroid/widget/Spinner;
.source "RestrictedDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RestrictedDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReselectionSpinner"
.end annotation


# instance fields
.field private pref:Lcom/android/settings/notification/RestrictedDropDownPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setPreference(Lcom/android/settings/notification/RestrictedDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;->pref:Lcom/android/settings/notification/RestrictedDropDownPreference;

    return-void
.end method

.method public setSelection(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;->pref:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;->getSelectedItemPosition()I

    move-result v1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    if-ne p1, v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;->pref:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-static {v2}, Lcom/android/settings/notification/RestrictedDropDownPreference;->-wrap2(Lcom/android/settings/notification/RestrictedDropDownPreference;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;->pref:Lcom/android/settings/notification/RestrictedDropDownPreference;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/notification/RestrictedDropDownPreference;->-wrap5(Lcom/android/settings/notification/RestrictedDropDownPreference;Z)V

    iget-object v2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;->pref:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-static {v2, p1}, Lcom/android/settings/notification/RestrictedDropDownPreference;->-wrap4(Lcom/android/settings/notification/RestrictedDropDownPreference;I)Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/RestrictedDropDownPreference$ReselectionSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_1
    return-void
.end method
