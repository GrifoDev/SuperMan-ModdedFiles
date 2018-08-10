.class public Lcom/android/systemui/recents/RecentsActivityLaunchState;
.super Ljava/lang/Object;
.source "RecentsActivityLaunchState.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/recents/PluginRecentsActivityLaunchState;


# instance fields
.field public launchedFromApp:Z

.field public launchedFromBlacklistedApp:Z

.field public launchedFromHome:Z

.field public launchedFromPipApp:Z

.field public launchedFullscreenTaskId:I

.field public launchedNumVisibleTasks:I

.field public launchedNumVisibleThumbnails:I

.field public launchedToTaskId:I

.field public launchedViaDockGesture:Z

.field public launchedViaDragGesture:Z

.field public launchedWithAltTab:Z

.field public launchedWithNextPipApp:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "launchedWithAltTab="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " launchedFromApp="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " launchedFromBlacklistedApp="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " launchedFromHome="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "launchedFromPipApp="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " launchedWithNextPipApp="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "launchedViaDragGesture="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " launchedViaDockGesture="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "launchedToTaskId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " launchedNumVisibleTasks="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " launchedNumVisibleThumbnails="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getInitialFocusTaskIndex(IZ)I
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, p1, -0x1

    return v2

    :cond_0
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    if-eqz v2, :cond_1

    add-int/lit8 v2, p1, -0x1

    return v2

    :cond_1
    if-eqz p2, :cond_2

    add-int/lit8 v2, p1, -0x1

    return v2

    :cond_2
    add-int/lit8 v2, p1, -0x2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    :cond_3
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    return v2

    :cond_4
    add-int/lit8 v2, p1, -0x1

    return v2
.end method

.method public getLaunchedFullscreenTaskId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFullscreenTaskId:I

    return v0
.end method

.method public getLaunchedToTaskId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    return v0
.end method

.method public isLaunchedFromApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    return v0
.end method

.method public isLaunchedFromBlacklistedApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    return v0
.end method

.method public isLaunchedFromHome()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    return v0
.end method

.method public isLaunchedFromPipApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    return v0
.end method

.method public isLaunchedViaDockGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    return v0
.end method

.method public isLaunchedViaDragGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    return v0
.end method

.method public isLaunchedWithAltTab()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    return v0
.end method

.method public isLaunchedWithNextPipApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    iput v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    iput v1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFullscreenTaskId:I

    return-void
.end method

.method public setIsLaunchedWithAltTab(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    return-void
.end method

.method public setLaunchedToTaskId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    return-void
.end method
