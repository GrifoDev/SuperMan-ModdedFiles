.class public Lcom/android/settings/accounts/ProviderPreference;
.super Lcom/samsung/android/settingslib/RestrictedPreference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mIsDialogGUI:Z

.field private mIsSignedIn:Z

.field private mItemSidePaddingForDialog:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsDialogGUI:Z

    iput v1, p0, Lcom/android/settings/accounts/ProviderPreference;->mItemSidePaddingForDialog:I

    iput-object p2, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsSignedIn:Z

    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->setLayoutResource(I)V

    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ProviderPreference;->setPersistent(Z)V

    invoke-virtual {p0, p4}, Lcom/android/settings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->useAdminDisabledSummary(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)V
    .locals 2

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    iput-boolean p6, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsDialogGUI:Z

    iget-boolean v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsDialogGUI:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0453

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mItemSidePaddingForDialog:I

    :cond_0
    return-void
.end method


# virtual methods
.method public checkAccountManagementAndSetDisabled(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accounts/ProviderPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settingslib/RestrictedPreference;->onBindView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsDialogGUI:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/accounts/ProviderPreference;->mItemSidePaddingForDialog:I

    iget v2, p0, Lcom/android/settings/accounts/ProviderPreference;->mItemSidePaddingForDialog:I

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    const v1, 0x7f11011b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsSignedIn:Z

    if-eqz v1, :cond_2

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v1, 0x7f020260

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
