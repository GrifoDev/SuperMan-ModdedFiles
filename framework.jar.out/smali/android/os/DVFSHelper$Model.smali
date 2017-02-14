.class Landroid/os/DVFSHelper$Model;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Model"
.end annotation


# instance fields
.field protected AMS_RESUME_ARM_FREQ:I

.field protected AMS_RESUME_BUS_FREQ:I

.field protected AMS_RESUME_CPU_CORE:I

.field protected AMS_RESUME_GPU_FREQ:I

.field protected APP_LAUNCH_ARM_FREQ:I

.field protected APP_LAUNCH_BUS_FREQ:I

.field protected APP_LAUNCH_CPU_CORE:I

.field protected APP_LAUNCH_GPU_FREQ:I

.field protected BROWSER_FLING_ARM_FREQ:I

.field protected BROWSER_TOUCH_ARM_FREQ:I

.field protected BROWSER_TOUCH_BOOST_TIMEOUT:I

.field protected BROWSER_TOUCH_BUS_FREQ:I

.field protected CONTACT_SCROLL_ARM_FREQ:I

.field protected DEVICE_WAKEUP_ARM_FREQ:I

.field protected GALLERY_TOUCH_ARM_FREQ:I

.field protected GALLERY_TOUCH_BOOST_TIMEOUT:I

.field protected GALLERY_TOUCH_BUS_FREQ:I

.field protected GALLERY_TOUCH_TAIL_BOOST_TIMEOUT:I

.field protected GROUP_PLAY_ARM_FREQ:I

.field protected LAUNCHER_TOUCH_ARM_FREQ:I

.field protected LAUNCHER_TOUCH_BOOST_TIMEOUT:I

.field protected LAUNCHER_TOUCH_BUS_FREQ:I

.field protected LAUNCHER_TOUCH_CPU_CORE:I

.field protected LAUNCHER_TOUCH_GPU_FREQ:I

.field protected LIST_SCROLL_ARM_FREQ:I

.field protected LIST_SCROLL_BUS_FREQ:I

.field protected LIST_SCROLL_GPU_FREQ:I

.field protected PLUS_CGB_FREQ:Ljava/lang/String;

.field protected ROTATION_ARM_FREQ:I

.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method private constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/DVFSHelper;Landroid/os/DVFSHelper$Model;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$Model;-><init>(Landroid/os/DVFSHelper;)V

    return-void
.end method


# virtual methods
.method public getAMSResumeBUSFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_BUS_FREQ:I

    return v0
.end method

.method public getAMSResumeCPUCore()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_CPU_CORE:I

    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v1, v1, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    aget v1, v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    aget v0, v0, v2

    return v0

    :cond_0
    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_CPU_CORE:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAMSResumeCPUFreq()I
    .locals 5

    const/4 v4, -0x1

    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    invoke-static {v1}, Landroid/os/DVFSHelper;->-get2(Landroid/os/DVFSHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "tf"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "hrl"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "hrq"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v2, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v1

    return v1

    :cond_2
    const-string/jumbo v1, "MSM8939"

    invoke-static {}, Landroid/os/DVFSHelper;->-get1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "MSM8929"

    invoke-static {}, Landroid/os/DVFSHelper;->-get1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "msm8992"

    invoke-static {}, Landroid/os/DVFSHelper;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget v1, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    if-gtz v1, :cond_4

    return v4

    :cond_4
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v2, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v1

    return v1

    :cond_5
    iget v1, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    if-gez v1, :cond_6

    return v4

    :cond_6
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v1, v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximumForSSRM(D)I

    move-result v0

    if-gtz v0, :cond_7

    return v4

    :cond_7
    iget v1, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    if-le v0, v1, :cond_8

    return v0

    :cond_8
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v2, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v1

    return v1
.end method

.method public getAMSResumeGPUFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_GPU_FREQ:I

    return v0
.end method

.method public getAppLaunchBUSFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_BUS_FREQ:I

    return v0
.end method

.method public getAppLaunchCPUCore()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    invoke-static {v0}, Landroid/os/DVFSHelper;->-get3(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    invoke-static {v0}, Landroid/os/DVFSHelper;->-get3(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_CPU_CORE:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    invoke-static {v0}, Landroid/os/DVFSHelper;->-get3(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    aget v0, v0, v2

    return v0

    :cond_0
    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_CPU_CORE:I

    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    invoke-static {v1}, Landroid/os/DVFSHelper;->-get3(Landroid/os/DVFSHelper;)[I

    move-result-object v1

    aget v1, v1, v2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    invoke-static {v0}, Landroid/os/DVFSHelper;->-get3(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    aget v0, v0, v2

    return v0

    :cond_1
    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_CPU_CORE:I

    return v0

    :cond_2
    return v2
.end method

.method public getAppLaunchCPUFreq()I
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_ARM_FREQ:I

    if-gez v0, :cond_0

    return v3

    :cond_0
    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_ARM_FREQ:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    aget v0, v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_ARM_FREQ:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v0

    goto :goto_0

    :cond_2
    return v3
.end method

.method public getAppLaunchGPUFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_GPU_FREQ:I

    return v0
.end method

.method public getBrowserFlingCpuFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->BROWSER_FLING_ARM_FREQ:I

    return v0
.end method

.method public getBrowserTouchBUSFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->BROWSER_TOUCH_BUS_FREQ:I

    return v0
.end method

.method public getBrowserTouchCPUFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->BROWSER_TOUCH_ARM_FREQ:I

    return v0
.end method

.method public getContactScrollCPUFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->CONTACT_SCROLL_ARM_FREQ:I

    return v0
.end method

.method public getDeviceWakeupCPUFreq()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    invoke-static {v0}, Landroid/os/DVFSHelper;->-get4(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/DVFSHelper$Model;->DEVICE_WAKEUP_ARM_FREQ:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    iget v0, p0, Landroid/os/DVFSHelper$Model;->DEVICE_WAKEUP_ARM_FREQ:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/os/DVFSHelper$Model;->DEVICE_WAKEUP_ARM_FREQ:I

    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    invoke-static {v1}, Landroid/os/DVFSHelper;->-get4(Landroid/os/DVFSHelper;)[I

    move-result-object v1

    aget v1, v1, v2

    if-le v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUFreq()I

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper$Model;->DEVICE_WAKEUP_ARM_FREQ:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v0

    return v0
.end method

.method public getGalleryTouchBUSFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_BUS_FREQ:I

    return v0
.end method

.method public getGalleryTouchCPUFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_ARM_FREQ:I

    return v0
.end method

.method public getLauncherTouchBUSFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_BUS_FREQ:I

    return v0
.end method

.method public getLauncherTouchCPUCore()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_CPU_CORE:I

    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v1, v1, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    aget v1, v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    aget v0, v0, v2

    return v0

    :cond_0
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_CPU_CORE:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getLauncherTouchCPUFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_ARM_FREQ:I

    return v0
.end method

.method public getLauncherTouchGPUFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_GPU_FREQ:I

    return v0
.end method

.method public getListScrollBUSFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_BUS_FREQ:I

    return v0
.end method

.method public getListScrollCPUFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_ARM_FREQ:I

    return v0
.end method

.method public getListScrollGPUFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_GPU_FREQ:I

    return v0
.end method

.method public getPlusFreq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->PLUS_CGB_FREQ:Ljava/lang/String;

    return-object v0
.end method

.method public getRotationCPUFreq()I
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/os/DVFSHelper$Model;->ROTATION_ARM_FREQ:I

    if-gez v0, :cond_0

    return v3

    :cond_0
    iget v0, p0, Landroid/os/DVFSHelper$Model;->ROTATION_ARM_FREQ:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget-object v0, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    aget v0, v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v1, p0, Landroid/os/DVFSHelper$Model;->ROTATION_ARM_FREQ:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v0

    goto :goto_0

    :cond_2
    return v3
.end method

.method public getShareMusicCPUFreq()I
    .locals 1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->GROUP_PLAY_ARM_FREQ:I

    return v0
.end method

.method public getTimeoutForAction(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "Launcher_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    return v0

    :cond_0
    const-string/jumbo v0, "Gallery_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    return v0

    :cond_1
    const-string/jumbo v0, "Gallery_touch_tail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_TAIL_BOOST_TIMEOUT:I

    return v0

    :cond_2
    const-string/jumbo v0, "Browser_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/os/DVFSHelper$Model;->BROWSER_TOUCH_BOOST_TIMEOUT:I

    return v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method
