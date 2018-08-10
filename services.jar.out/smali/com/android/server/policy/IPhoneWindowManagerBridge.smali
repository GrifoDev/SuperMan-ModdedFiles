.class public interface abstract Lcom/android/server/policy/IPhoneWindowManagerBridge;
.super Ljava/lang/Object;
.source "IPhoneWindowManagerBridge.java"


# static fields
.field public static final ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK:Ljava/lang/String; = "ADPD"

.field public static final ADD_PASS:I = 0x4

.field public static final ADD_WAKEUP:I = 0x10

.field public static final CONSUME:I = 0x2

.field public static final DOUBLE_TAP_TIMEOUT:I = 0xaa

.field public static final EXTRA_ACCESSIBILITY_DARKSCREEN_POWERKEY_DOUBLECLICK:Ljava/lang/String; = "PowerKey DoubleClick"

.field public static final EXTRA_VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String; = "HomeKey Click"

.field public static final EXTRA_VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String; = "RecentKey Click"

.field public static final FORWARD:I = 0x1

.field public static final HIDE_SVIEW_COVER_ALWAYS:I = 0x1

.field public static final HIDE_SVIEW_COVER_NONE:I = 0x0

.field public static final HIDE_SVIEW_COVER_ONCE:I = 0x2

.field public static final REMOVE_PASS:I = 0x8

.field public static final REMOVE_WAKEUP:I = 0x20

.field public static final VOICE_CALL_HOMEKEY_ANSWER:Ljava/lang/String; = "VCHA"

.field public static final VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String; = "VCHK"

.field public static final VOICE_CALL_POWERKEY_ENDCALL:Ljava/lang/String; = "VCPE"

.field public static final VOICE_CALL_POWERKEY_SIELNCE:Ljava/lang/String; = "VCPS"

.field public static final VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String; = "VCRK"

.field public static final VOICE_CALL_VOLUMEKEY_SILENCE:Ljava/lang/String; = "VCVS"


# virtual methods
.method public abstract addHiddenWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract adjustAspectRatioFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
.end method

.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;)V
.end method

.method public abstract adjustSystemUiVisibilityLw(I)I
.end method

.method public abstract adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;II)V
.end method

.method public abstract applyFrameInLayoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract applyLidSwitchState()Z
.end method

.method public abstract applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Z)V
.end method

.method public abstract applyWindowPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract beginCoverLayoutLw(III)V
.end method

.method public abstract beginLayoutLw(IIII)V
.end method

.method public abstract beginPostLayoutPolicyLw(II)V
.end method

.method public abstract canAffectSystemUiFlags()Z
.end method

.method public abstract canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract canCandidateSystemUiVisibilityLw(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/view/WindowManagerPolicy$WindowState;
.end method

.method public abstract changeAppOpsMode(IILjava/lang/String;)I
.end method

.method public abstract changeNavigationBarHeight(I)V
.end method

.method public abstract configureNavBarOpacity(ILandroid/view/WindowManagerPolicy$WindowState;)I
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract finishPostLayoutPolicyLw(I)I
.end method

.method public abstract finishScreenTurningOn()V
.end method

.method public abstract finishedGoingToSleep(I)V
.end method

.method public abstract focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract freezeRotation(I)V
.end method

.method public abstract getChangeRatioBarSize()I
.end method

.method public abstract getCoverManager()Lcom/samsung/android/cover/ICoverManager;
.end method

.method public abstract getCoverState()Lcom/samsung/android/cover/CoverState;
.end method

.method public abstract getCoverStateSwitch()Z
.end method

.method public abstract getCurrentAspectRatio()F
.end method

.method public abstract getDefaultMaxAspectRatio()F
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;
.end method

.method public abstract getKeycodeOnNavigationBar(II)I
.end method

.method public abstract getNavigationBarCustomHeight()I
.end method

.method public abstract getNavigationBarHeight()I
.end method

.method public abstract getNavigationBarHideSetting()Z
.end method

.method public abstract getNonDecorDisplayHeight(III)I
.end method

.method public abstract getNonDecorDisplayWidth(III)I
.end method

.method public abstract getRotationLockOrientation()I
.end method

.method public abstract getSBikeModeState()Z
.end method

.method public abstract getSViewCoverHeight(Landroid/view/DisplayInfo;)I
.end method

.method public abstract getSViewCoverWidth(Landroid/view/DisplayInfo;)I
.end method

.method public abstract getSurfaceLayerCarModeBar()I
.end method

.method public abstract getTaskBarHeightInDesktopMode()I
.end method

.method public abstract getVoIPInterfaceService()Landroid/os/IVoIPInterface;
.end method

.method public abstract handleLongPressOnHome()Z
.end method

.method public abstract handleLongPressOnRecent()V
.end method

.method public abstract hasLockscreenWallpaper()Z
.end method

.method public abstract ignorePowerKeyInEncrypting()Z
.end method

.method public abstract inVSMode()Z
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract insertLog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract interceptEndCallKey(Landroid/view/KeyEvent;ZZ)I
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptPowerKeyDown()V
.end method

.method public abstract isAnyKeyMode()Z
.end method

.method public abstract isAvailableOneTouchReport()Z
.end method

.method public abstract isBlockedPowerKeyByKeyTest()Z
.end method

.method public abstract isCarModeBarVisible()Z
.end method

.method public abstract isCarModeEnabled()Z
.end method

.method public abstract isCombinationKeyTriggered()Z
.end method

.method public abstract isDesktopModeForPreparing()Z
.end method

.method public abstract isDesktopModeLoadingScreenShowing()Z
.end method

.method public abstract isDesktopModeTi()Z
.end method

.method public abstract isDockHomeEnabled(Landroid/content/Intent;)Z
.end method

.method public abstract isDoubleTapOnPowerEnabled()Z
.end method

.method public abstract isDozeDream()Z
.end method

.method public abstract isEasyOneHandEnabled()Z
.end method

.method public abstract isEnableAccessControl(I)Z
.end method

.method public abstract isFlipTypeCoverClosed()Z
.end method

.method public abstract isForceHideBySViewCover()Z
.end method

.method public abstract isForceStatusBarFromSViewCover()Z
.end method

.method public abstract isGearVrDocked()Z
.end method

.method public abstract isGearVrSupport()Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardScrimWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isKnoxDesktopMode()Z
.end method

.method public abstract isLockTaskModeEnabled()Z
.end method

.method public abstract isMetaKeyEventRequested()Z
.end method

.method public abstract isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
.end method

.method public abstract isMirrorLinkEnabled()Z
.end method

.method public abstract isMobileKeyboardEnabled()Z
.end method

.method public abstract isNaviBarGestureLockedByGameTools()Z
.end method

.method public abstract isNavigationBarDisabled()Z
.end method

.method public abstract isNavigationColorWin(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract isRecentsTaskShowing()Z
.end method

.method public abstract isSafetyAssuranceEnabled()Z
.end method

.method public abstract isShowingSViewCover()Z
.end method

.method public abstract isStatusBarSViewCover()Z
.end method

.method public abstract isStatusBarVisible()Z
.end method

.method public abstract isStatusColorWin(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
.end method

.method public abstract isTphoneRelaxMode()Z
.end method

.method public abstract isVolumeKeyMode()Z
.end method

.method public abstract isWakeupPreventionPackage(Ljava/lang/String;I)Z
.end method

.method public abstract launchHomeForDesktopMode()V
.end method

.method public abstract layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract needFullScreenDimBounds()Z
.end method

.method public abstract needLayoutForNavigationBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract needSensorRunningLp()I
.end method

.method public abstract needUpdateSystemBarsForCoverLw()Z
.end method

.method public abstract notifyBeforeQuickAccess(IFF)Z
.end method

.method public abstract notifyCoverSwitchStateChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)Z
.end method

.method public abstract notifyPenSwitchChanged(JZ)V
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onLockTaskModeChanged(I)V
.end method

.method public abstract performCPUBoost()V
.end method

.method public abstract performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
.end method

.method public abstract performHome()V
.end method

.method public abstract performSystemKeyFeedback(Landroid/view/KeyEvent;)V
.end method

.method public abstract powerMultiPressAction(I)Z
.end method

.method public abstract powerPress(Landroid/view/KeyEvent;Z)Z
.end method

.method public abstract prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract prepareDesktopTaskBar(Z)V
.end method

.method public abstract removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
.end method

.method public abstract requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
.end method

.method public abstract requestTransientBars(ZZ)V
.end method

.method public abstract restoreForceUserActivityTimeout(ZLandroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract rotationForOrientationLw(II)I
.end method

.method public abstract screenTurnedOff()V
.end method

.method public abstract selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
.end method

.method public abstract selectRotationAnimationLw([I)V
.end method

.method public abstract setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
.end method

.method public abstract setCoverSwitchState(Lcom/samsung/android/cover/CoverState;)Z
.end method

.method public abstract setDesktopTaskBar(Z)V
.end method

.method public abstract setForceStatusBarFromSViewCover(Z)V
.end method

.method public abstract setHideSViewCoverWindowState(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setHomeConsumed()V
.end method

.method public abstract setInitialDisplaySize(IIIIII)V
.end method

.method public abstract setRotationLw(I)V
.end method

.method public abstract setSafeModeReason(IIIIII)V
.end method

.method public abstract setShowingSViewCover(Z)V
.end method

.method public abstract setUserRotationMode(II)Z
.end method

.method public abstract shouldBeHiddenIfNeeded(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract startedWakingUp(I)V
.end method

.method public abstract subWindowTypeToLayerLw(I)I
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
.end method

.method public abstract takeScreenshot(I)V
.end method

.method public abstract updateDeskTopUiMode()V
.end method

.method public abstract updateLightNaviBarLw(ILandroid/view/WindowManagerPolicy$WindowState;)I
.end method

.method public abstract updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
.end method

.method public abstract updateSViewCoverLayout(Z)V
.end method

.method public abstract updateSettings()V
.end method

.method public abstract updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;II)I
.end method

.method public abstract updateSystemUiVisibilityLw()V
.end method

.method public abstract updateTaskBarHeightInDesktopMode()V
.end method

.method public abstract updateTopActivity(Landroid/content/ComponentName;)V
.end method

.method public abstract updateTouchableArea(Z)V
.end method

.method public abstract updateTspInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;Z)V
.end method

.method public abstract updateTspWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract windowTypeToLayer(I)I
.end method
