.class public Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;
.super Landroid/widget/Spinner;
.source "LockNotiRestrictedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReselectionSpinner"
.end annotation


# instance fields
.field private pref:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setPreference(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->pref:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    return-void
.end method

.method public setSelection(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->getSelectedItemPosition()I

    move-result v1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->pref:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->-wrap2(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->pref:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->-wrap5(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->pref:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-static {v2, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->-wrap4(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;I)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method
