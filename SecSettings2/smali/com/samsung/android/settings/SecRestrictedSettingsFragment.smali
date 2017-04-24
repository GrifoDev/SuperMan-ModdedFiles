.class public abstract Lcom/samsung/android/settings/SecRestrictedSettingsFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SecRestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;
    }
.end annotation


# instance fields
.field private mAdminSupportDetails:Landroid/view/View;

.field private mChallengeRequested:Z

.field private mChallengeSucceeded:Z

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mIsAdminUser:Z

.field private mOnlyAvailableForAdmins:Z

.field private final mRestrictionKey:Ljava/lang/String;

.field private mRestrictionsManager:Landroid/content/RestrictionsManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/SecRestrictedSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeRequested:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/SecRestrictedSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeRequested:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/SecRestrictedSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeSucceeded:Z

    return p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    new-instance v0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;-><init>(Lcom/samsung/android/settings/SecRestrictedSettingsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    return-void
.end method

.method private ensurePin()V
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeRequested:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v2}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v2}, Landroid/content/RestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeRequested:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeSucceeded:Z

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v2, "android.request.mesg"

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b19c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0x3015

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private initAdminSupportDetailsView()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f110128

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v0, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method protected hasChallengeSucceeded()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeRequested:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeRequested:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method protected initEmptyTextView()Landroid/widget/TextView;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected isRestrictedAndNotProviderProtected()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "restrict_if_overridable"

    iget-object v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v1}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isUiRestricted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->isRestrictedAndNotProviderProtected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->hasChallengeSucceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mIsAdminUser:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUiRestrictedByOnlyAdmin()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->isUiRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mIsAdminUser:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->initAdminSupportDetailsView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mAdminSupportDetails:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->initEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x3015

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeSucceeded:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeRequested:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeSucceeded:Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "restrictions"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/RestrictionsManager;

    iput-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mIsAdminUser:Z

    if-eqz p1, :cond_0

    const-string/jumbo v1, "chsc"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeSucceeded:Z

    const-string/jumbo v1, "chrq"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeRequested:Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDataSetChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->highlightPreferenceIfNeeded()V

    iget-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mAdminSupportDetails:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mAdminSupportDetails:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/android/settings/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mAdminSupportDetails:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->setEmptyView(Landroid/view/View;)V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDataSetChanged()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->shouldBeProviderProtected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->ensurePin()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "chrq"

    iget-boolean v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "chsc"

    iget-boolean v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mChallengeSucceeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setIfOnlyAvailableForAdmins(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    return-void
.end method

.method protected shouldBeProviderProtected(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "restrict_if_overridable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v1}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
