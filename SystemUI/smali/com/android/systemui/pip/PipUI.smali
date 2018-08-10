.class public Lcom/android/systemui/pip/PipUI;
.super Lcom/android/systemui/SystemUI;
.source "PipUI.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private mPipManager:Lcom/android/systemui/pip/BasePipManager;

.field private mSupportsPip:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    invoke-interface {v0, p2}, Lcom/android/systemui/pip/BasePipManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/pip/BasePipManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    invoke-interface {v0}, Lcom/android/systemui/pip/BasePipManager;->showPictureInPictureMenu()V

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/pip/PipUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.software.picture_in_picture"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/pip/PipUI;->mSupportsPip:Z

    iget-boolean v2, p0, Lcom/android/systemui/pip/PipUI;->mSupportsPip:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/pip/PipUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/pip/PipUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Non-primary Pip component not currently supported."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v2, "android.software.leanback_only"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/systemui/pip/tv/PipManager;->getInstance()Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    iget-object v2, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    iget-object v3, p0, Lcom/android/systemui/pip/PipUI;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/systemui/pip/BasePipManager;->initialize(Landroid/content/Context;)V

    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v2}, Lcom/android/systemui/pip/PipUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/systemui/pip/phone/PipManager;->getInstance()Lcom/android/systemui/pip/phone/PipManager;

    move-result-object v2

    goto :goto_0
.end method
