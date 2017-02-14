.class Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;
.super Ljava/lang/Object;
.source "HomeScreenModeSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenModeSettingsFragment;->changeHomeScreenMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

.field final synthetic val$app:Lcom/android/launcher2/LauncherApplication;

.field final synthetic val$cellXY:[I

.field final synthetic val$isCurrentDBHomeOnlyMode:Z

.field final synthetic val$maxCell:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenModeSettingsFragment;[IILcom/android/launcher2/LauncherApplication;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    iput-object p2, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$cellXY:[I

    iput p3, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$maxCell:I

    iput-object p4, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$app:Lcom/android/launcher2/LauncherApplication;

    iput-boolean p5, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$isCurrentDBHomeOnlyMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/HomeScreenSettingsActivity;->instance()Lcom/android/launcher2/HomeScreenSettingsActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/HomeScreenSettingsActivity;->instance()Lcom/android/launcher2/HomeScreenSettingsActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenSettingsActivity;->finish()V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderLock;->removeLockedFolderItems()V

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->setChangeMode(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$cellXY:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$cellXY:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherApplication;->setLauncherGridSize(II)V

    iget v3, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$maxCell:I

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$cellXY:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$cellXY:[I

    aget v5, v5, v2

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->this$0:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher2/Utilities;->setApplyScreenGridApps(Landroid/content/Context;Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$app:Lcom/android/launcher2/LauncherApplication;

    iget-boolean v4, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$isCurrentDBHomeOnlyMode:Z

    if-nez v4, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v3, v1}, Lcom/android/launcher2/LauncherApplication;->setScreenBriefingCountChangeMode(Landroid/content/Context;Z)I

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$app:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/launcher2/HomeScreenModeSettingsFragment$6;->val$isCurrentDBHomeOnlyMode:Z

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/LauncherModel;->resetLoadedState(ZZ)V

    sput-boolean v2, Lcom/android/launcher2/Launcher;->mIsRestartModeChange:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->recreate()V

    :cond_4
    return-void
.end method
