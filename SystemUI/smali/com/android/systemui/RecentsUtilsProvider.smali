.class public Lcom/android/systemui/RecentsUtilsProvider;
.super Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;
.source "RecentsUtilsProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;-><init>()V

    return-void
.end method

.method public static initialize()Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;
    .locals 1

    sget-object v0, Lcom/android/systemui/RecentsUtilsProvider;->sPluginRecentsUtils:Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/RecentsUtilsProvider;

    invoke-direct {v0}, Lcom/android/systemui/RecentsUtilsProvider;-><init>()V

    sput-object v0, Lcom/android/systemui/RecentsUtilsProvider;->sPluginRecentsUtils:Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;

    :cond_0
    sget-object v0, Lcom/android/systemui/RecentsUtilsProvider;->sPluginRecentsUtils:Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;

    return-object v0
.end method


# virtual methods
.method public getStackId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 1

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    return v0
.end method

.method public getStackId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    return v0
.end method

.method public getUserHandleAll()Landroid/os/UserHandle;
    .locals 1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUserHandleMyUserId()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getUserHandleSystem()Landroid/os/UserHandle;
    .locals 1

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    return-object v0
.end method

.method public isResizeableMode(I)Z
    .locals 1

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    return v0
.end method

.method public isVisible(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 1

    iget-boolean v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    return v0
.end method

.method public setDockCreateMode(Landroid/app/ActivityOptions;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setDockCreateMode(I)V

    return-void
.end method

.method public setLaunchStackId(Landroid/app/ActivityOptions;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    return-void
.end method

.method public supportsSplitScreenMultiWindow(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 1

    iget-boolean v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    return v0
.end method
