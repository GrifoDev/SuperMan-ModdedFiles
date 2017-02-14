.class public Lcom/android/settings/RestrictedRadioButton;
.super Landroid/widget/RadioButton;
.source "RestrictedRadioButton.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/RestrictedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/RestrictedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/RestrictedRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    return v0
.end method

.method public performClick()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/RestrictedRadioButton;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/RadioButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/RestrictedRadioButton;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-boolean v1, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    iget-object v1, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    invoke-static {v1, p0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->setTextViewAsDisabledByAdmin(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-boolean v1, p0, Lcom/android/settings/RestrictedRadioButton;->mDisabledByAdmin:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/RestrictedRadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RestrictedRadioButton;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f0d0000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/RestrictedRadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method
