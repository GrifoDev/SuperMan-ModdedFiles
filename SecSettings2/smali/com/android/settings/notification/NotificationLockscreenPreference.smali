.class public Lcom/android/settings/notification/NotificationLockscreenPreference;
.super Lcom/samsung/android/settings/RestrictedListPreference;
.source "NotificationLockscreenPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAllowRemoteInput:Z

.field private mRemoteInputCheckBoxEnabled:Z

.field private mShowRemoteInput:Z

.field private mUserId:I

.field private mViews:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/NotificationLockscreenPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/NotificationLockscreenPreference;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mViews:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/NotificationLockscreenPreference;)Landroid/widget/ListView;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/NotificationLockscreenPreference;IZ)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference;->checkboxVisibilityForSelectedIndex(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/NotificationLockscreenPreference;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setClickedDialogEntryIndex(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    return-void
.end method

.method private checkboxVisibilityForSelectedIndex(IZ)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;-><init>(Lcom/samsung/android/settings/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/android/settings/notification/NotificationLockscreenPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationLockscreenPreference$1;-><init>(Lcom/android/settings/notification/NotificationLockscreenPreference;)V

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->onClick()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f1100f1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/RestrictedListPreference;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f040170

    invoke-virtual {v3, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v5, 0x7f110463

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v5, :cond_2

    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const v5, 0x7f110464

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v5, :cond_3

    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v5, :cond_0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    const v5, 0x7f1100f1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mViews:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mViews:Landroid/view/ViewGroup;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mViews:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mViews:Landroid/view/ViewGroup;

    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mViews:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    iget-boolean v7, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    invoke-direct {p0, v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->checkboxVisibilityForSelectedIndex(IZ)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-object v2

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    move v7, v6

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2
.end method

.method protected onDialogClosed(Z)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/RestrictedListPreference;->onDialogClosed(Z)V

    iget v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mClickedDialogEntryIndex:I

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mClickedDialogEntryIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_screen_allow_remote_input"

    iget-boolean v4, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/RestrictedListPreference;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "lock_screen_allow_remote_input"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setRemoteInputCheckBoxEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    return-void
.end method

.method public setRemoteInputRestricted(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    return-void
.end method
