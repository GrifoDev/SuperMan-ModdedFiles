.class public Lcom/android/server/policy/AODWindowManager;
.super Ljava/lang/Object;
.source "AODWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/AODWindowPolicy;


# static fields
.field static final DEBUG:Z = true

.field static final SAFE_DEBUG:Z

.field public static final START_AOD_BOOT:I = 0x1

.field public static final START_AOD_SCREEN_OFF:I = 0x3

.field public static final START_AOD_SCREEN_ON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AODWindowManager"


# instance fields
.field final AOD_APP_START:Ljava/lang/String;

.field final AOD_SCREEN_OFF:Ljava/lang/String;

.field final AOD_SCREEN_ON:Ljava/lang/String;

.field mAODStartState:I

.field mContext:Landroid/content/Context;

.field mIsNightClockShowing:Z

.field private mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

.field mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

.field mStatusBarController:Lcom/android/server/policy/StatusBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/AODWindowManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "com.samsung.android.app.aodservice.intent.action.AOD_APP_START"

    iput-object v0, p0, Lcom/android/server/policy/AODWindowManager;->AOD_APP_START:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.app.aodservice.intent.action.AOD_SCREEN_ON"

    iput-object v0, p0, Lcom/android/server/policy/AODWindowManager;->AOD_SCREEN_ON:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.app.aodservice.intent.action.AOD_SCREEN_OFF"

    iput-object v0, p0, Lcom/android/server/policy/AODWindowManager;->AOD_SCREEN_OFF:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/policy/AODWindowManager;->mAODStartState:I

    iput-boolean v1, p0, Lcom/android/server/policy/AODWindowManager;->mIsNightClockShowing:Z

    return-void
.end method


# virtual methods
.method public canBeForceHiddenByNightClock(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v2, :sswitch_data_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    return v0

    :sswitch_0
    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v4, 0x7d0

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v3

    if-gt v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ed -> :sswitch_0
        0x833 -> :sswitch_0
        0x8ac -> :sswitch_0
        0x8ad -> :sswitch_0
        0x8b1 -> :sswitch_0
        0x8de -> :sswitch_0
        0x8df -> :sswitch_0
    .end sparse-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "--- AOD Window Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNightClock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAODStartState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/AODWindowManager;->mAODStartState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsNightClockShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/AODWindowManager;->mIsNightClockShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/AODWindowManager;->isNightClockVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/policy/AODWindowManager;->mAODStartState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v1, v4}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    const-string/jumbo v1, "AODWindowManager"

    const-string/jumbo v2, "finishPostLayoutPolicyLw : mNightClock.hideLw by screenTurnedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    iput-boolean v3, p0, Lcom/android/server/policy/AODWindowManager;->mIsNightClockShowing:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/AODWindowManager;->mIsNightClockShowing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/server/policy/AODWindowManager;->mIsNightClockShowing:Z

    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v1, v4}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    const-string/jumbo v1, "AODWindowManager"

    const-string/jumbo v2, "finishPostLayoutPolicyLw : mNightClock.show"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    goto :goto_0
.end method

.method public finishWindowsDrawn()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/policy/AODWindowManager;->startAODService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungWindowManagerPolicy;Lcom/android/server/policy/StatusBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/AODWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/AODWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    iput-object p4, p0, Lcom/android/server/policy/AODWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    return-void
.end method

.method public isNightClockVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    const-string/jumbo v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x7

    return v0

    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    const-string/jumbo v0, "AODWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NIGHTCLOCK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8b1
        :pswitch_0
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/policy/AODWindowManager;->startAODService(I)Z

    return-void
.end method

.method public selectRotationAnimationLw([I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/policy/AODWindowManager;->isNightClockVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10a008a

    const/4 v1, 0x0

    aput v0, p1, v1

    const v0, 0x10a0089

    const/4 v1, 0x1

    aput v0, p1, v1

    :cond_0
    return-void
.end method

.method startAODService(I)Z
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_night_mode"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/policy/AODWindowManager;->mAODStartState:I

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/AODWindowManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/AODWindowManager$1;-><init>(Lcom/android/server/policy/AODWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public systemBooted()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/policy/AODWindowManager;->startAODService(I)Z

    return-void
.end method
