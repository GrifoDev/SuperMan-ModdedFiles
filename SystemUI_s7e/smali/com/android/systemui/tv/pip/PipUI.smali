.class public Lcom/android/systemui/tv/pip/PipUI;
.super Lcom/android/systemui/SystemUI;
.source "PipUI.java"


# instance fields
.field private mSupportPip:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/systemui/tv/pip/PipUI;->mSupportPip:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.software.picture_in_picture"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/tv/pip/PipUI;->mSupportPip:Z

    iget-boolean v2, p0, Lcom/android/systemui/tv/pip/PipUI;->mSupportPip:Z

    if-nez v2, :cond_1

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/tv/pip/PipManager;->initialize(Landroid/content/Context;)V

    return-void
.end method
