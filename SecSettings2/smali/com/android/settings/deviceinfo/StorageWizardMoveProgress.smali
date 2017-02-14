.class public Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMoveProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private mMoveId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->moveStatusToMessage(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method private moveStatusToMessage(I)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f0b142b

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const v0, 0x7f0b1430

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    const v0, 0x7f0b142c

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    const v0, 0x7f0b142d

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    const v0, 0x7f0b142e

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    const v0, 0x7f0b142f

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->finish()V

    return-void

    :cond_0
    const v2, 0x7f0402ac

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.content.pm.extra.MOVE_ID"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setIllustrationType(I)V

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v6

    const v3, 0x7f0b12e7

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setHeaderText(I[Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v6

    aput-object v0, v2, v5

    const v3, 0x7f0b12e8

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->setBodyText(I[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mMoveId:I

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v4

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMoveProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V

    return-void
.end method
