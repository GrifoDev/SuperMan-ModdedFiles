.class Lcom/sec/android/cover/sviewcover/SViewCoverView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->-get4(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->-get4(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->initMultiTouched()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->-get1(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->-get1(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->-wrap2(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    return-void
.end method
