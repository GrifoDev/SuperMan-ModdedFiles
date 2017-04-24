.class public Lcom/android/settings/deviceinfo/PublicVolumeSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PublicVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;,
        Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;
    }
.end annotation


# instance fields
.field private mDisk:Landroid/os/storage/DiskInfo;

.field private mFormatPrivate:Landroid/preference/Preference;

.field private mFormatPublic:Landroid/preference/Preference;

.field private mIsPermittedToAdopt:Z

.field private mMount:Landroid/preference/Preference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private mUnmount:Landroid/widget/Button;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    new-instance v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;-><init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmountListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;-><init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private addPreference(Landroid/preference/Preference;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private buildAction(I)Landroid/preference/Preference;
    .locals 2

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    return-object v0
.end method

.method private isVolumeValid()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0156

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string/jumbo v5, "android.provider.action.DOCUMENT_ROOT_SETTINGS"

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v4}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    const v5, 0x7f08005f

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    new-instance v5, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v5, 0x7f0b13b8

    invoke-direct {p0, v5}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mMount:Landroid/preference/Preference;

    new-instance v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    const v6, 0x7f0b13b9

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0b13ba

    invoke-direct {p0, v5}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/preference/Preference;

    iget-boolean v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz v5, :cond_3

    const v5, 0x7f0b13bc

    invoke-direct {p0, v5}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/preference/Preference;

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const v5, 0x7f1002da

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mMount:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    new-instance v2, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "android.os.storage.extra.DISK_ID"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "format_private"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "android.os.storage.extra.DISK_ID"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "format_private"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->update()V

    return-void
.end method

.method public update()V
    .locals 15

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v12, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v11, v12}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v10, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-direct {p0, v10}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    iget-object v10, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    sub-long v8, v6, v2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v8, v9, v11}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v4

    iget-object v10, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v11, 0x7f0b13cd

    invoke-virtual {p0, v11}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/CharSequence;

    iget-object v13, v4, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    iget-object v13, v4, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const v12, 0x7f0b13ce

    invoke-virtual {p0, v12, v11}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const-wide/16 v12, 0x0

    cmp-long v10, v6, v12

    if-lez v10, :cond_6

    const-wide/16 v12, 0x64

    mul-long/2addr v12, v8

    div-long/2addr v12, v6

    long-to-int v10, v12

    :goto_0
    invoke-virtual {v11, v10}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setPercent(I)V

    :cond_2
    iget-object v10, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mMount:Landroid/preference/Preference;

    invoke-direct {p0, v10}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    :cond_3
    iget-object v10, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    iget-object v10, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/preference/Preference;

    invoke-direct {p0, v10}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    iget-object v10, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v10}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/preference/Preference;

    invoke-direct {p0, v10}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    :cond_5
    return-void

    :cond_6
    const/4 v10, -0x1

    goto :goto_0
.end method
