.class public Lcom/samsung/android/server/virtualspace/VSManagerService;
.super Lcom/samsung/android/virtualspace/IVSManagerService$Stub;
.source "VSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/virtualspace/VSManagerService$Lifecycle;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final EXCEPTION_PACKAGES:[Ljava/lang/String;

.field private static final SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field static final TAG:Ljava/lang/String; = "VSManagerService"

.field static final TIMEOUT:I = 0x1388


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mClientDisplayId:I

.field private mClosing:Z

.field private final mContext:Landroid/content/Context;

.field private mDisplayCleared:Z

.field private mDisplayRedirected:Z

.field final mDm:Landroid/hardware/display/DisplayManager;

.field private mGearVr:Lcom/samsung/android/vr/GearVrManager;

.field final mHandler:Landroid/os/Handler;

.field final mIm:Lcom/android/server/input/InputManagerService;

.field private final mImInternal:Landroid/hardware/input/InputManagerInternal;

.field final mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

.field private mSB:Lcom/android/server/statusbar/StatusBarManagerService;

.field final mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

.field private mSavedAppOpsVisibility:Z

.field private mSavedInMouseStylusMode:Z

.field private mSavedInTouchMode:Z

.field private mSavedMouseCursorVisibility:Z

.field private mSavedPIPMode:Z

.field private mSavedSelectedInputMethod:Ljava/lang/String;

.field private mSavedSelectedInputMethodSubtype:Ljava/lang/String;

.field private mSavedVolumeKeyMode:I

.field private mSession:Lcom/samsung/android/server/virtualspace/VSSession;

.field private mSoundAssistant:Lcom/samsung/android/media/SemSoundAssistantManager;

.field private final mSupportsPIP:Z

.field private final mVrService:Lcom/android/server/vr/VrManagerInternal;

.field private final mWM:Lcom/android/server/wm/WindowManagerService;

.field private mWaitingDisplayDone:Landroid/os/ConditionVariable;

.field private mWaitingDisplayId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.hmt.vrsvc"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->EXCEPTION_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/virtualspace/IVSManagerService$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWaitingDisplayId:I

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDm:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mIm:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWM:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWM:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getActivityManagerServiceBridge()Lcom/android/server/am/IActivityManagerServiceBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const-string/jumbo v0, "vr"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManager;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.software.vr.mode"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mVrService:Lcom/android/server/vr/VrManagerInternal;

    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mImInternal:Landroid/hardware/input/InputManagerInternal;

    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSoundAssistant:Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.software.picture_in_picture"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSupportsPIP:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setClientDisplayId(I)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private accessCheck()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.virtualspace.permission.SEM_USE_VIRTUAL_SPACE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller doesn\'t have the permission to connect to the VSManagerService"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "Failed permission check, ignored on eng build"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "Passed permission check"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableStatusBar(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSB:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p0, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lcom/android/server/policy/PolicyControl;->setForceFullScreen(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IWindowManagerServiceBridge;->performLayout()V

    return-void

    :cond_1
    const/high16 v0, 0x3ff0000

    goto :goto_0
.end method

.method private endRedirect()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDisplayRedirected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mImInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedMouseCursorVisibility:Z

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mImInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1}, Landroid/hardware/input/InputManagerInternal;->getMouseCursorVisibility()Z

    move-result v1

    if-eq v0, v1, :cond_2

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoring mouse cursor visibility to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedMouseCursorVisibility:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mImInternal:Landroid/hardware/input/InputManagerInternal;

    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedMouseCursorVisibility:Z

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerInternal;->setMouseCursorVisibility(Z)V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "endRedirect: starting reverting the display redirection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mVrService:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClientDisplayId:I

    invoke-interface {v0, v1, v4, v5, v4}, Lcom/android/server/wm/IWindowManagerServiceBridge;->migrateWindows(IIZZ)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IActivityManagerServiceBridge;->needSmoothExitVS()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "endRedirect: doing smooth exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "endRedirect: rotating main display to match VS display\'s orientation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0, v4, v5, v5}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setDisplayRotation(IIZ)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v4, v2, v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->waitOrientationComplete(IJ)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "Timed out waiting for the orientation change to complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "endRedirect: done waiting for the orientation change to complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "endRedirect: moving activities from the vs display back to the main display"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0, v5}, Lcom/android/server/am/IActivityManagerServiceBridge;->endRedirectMainDisplayVS(Z)V

    :goto_0
    invoke-direct {p0, v4}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setClientDisplayId(I)V

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "endRedirect: Done"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    :cond_b
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "endRedirect: doing quick exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0, v4}, Lcom/android/server/am/IActivityManagerServiceBridge;->endRedirectMainDisplayVS(Z)V

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClientDisplayId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->swapMainDisplayWith(I)V

    goto :goto_0
.end method

.method private sessionStarting(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "VSManagerService"

    const-string/jumbo v4, "VS session starting"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getClientActivity()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->startDisplayRedirect(Landroid/os/IBinder;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSManagerService;->enableStatusBar(Z)V

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "selected_input_method_subtype"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedSelectedInputMethodSubtype:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "default_input_method"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedSelectedInputMethod:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "default_input_method"

    const-string/jumbo v5, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    invoke-virtual {v1}, Lcom/samsung/android/vr/GearVrManager;->isDock()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x46

    invoke-virtual {v1, v4, v3, v6}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedAppOpsVisibility:Z

    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedAppOpsVisibility:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    sget-object v4, Lcom/samsung/android/server/virtualspace/VSManagerService;->EXCEPTION_PACKAGES:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v3}, Lcom/samsung/android/vr/GearVrManager;->setOverlayRestriction(Z[Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mVrService:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mVrService:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/vr/VrManagerInternal;->updateOverlayState()V

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSupportsPIP:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v1, v2}, Lcom/android/server/am/IActivityManagerServiceBridge;->setSupportsPictureInPicture(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedPIPMode:Z

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v1, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setInTouchMode(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedInTouchMode:Z

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v1, v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setInMouseStylusMode(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedInMouseStylusMode:Z

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSoundAssistant:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedVolumeKeyMode:I

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedVolumeKeyMode:I

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSoundAssistant:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeKeyMode(I)V

    :cond_4
    return-void

    :cond_5
    move v1, v3

    goto :goto_0
.end method

.method private setClientDisplayId(I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClientDisplayId:I

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDisplayRedirected:Z

    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDisplayRedirected:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->swapMainDisplayWith(I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mVrService:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v1}, Lcom/android/server/am/IActivityManagerServiceBridge;->updateVrCoreConfiguration()V

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v4, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClientDisplayId:I

    invoke-interface {v1, v3, v4, v2, v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->migrateWindows(IIZZ)V

    :cond_0
    const-string/jumbo v1, "sys.vs.display"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method private setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string/jumbo v3, "sys.vs.mode"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setVSSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getClientActivity()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/IActivityManagerServiceBridge;->setVSMode(ZLandroid/os/IBinder;)V

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0, v2, v4}, Lcom/android/server/am/IActivityManagerServiceBridge;->setVSMode(ZLandroid/os/IBinder;)V

    goto :goto_1
.end method

.method private startDisplayRedirect(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0, p1}, Lcom/android/server/am/IActivityManagerServiceBridge;->getActivityDisplay(Landroid/os/IBinder;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setClientDisplayId(I)V

    return-void
.end method

.method private startDynamicRedirect(Landroid/os/IBinder;)Z
    .locals 7

    const-wide/16 v4, 0x1388

    const/4 v3, -0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v2, v6, v4, v5}, Lcom/android/server/wm/IWindowManagerServiceBridge;->freezeDisplay(IJ)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v2}, Lcom/android/server/am/IActivityManagerServiceBridge;->createVSContainer()I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string/jumbo v2, "VSManagerService"

    const-string/jumbo v3, "Failed creating VS container"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->unfreezeDisplay()V

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWaitingDisplayDone:Landroid/os/ConditionVariable;

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWaitingDisplayId:I

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v2, p1}, Lcom/android/server/am/IActivityManagerServiceBridge;->moveClientToVSContainer(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "VSManagerService"

    const-string/jumbo v3, "Failed moving client to VS container"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->unfreezeDisplay()V

    return v6

    :cond_1
    :try_start_2
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "VSManagerService"

    const-string/jumbo v3, "startRedirect: waiting for content to show up on container"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWaitingDisplayDone:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWaitingDisplayId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWaitingDisplayDone:Landroid/os/ConditionVariable;

    if-nez v1, :cond_3

    const-string/jumbo v2, "VSManagerService"

    const-string/jumbo v3, "Timed out waiting for the client activity to move to the new display"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->unfreezeDisplay()V

    return v6

    :cond_3
    :try_start_3
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "VSManagerService"

    const-string/jumbo v3, "startRedirect: done waiting for content to show up on container"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setClientDisplayId(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->unfreezeDisplay()V

    return v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->unfreezeDisplay()V

    throw v2
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSSession;
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "VSManagerService"

    const-string/jumbo v3, "VSManagerService.connect()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->accessCheck()V

    if-nez p1, :cond_1

    const-string/jumbo v2, "VSManagerService"

    const-string/jumbo v3, "Error: null client?"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClosing:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "VSManagerService"

    const-string/jumbo v3, "Session still closing, waiting..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x1388

    :try_start_2
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/virtualspace/VSManagerService;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClosing:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "VSManagerService"

    const-string/jumbo v3, "Timed out waiting for the previous VS session to close"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_4
    const-string/jumbo v2, "VSManagerService"

    const-string/jumbo v3, "Other session now closed, proceeding..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v1, Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;-><init>(Lcom/samsung/android/server/virtualspace/VSManagerService;Landroid/os/IBinder;)V

    new-instance v2, Lcom/samsung/android/server/virtualspace/-$Lambda$aFXG8WE91-FZMtiJlE77lsGUfPU;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/server/virtualspace/-$Lambda$aFXG8WE91-FZMtiJlE77lsGUfPU;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_4
    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "VSManagerService"

    const-string/jumbo v3, "Error: still connected"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "VSManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VirtualSpace Manager service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->dump(Ljava/io/PrintWriter;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "no active session"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getClientDisplayId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClientDisplayId:I

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDisplay(I)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDm:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method getServiceHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2.0.0"

    return-object v0
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSManagerService_19642(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->sessionStarting(Lcom/samsung/android/server/virtualspace/VSSession;)V

    return-void
.end method

.method notifyNonEmptyDisplay(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWaitingDisplayId:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWaitingDisplayDone:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " non empty, releasing wait"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mWaitingDisplayDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_1
    return-void
.end method

.method redirectIME(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->migrateWindows(IIZZ)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v1}, Lcom/android/server/am/IActivityManagerServiceBridge;->getIMEPid()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->overridePidDisplay(II)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0, p2}, Lcom/android/server/am/IActivityManagerServiceBridge;->setIMEDisplay(I)V

    return-void
.end method

.method sessionClosed()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "VS session finishing close"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSManagerService;->enableStatusBar(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedSelectedInputMethod:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "selected_input_method_subtype"

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedSelectedInputMethodSubtype:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManager;->isDock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedAppOpsVisibility:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mGearVr:Lcom/samsung/android/vr/GearVrManager;

    sget-object v1, Lcom/samsung/android/server/virtualspace/VSManagerService;->EXCEPTION_PACKAGES:[Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v6}, Lcom/samsung/android/vr/GearVrManager;->setOverlayRestriction(Z[Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0, v5, v5}, Lcom/android/server/wm/IWindowManagerServiceBridge;->overridePidDisplay(II)V

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->endRedirect()V

    invoke-direct {p0, v4}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setSession(Lcom/samsung/android/server/virtualspace/VSSession;)V

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedVolumeKeyMode:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSoundAssistant:Lcom/samsung/android/media/SemSoundAssistantManager;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedVolumeKeyMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeKeyMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedInTouchMode:Z

    invoke-interface {v0, v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setInTouchMode(Z)Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedInMouseStylusMode:Z

    invoke-interface {v0, v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setInMouseStylusMode(Z)Z

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSupportsPIP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedPIPMode:Z

    invoke-interface {v0, v1}, Lcom/android/server/am/IActivityManagerServiceBridge;->setSupportsPictureInPicture(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mVrService:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mVrService:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/vr/VrManagerInternal;->updateOverlayState()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IActivityManagerServiceBridge;->updateOomAdj()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClosing:Z

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "VS session closed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sessionClosing()V
    .locals 2

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "VS session closing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mClosing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IActivityManagerServiceBridge;->hideVSStack()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setOverrideDisplaySize(III)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOverrideDisplaySize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setOverrideDisplaySize(III)V

    return-void
.end method

.method startRedirect(Landroid/os/IBinder;Z)Z
    .locals 4

    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDisplayRedirected:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->startDynamicRedirect(Landroid/os/IBinder;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDisplayCleared:Z

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v1, p2}, Lcom/android/server/am/IActivityManagerServiceBridge;->startRedirectMainDisplayVS(Z)V

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mImInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mImInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1}, Landroid/hardware/input/InputManagerInternal;->getMouseCursorVisibility()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedMouseCursorVisibility:Z

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSSession;->getMouseCursorVisibility()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSavedMouseCursorVisibility:Z

    if-eq v1, v0, :cond_2

    sget-boolean v1, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "VSManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setting mouse cursor visibility to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mImInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManagerInternal;->setMouseCursorVisibility(Z)V

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method swapMainDisplayWith(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Swapping displays 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->swapLogicalDisplays(II)V

    return-void
.end method
