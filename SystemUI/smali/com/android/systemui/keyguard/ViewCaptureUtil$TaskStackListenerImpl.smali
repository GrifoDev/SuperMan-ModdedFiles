.class Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;
.super Landroid/app/ITaskStackListener$Stub;
.source "ViewCaptureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/ViewCaptureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field mSb:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ViewCaptureUtil;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->mSb:Ljava/lang/StringBuilder;

    return-void
.end method

.method private isHazardActivity(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-get4(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isPerformanceFirstActivity(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-get8(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isWallpaperActivity(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-get10(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 0

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 0

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .locals 0

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 0

    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 0

    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 0

    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 0

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0

    return-void
.end method

.method public onTaskProfileLocked(II)V
    .locals 0

    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .locals 0

    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 0

    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 0

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-get0(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-get7(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->isHazardActivity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-static {v2, v5}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->-set0(Lcom/android/systemui/keyguard/ViewCaptureUtil;Z)Z

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->isWallpaperActivity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;-><init>(Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;)V

    new-array v3, v3, [Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->isPerformanceFirstActivity(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method
