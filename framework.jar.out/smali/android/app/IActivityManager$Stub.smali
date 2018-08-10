.class public abstract Landroid/app/IActivityManager$Stub;
.super Landroid/os/Binder;
.source "IActivityManager.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field static final TRANSACTION_activityDestroyed:I = 0x35

.field static final TRANSACTION_activityIdle:I = 0xc

.field static final TRANSACTION_activityPaused:I = 0xd

.field static final TRANSACTION_activityRelaunched:I = 0x106

.field static final TRANSACTION_activityResumed:I = 0x1f

.field static final TRANSACTION_activitySlept:I = 0x7c

.field static final TRANSACTION_activityStopped:I = 0xe

.field static final TRANSACTION_addAppTask:I = 0xd2

.field static final TRANSACTION_addInstrumentationResults:I = 0x23

.field static final TRANSACTION_addPackageDependency:I = 0x60

.field static final TRANSACTION_addPackageToReducedScreenBlacklist:I = 0x148

.field static final TRANSACTION_appNotRespondingViaProvider:I = 0xb8

.field static final TRANSACTION_attachApplication:I = 0xb

.field static final TRANSACTION_backgroundResourcesReleased:I = 0xcd

.field static final TRANSACTION_backgroundWhitelistUid:I = 0x12f

.field static final TRANSACTION_backupAgentCreated:I = 0x5a

.field static final TRANSACTION_bindBackupAgent:I = 0x59

.field static final TRANSACTION_bindService:I = 0x1c

.field static final TRANSACTION_bootAnimationComplete:I = 0xd6

.field static final TRANSACTION_broadcastIntent:I = 0x8

.field static final TRANSACTION_cancelIntentSender:I = 0x37

.field static final TRANSACTION_cancelTaskThumbnailTransition:I = 0x128

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x127

.field static final TRANSACTION_checkGrantUriPermission:I = 0x78

.field static final TRANSACTION_checkKnoxPermission:I = 0x4d

.field static final TRANSACTION_checkKnoxPermissionByPKG:I = 0x4c

.field static final TRANSACTION_checkPermission:I = 0x2c

.field static final TRANSACTION_checkPermissionWithToken:I = 0xda

.field static final TRANSACTION_checkUriPermission:I = 0x2d

.field static final TRANSACTION_clearAppLockedUnLockedApp:I = 0x13e

.field static final TRANSACTION_clearApplicationUserData:I = 0x47

.field static final TRANSACTION_clearGrantedUriPermissions:I = 0x10b

.field static final TRANSACTION_clearPendingBackup:I = 0xa1

.field static final TRANSACTION_clearRecentTasks:I = 0x49

.field static final TRANSACTION_closeSystemDialogs:I = 0x62

.field static final TRANSACTION_convertFromTranslucent:I = 0xaf

.field static final TRANSACTION_convertToTranslucent:I = 0xb0

.field static final TRANSACTION_crashApplication:I = 0x73

.field static final TRANSACTION_createStackOnDisplay:I = 0xdd

.field static final TRANSACTION_createVirtualActivityContainer:I = 0xa9

.field static final TRANSACTION_dismissKeyguard:I = 0x125

.field static final TRANSACTION_dismissUserSwitchingDialog:I = 0x14f

.field static final TRANSACTION_dumpHeap:I = 0x79

.field static final TRANSACTION_dumpHeapFinished:I = 0xe4

.field static final TRANSACTION_enterPictureInPictureMode:I = 0x103

.field static final TRANSACTION_enterSafeMode:I = 0x3b

.field static final TRANSACTION_exitFreeformMode:I = 0xf7

.field static final TRANSACTION_finishActivity:I = 0x5

.field static final TRANSACTION_finishActivityAffinity:I = 0x95

.field static final TRANSACTION_finishHeavyWeightApp:I = 0x6e

.field static final TRANSACTION_finishInstrumentation:I = 0x24

.field static final TRANSACTION_finishReceiver:I = 0xa

.field static final TRANSACTION_finishSubActivity:I = 0x18

.field static final TRANSACTION_finishVoiceTask:I = 0xc9

.field static final TRANSACTION_forceStopPackage:I = 0x48

.field static final TRANSACTION_forceStopPackageByAdmin:I = 0x4a

.field static final TRANSACTION_getActivityClassForToken:I = 0x28

.field static final TRANSACTION_getActivityDisplayId:I = 0xba

.field static final TRANSACTION_getActivityOptions:I = 0xc5

.field static final TRANSACTION_getActivityStackId:I = 0xf6

.field static final TRANSACTION_getAllStackInfos:I = 0xac

.field static final TRANSACTION_getAppLockedCheckAction:I = 0x140

.field static final TRANSACTION_getAppLockedLockType:I = 0x13f

.field static final TRANSACTION_getAppLockedPackageList:I = 0x13b

.field static final TRANSACTION_getAppTaskThumbnailSize:I = 0xd3

.field static final TRANSACTION_getAppTasks:I = 0xc6

.field static final TRANSACTION_getAssistContextExtras:I = 0xa3

.field static final TRANSACTION_getCallingActivity:I = 0x10

.field static final TRANSACTION_getCallingPackage:I = 0xf

.field static final TRANSACTION_getConfiguration:I = 0x25

.field static final TRANSACTION_getContentProvider:I = 0x15

.field static final TRANSACTION_getContentProviderExternal:I = 0x8d

.field static final TRANSACTION_getCurrentUser:I = 0x91

.field static final TRANSACTION_getDeviceConfigurationInfo:I = 0x53

.field static final TRANSACTION_getDumpMemoryInfo:I = 0x115

.field static final TRANSACTION_getFocusedStackId:I = 0xde

.field static final TRANSACTION_getFrontActivityScreenCompatMode:I = 0x7d

.field static final TRANSACTION_getGrantedUriPermissions:I = 0x10a

.field static final TRANSACTION_getInfoForIntentSender:I = 0x5e

.field static final TRANSACTION_getIntentForIntentSender:I = 0xa2

.field static final TRANSACTION_getIntentSender:I = 0x36

.field static final TRANSACTION_getIsolatedProcessList:I = 0x144

.field static final TRANSACTION_getKidForIntentSender:I = 0x5d

.field static final TRANSACTION_getLastResumedActivityUserId:I = 0x12e

.field static final TRANSACTION_getLaunchedFromPackage:I = 0xa5

.field static final TRANSACTION_getLaunchedFromUid:I = 0x96

.field static final TRANSACTION_getLockTaskModeState:I = 0xe2

.field static final TRANSACTION_getMaxNumPictureInPictureActions:I = 0x105

.field static final TRANSACTION_getMemoryInfo:I = 0x45

.field static final TRANSACTION_getMemoryTrimLevel:I = 0x114

.field static final TRANSACTION_getMyMemoryState:I = 0x8f

.field static final TRANSACTION_getPackageAskScreenCompat:I = 0x81

.field static final TRANSACTION_getPackageForIntentSender:I = 0x38

.field static final TRANSACTION_getPackageForToken:I = 0x29

.field static final TRANSACTION_getPackageFromAppProcesses:I = 0x4b

.field static final TRANSACTION_getPackageProcessState:I = 0xe9

.field static final TRANSACTION_getPackageScreenCompatMode:I = 0x7f

.field static final TRANSACTION_getPersistedUriPermissions:I = 0xb7

.field static final TRANSACTION_getProcessLimit:I = 0x2b

.field static final TRANSACTION_getProcessMemoryInfo:I = 0x63

.field static final TRANSACTION_getProcessPss:I = 0x8a

.field static final TRANSACTION_getProcessesInErrorState:I = 0x46

.field static final TRANSACTION_getProviderMimeType:I = 0x74

.field static final TRANSACTION_getRecentTasks:I = 0x33

.field static final TRANSACTION_getRequestedOrientation:I = 0x40

.field static final TRANSACTION_getRequestedOrientationByTaskId:I = 0x14d

.field static final TRANSACTION_getResumedTaskBounds:I = 0x150

.field static final TRANSACTION_getResumedTaskThumbnail:I = 0x151

.field static final TRANSACTION_getRunningAppProcesses:I = 0x52

.field static final TRANSACTION_getRunningExternalApplications:I = 0x6d

.field static final TRANSACTION_getRunningServiceControlPanel:I = 0x19

.field static final TRANSACTION_getRunningUserIds:I = 0x9d

.field static final TRANSACTION_getServices:I = 0x4f

.field static final TRANSACTION_getStackInfo:I = 0xae

.field static final TRANSACTION_getTagForIntentSender:I = 0xbc

.field static final TRANSACTION_getTaskBounds:I = 0xb9

.field static final TRANSACTION_getTaskDescription:I = 0x51

.field static final TRANSACTION_getTaskDescriptionIcon:I = 0xd7

.field static final TRANSACTION_getTaskForActivity:I = 0x14

.field static final TRANSACTION_getTaskInfoFromTaskId:I = 0x136

.field static final TRANSACTION_getTaskSnapshot:I = 0x129

.field static final TRANSACTION_getTaskThumbnail:I = 0x50

.field static final TRANSACTION_getTasks:I = 0x11

.field static final TRANSACTION_getUidForIntentSender:I = 0x5c

.field static final TRANSACTION_getUidProcessState:I = 0xed

.field static final TRANSACTION_getUriPermissionOwnerForActivity:I = 0x107

.field static final TRANSACTION_grantUriPermission:I = 0x2e

.field static final TRANSACTION_grantUriPermissionFromOwner:I = 0x76

.field static final TRANSACTION_handleApplicationCrash:I = 0x2

.field static final TRANSACTION_handleApplicationStrictModeViolation:I = 0x6f

.field static final TRANSACTION_handleApplicationWtf:I = 0x67

.field static final TRANSACTION_handleIncomingUser:I = 0x5f

.field static final TRANSACTION_hang:I = 0xa8

.field static final TRANSACTION_inputDispatchingTimedOut:I = 0xa0

.field static final TRANSACTION_isAppForeground:I = 0x10c

.field static final TRANSACTION_isAppLockedPackage:I = 0x13d

.field static final TRANSACTION_isAppLockedVerifying:I = 0x142

.field static final TRANSACTION_isAppStartModeDisabled:I = 0xfe

.field static final TRANSACTION_isAssistDataAllowedOnCurrentActivity:I = 0xf0

.field static final TRANSACTION_isBackgroundVisibleBehind:I = 0xcc

.field static final TRANSACTION_isImmersive:I = 0x70

.field static final TRANSACTION_isInLockTaskMode:I = 0xc1

.field static final TRANSACTION_isInMultiWindowMode:I = 0x100

.field static final TRANSACTION_isInPictureInPictureMode:I = 0x101

.field static final TRANSACTION_isIntentSenderAnActivity:I = 0x98

.field static final TRANSACTION_isIntentSenderTargetedToPackage:I = 0x88

.field static final TRANSACTION_isRootVoiceInteraction:I = 0xf2

.field static final TRANSACTION_isTopActivityImmersive:I = 0x72

.field static final TRANSACTION_isTopOfTask:I = 0xca

.field static final TRANSACTION_isUserAMonkey:I = 0x69

.field static final TRANSACTION_isUserRunning:I = 0x7b

.field static final TRANSACTION_isVrModePackageEnabled:I = 0x117

.field static final TRANSACTION_keyguardGoingAway:I = 0xec

.field static final TRANSACTION_killAllBackgroundProcesses:I = 0x8c

.field static final TRANSACTION_killApplication:I = 0x61

.field static final TRANSACTION_killApplicationProcess:I = 0x64

.field static final TRANSACTION_killBackgroundProcesses:I = 0x68

.field static final TRANSACTION_killPackageDependents:I = 0x102

.field static final TRANSACTION_killPids:I = 0x4e

.field static final TRANSACTION_killProcessesBelowForeground:I = 0x90

.field static final TRANSACTION_killUid:I = 0xa6

.field static final TRANSACTION_launchAssistIntent:I = 0xd8

.field static final TRANSACTION_makePackageIdle:I = 0x113

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x44

.field static final TRANSACTION_moveStackToDisplay:I = 0x123

.field static final TRANSACTION_moveTaskBackwards:I = 0x13

.field static final TRANSACTION_moveTaskToBack:I = 0x137

.field static final TRANSACTION_moveTaskToBackWithBundle:I = 0x138

.field static final TRANSACTION_moveTaskToDockedStack:I = 0xf9

.field static final TRANSACTION_moveTaskToDockedStackForShowRecents:I = 0xfa

.field static final TRANSACTION_moveTaskToFront:I = 0x12

.field static final TRANSACTION_moveTaskToStack:I = 0xaa

.field static final TRANSACTION_moveTasksToFullscreenStack:I = 0xfc

.field static final TRANSACTION_moveTopActivityToPinnedStack:I = 0xfd

.field static final TRANSACTION_navigateUpTo:I = 0x93

.field static final TRANSACTION_newUriPermissionOwner:I = 0x75

.field static final TRANSACTION_noteAlarmFinish:I = 0xe8

.field static final TRANSACTION_noteAlarmStart:I = 0xe7

.field static final TRANSACTION_noteWakeupAlarm:I = 0x3d

.field static final TRANSACTION_notifyActivityDrawn:I = 0xb1

.field static final TRANSACTION_notifyCleartextNetwork:I = 0xdc

.field static final TRANSACTION_notifyEnterAnimationComplete:I = 0xd0

.field static final TRANSACTION_notifyLaunchTaskBehindComplete:I = 0xce

.field static final TRANSACTION_notifyLockedProfile:I = 0x119

.field static final TRANSACTION_notifyPinnedStackAnimationEnded:I = 0x111

.field static final TRANSACTION_notifyPinnedStackAnimationStarted:I = 0x110

.field static final TRANSACTION_openContentUri:I = 0x1

.field static final TRANSACTION_overridePendingTransition:I = 0x66

.field static final TRANSACTION_peekService:I = 0x54

.field static final TRANSACTION_performIdleMaintenance:I = 0xb4

.field static final TRANSACTION_positionTaskInStack:I = 0xf5

.field static final TRANSACTION_profileControl:I = 0x55

.field static final TRANSACTION_publishContentProviders:I = 0x16

.field static final TRANSACTION_publishService:I = 0x1e

.field static final TRANSACTION_queryRegisteredReceiverPackages:I = 0x139

.field static final TRANSACTION_reduceScreenAreaForPackage:I = 0x147

.field static final TRANSACTION_reduceScreenSideTouchArea:I = 0x149

.field static final TRANSACTION_refContentProvider:I = 0x17

.field static final TRANSACTION_registerIntentSenderCancelListener:I = 0x39

.field static final TRANSACTION_registerProcessObserver:I = 0x86

.field static final TRANSACTION_registerReceiver:I = 0x6

.field static final TRANSACTION_registerTaskStackListener:I = 0xdb

.field static final TRANSACTION_registerTaskWatcher:I = 0x134

.field static final TRANSACTION_registerUidObserver:I = 0xee

.field static final TRANSACTION_registerUserSwitchObserver:I = 0x9b

.field static final TRANSACTION_releaseActivityInstance:I = 0xd4

.field static final TRANSACTION_releasePersistableUriPermission:I = 0xb6

.field static final TRANSACTION_releaseSomeActivities:I = 0xd5

.field static final TRANSACTION_removeContentProvider:I = 0x3e

.field static final TRANSACTION_removeContentProviderExternal:I = 0x8e

.field static final TRANSACTION_removeStack:I = 0x112

.field static final TRANSACTION_removeTask:I = 0x85

.field static final TRANSACTION_reportActivityFullyDrawn:I = 0xb2

.field static final TRANSACTION_reportAssistContextExtras:I = 0xa4

.field static final TRANSACTION_reportSizeConfigurations:I = 0xf8

.field static final TRANSACTION_requestActivityRelaunch:I = 0x120

.field static final TRANSACTION_requestAssistContextExtras:I = 0xe0

.field static final TRANSACTION_requestAutofillData:I = 0x124

.field static final TRANSACTION_requestBugReport:I = 0x9e

.field static final TRANSACTION_requestTelephonyBugReport:I = 0x9f

.field static final TRANSACTION_requestVisibleBehind:I = 0xcb

.field static final TRANSACTION_requestWaitingForOccluding:I = 0x14e

.field static final TRANSACTION_resizeDockedStack:I = 0x108

.field static final TRANSACTION_resizePinnedStack:I = 0x116

.field static final TRANSACTION_resizeStack:I = 0xab

.field static final TRANSACTION_resizeTask:I = 0xe1

.field static final TRANSACTION_restart:I = 0xb3

.field static final TRANSACTION_restartUserInBackground:I = 0x126

.field static final TRANSACTION_resumeAppSwitches:I = 0x58

.field static final TRANSACTION_revokeUriPermission:I = 0x2f

.field static final TRANSACTION_revokeUriPermissionFromOwner:I = 0x77

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0x12a

.field static final TRANSACTION_semConvertFromTranslucent:I = 0x133

.field static final TRANSACTION_semRemoveTask:I = 0x132

.field static final TRANSACTION_sendControlInfo:I = 0x143

.field static final TRANSACTION_sendIdleJobTrigger:I = 0x11b

.field static final TRANSACTION_sendIntentSender:I = 0x11c

.field static final TRANSACTION_serviceDoneExecuting:I = 0x34

.field static final TRANSACTION_setActivityController:I = 0x30

.field static final TRANSACTION_setAlwaysFinish:I = 0x21

.field static final TRANSACTION_setAppLockedUnLockPackage:I = 0x13c

.field static final TRANSACTION_setAppLockedVerifying:I = 0x141

.field static final TRANSACTION_setBackgroundSurfaceEnabledForPackage:I = 0x14c

.field static final TRANSACTION_setCustomImageForPackage:I = 0x13a

.field static final TRANSACTION_setDebugApp:I = 0x20

.field static final TRANSACTION_setDisablePreviewScreenshots:I = 0x12d

.field static final TRANSACTION_setDssForPackage:I = 0x145

.field static final TRANSACTION_setDumpHeapDebugLimit:I = 0xe3

.field static final TRANSACTION_setFixedAspectRatioForPackage:I = 0x14a

.field static final TRANSACTION_setFocusedStack:I = 0xad

.field static final TRANSACTION_setFocusedTask:I = 0x84

.field static final TRANSACTION_setFrontActivityScreenCompatMode:I = 0x7e

.field static final TRANSACTION_setHasTopUi:I = 0x11f

.field static final TRANSACTION_setImmersive:I = 0x71

.field static final TRANSACTION_setLockScreenShown:I = 0x94

.field static final TRANSACTION_setNavbarIsAlwaysEnabledForPackage:I = 0x14b

.field static final TRANSACTION_setPackageAskScreenCompat:I = 0x82

.field static final TRANSACTION_setPackageScreenCompatMode:I = 0x80

.field static final TRANSACTION_setPersistentVrThread:I = 0x12b

.field static final TRANSACTION_setPictureInPictureParams:I = 0x104

.field static final TRANSACTION_setProcessImportant:I = 0x42

.field static final TRANSACTION_setProcessLimit:I = 0x2a

.field static final TRANSACTION_setProcessMemoryTrimLevel:I = 0xbb

.field static final TRANSACTION_setRenderThread:I = 0x11e

.field static final TRANSACTION_setRequestedOrientation:I = 0x3f

.field static final TRANSACTION_setServiceForeground:I = 0x43

.field static final TRANSACTION_setShowWhenLocked:I = 0x130

.field static final TRANSACTION_setTaskDescription:I = 0xc2

.field static final TRANSACTION_setTaskResizeable:I = 0xdf

.field static final TRANSACTION_setTurnScreenOn:I = 0x131

.field static final TRANSACTION_setUserIsMonkey:I = 0xa7

.field static final TRANSACTION_setVoiceKeepAwake:I = 0xe5

.field static final TRANSACTION_setVrMode:I = 0x109

.field static final TRANSACTION_setVrThread:I = 0x11d

.field static final TRANSACTION_shouldUpRecreateTask:I = 0x92

.field static final TRANSACTION_showAllDSSInfo:I = 0x146

.field static final TRANSACTION_showAssistFromActivity:I = 0xf1

.field static final TRANSACTION_showBootMessage:I = 0x8b

.field static final TRANSACTION_showLockTaskEscapeMessage:I = 0xea

.field static final TRANSACTION_showWaitingForDebugger:I = 0x31

.field static final TRANSACTION_shutdown:I = 0x56

.field static final TRANSACTION_signalPersistentProcesses:I = 0x32

.field static final TRANSACTION_startActivities:I = 0x7a

.field static final TRANSACTION_startActivity:I = 0x3

.field static final TRANSACTION_startActivityAndWait:I = 0x6a

.field static final TRANSACTION_startActivityAsCaller:I = 0xd1

.field static final TRANSACTION_startActivityAsUser:I = 0x99

.field static final TRANSACTION_startActivityFromRecents:I = 0xcf

.field static final TRANSACTION_startActivityIntentSender:I = 0x65

.field static final TRANSACTION_startActivityWithConfig:I = 0x6c

.field static final TRANSACTION_startAssistantActivity:I = 0xc4

.field static final TRANSACTION_startBinderTracking:I = 0xf3

.field static final TRANSACTION_startConfirmDeviceCredentialIntent:I = 0x11a

.field static final TRANSACTION_startInPlaceAnimationOnFrontMostApplication:I = 0xd9

.field static final TRANSACTION_startInstrumentation:I = 0x22

.field static final TRANSACTION_startLocalVoiceInteraction:I = 0x10d

.field static final TRANSACTION_startLockTaskModeById:I = 0xbe

.field static final TRANSACTION_startLockTaskModeByToken:I = 0xbf

.field static final TRANSACTION_startNextMatchingActivity:I = 0x3c

.field static final TRANSACTION_startService:I = 0x1a

.field static final TRANSACTION_startSystemLockTaskMode:I = 0xc7

.field static final TRANSACTION_startUserInBackground:I = 0xbd

.field static final TRANSACTION_startVoiceActivity:I = 0xc3

.field static final TRANSACTION_stopAppSwitches:I = 0x57

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0xf4

.field static final TRANSACTION_stopLocalVoiceInteraction:I = 0x10e

.field static final TRANSACTION_stopLockTaskMode:I = 0xc0

.field static final TRANSACTION_stopService:I = 0x1b

.field static final TRANSACTION_stopServiceToken:I = 0x27

.field static final TRANSACTION_stopSystemLockTaskMode:I = 0xc8

.field static final TRANSACTION_stopUser:I = 0x9a

.field static final TRANSACTION_supportsLocalVoiceInteraction:I = 0x10f

.field static final TRANSACTION_suppressResizeConfigChanges:I = 0xfb

.field static final TRANSACTION_swapDockedAndFullscreenStack:I = 0x118

.field static final TRANSACTION_switchUser:I = 0x83

.field static final TRANSACTION_takePersistableUriPermission:I = 0xb5

.field static final TRANSACTION_unbindBackupAgent:I = 0x5b

.field static final TRANSACTION_unbindFinished:I = 0x41

.field static final TRANSACTION_unbindService:I = 0x1d

.field static final TRANSACTION_unbroadcastIntent:I = 0x9

.field static final TRANSACTION_unhandledBack:I = 0x4

.field static final TRANSACTION_unlockUser:I = 0xff

.field static final TRANSACTION_unregisterIntentSenderCancelListener:I = 0x3a

.field static final TRANSACTION_unregisterProcessObserver:I = 0x87

.field static final TRANSACTION_unregisterReceiver:I = 0x7

.field static final TRANSACTION_unregisterTaskStackListener:I = 0x122

.field static final TRANSACTION_unregisterTaskWatcher:I = 0x135

.field static final TRANSACTION_unregisterUidObserver:I = 0xef

.field static final TRANSACTION_unregisterUserSwitchObserver:I = 0x9c

.field static final TRANSACTION_unstableProviderDied:I = 0x97

.field static final TRANSACTION_updateConfiguration:I = 0x26

.field static final TRANSACTION_updateDeviceOwner:I = 0xeb

.field static final TRANSACTION_updateDisplayOverrideConfiguration:I = 0x121

.field static final TRANSACTION_updateLockTaskPackages:I = 0xe6

.field static final TRANSACTION_updatePersistentConfiguration:I = 0x89

.field static final TRANSACTION_waitForNetworkStateUpdate:I = 0x12c

.field static final TRANSACTION_willActivityBeVisible:I = 0x6b


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/app/IActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 264
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    sparse-switch v0, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v248

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v248, :cond_0

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v248

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v6, 0x1

    return v6

    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v197

    check-cast v197, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v197

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_1
    const/16 v197, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_4
    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v16}, Landroid/app/IActivityManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    goto :goto_4

    :sswitch_4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->unhandledBack()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/app/IActivityManager$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :sswitch_6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/IntentFilter;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v17, p0

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v24, v13

    invoke-virtual/range {v17 .. v24}, Landroid/app/IActivityManager$Stub;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v238

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v238, :cond_8

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v238

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/4 v6, 0x1

    return v6

    :cond_7
    const/16 v21, 0x0

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v184

    move-object/from16 v0, p0

    move-object/from16 v1, v184

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/Bundle;

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    const/16 v35, 0x1

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    const/16 v36, 0x1

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    move-object/from16 v24, p0

    move-object/from16 v25, v7

    move-object/from16 v30, v12

    move-object/from16 v34, v16

    invoke-virtual/range {v24 .. v37}, Landroid/app/IActivityManager$Stub;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_9
    const/16 v26, 0x0

    goto :goto_9

    :cond_a
    const/16 v31, 0x0

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    goto :goto_b

    :cond_c
    const/16 v35, 0x0

    goto :goto_c

    :cond_d
    const/16 v36, 0x0

    goto :goto_d

    :sswitch_9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v60

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/IActivityManager$Stub;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_e
    const/16 v26, 0x0

    goto :goto_e

    :sswitch_a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/os/Bundle;

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    const/16 v43, 0x1

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    move-object/from16 v38, p0

    move-object/from16 v41, v27

    move/from16 v44, v23

    invoke-virtual/range {v38 .. v44}, Landroid/app/IActivityManager$Stub;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    const/4 v6, 0x1

    return v6

    :cond_f
    const/16 v42, 0x0

    goto :goto_f

    :cond_10
    const/16 v43, 0x0

    goto :goto_10

    :sswitch_b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IActivityManager$Stub;->attachApplication(Landroid/app/IApplicationThread;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v201

    check-cast v201, Landroid/content/res/Configuration;

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/16 v96, 0x1

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v201

    move/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    const/4 v6, 0x1

    return v6

    :cond_11
    const/16 v201, 0x0

    goto :goto_11

    :cond_12
    const/16 v96, 0x0

    goto :goto_12

    :sswitch_d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->activityPaused(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/os/Bundle;

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v215

    check-cast v215, Landroid/os/PersistableBundle;

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v223

    check-cast v223, Ljava/lang/CharSequence;

    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v129

    move-object/from16 v3, v215

    move-object/from16 v4, v223

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    return v6

    :cond_13
    const/16 v129, 0x0

    goto :goto_13

    :cond_14
    const/16 v215, 0x0

    goto :goto_14

    :cond_15
    const/16 v223, 0x0

    goto :goto_15

    :sswitch_f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v249

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_10
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v236

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v236, :cond_16

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v236

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_16
    const/4 v6, 0x1

    return v6

    :cond_16
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    :sswitch_11
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTasks(II)Ljava/util/List;

    move-result-object v253

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v253

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_12
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v144

    check-cast v144, Landroid/os/Bundle;

    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    move-object/from16 v3, v144

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->moveTaskToFront(IILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_17
    const/16 v144, 0x0

    goto :goto_17

    :sswitch_13
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->moveTaskBackwards(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_14
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    const/16 v206, 0x1

    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_18
    const/16 v206, 0x0

    goto :goto_18

    :sswitch_15
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    const/16 v48, 0x1

    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v60

    move/from16 v2, v48

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/app/IActivityManager$Stub;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v232

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v232, :cond_1a

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v232

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a
    const/4 v6, 0x1

    return v6

    :cond_19
    const/16 v48, 0x0

    goto :goto_19

    :cond_1a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    :sswitch_16
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    sget-object v6, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v205

    move-object/from16 v0, p0

    move-object/from16 v1, v205

    invoke-virtual {v0, v7, v1}, Landroid/app/IActivityManager$Stub;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_17
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_1b

    const/4 v6, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_1b
    const/4 v6, 0x0

    goto :goto_1b

    :sswitch_18
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v60

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/IActivityManager$Stub;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_19
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ComponentName;

    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v234

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v234, :cond_1d

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v234

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1d
    const/4 v6, 0x1

    return v6

    :cond_1c
    const/16 v58, 0x0

    goto :goto_1c

    :cond_1d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    :sswitch_1a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    const/16 v48, 0x1

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    move-object/from16 v44, p0

    move-object/from16 v45, v7

    move-object/from16 v46, v26

    move-object/from16 v47, v27

    move-object/from16 v49, v22

    move/from16 v50, v23

    invoke-virtual/range {v44 .. v50}, Landroid/app/IActivityManager$Stub;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v236

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v236, :cond_20

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v236

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_20
    const/4 v6, 0x1

    return v6

    :cond_1e
    const/16 v26, 0x0

    goto :goto_1e

    :cond_1f
    const/16 v48, 0x0

    goto :goto_1f

    :cond_20
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    :sswitch_1b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v70

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_21
    const/16 v26, 0x0

    goto :goto_21

    :sswitch_1c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v51

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v54

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v49, p0

    move-object/from16 v50, v7

    move-object/from16 v52, v9

    move-object/from16 v53, v10

    move/from16 v55, v23

    move/from16 v57, v14

    invoke-virtual/range {v49 .. v57}, Landroid/app/IActivityManager$Stub;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_22
    const/4 v9, 0x0

    goto :goto_22

    :sswitch_1d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v180

    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_23

    const/4 v6, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_23
    const/4 v6, 0x0

    goto :goto_23

    :sswitch_1e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v80

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move-object/from16 v3, v80

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_24
    const/16 v26, 0x0

    goto :goto_24

    :sswitch_1f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->activityResumed(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_20
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/16 v206, 0x1

    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_26

    const/16 v96, 0x1

    :goto_26
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v206

    move/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setDebugApp(Ljava/lang/String;ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_25
    const/16 v206, 0x0

    goto :goto_25

    :cond_26
    const/16 v96, 0x0

    goto :goto_26

    :sswitch_21
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    const/16 v193, 0x1

    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setAlwaysFinish(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_27
    const/16 v193, 0x0

    goto :goto_27

    :sswitch_22
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ComponentName;

    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/os/Bundle;

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v62

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v63

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v57, p0

    move-object/from16 v59, v8

    move-object/from16 v61, v42

    move/from16 v64, v13

    invoke-virtual/range {v57 .. v65}, Landroid/app/IActivityManager$Stub;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_2a

    const/4 v6, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_28
    const/16 v58, 0x0

    goto :goto_28

    :cond_29
    const/16 v42, 0x0

    goto :goto_29

    :cond_2a
    const/4 v6, 0x0

    goto :goto_2a

    :sswitch_23
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/os/Bundle;

    :goto_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v129

    invoke-virtual {v0, v7, v1}, Landroid/app/IActivityManager$Stub;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_2b
    const/16 v129, 0x0

    goto :goto_2b

    :sswitch_24
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v144

    check-cast v144, Landroid/os/Bundle;

    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v144

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/IActivityManager$Stub;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_2c
    const/16 v144, 0x0

    goto :goto_2c

    :sswitch_25
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v242

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v242, :cond_2d

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v242

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2d
    const/4 v6, 0x1

    return v6

    :cond_2d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    :sswitch_26
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v186

    check-cast v186, Landroid/content/res/Configuration;

    :goto_2e
    move-object/from16 v0, p0

    move-object/from16 v1, v186

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_2f

    const/4 v6, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_2e
    const/16 v186, 0x0

    goto :goto_2e

    :cond_2f
    const/4 v6, 0x0

    goto :goto_2f

    :sswitch_27
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ComponentName;

    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v51

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v51

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_31

    const/4 v6, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_30
    const/16 v58, 0x0

    goto :goto_30

    :cond_31
    const/4 v6, 0x0

    goto :goto_31

    :sswitch_28
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v236

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v236, :cond_32

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v236

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_32
    const/4 v6, 0x1

    return v6

    :cond_32
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    :sswitch_29
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v249

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_2a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setProcessLimit(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_2b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getProcessLimit()I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_2c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->checkPermission(Ljava/lang/String;II)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_2d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/net/Uri;

    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    move-object/from16 v66, p0

    move/from16 v68, v40

    move/from16 v69, v60

    move/from16 v71, v29

    invoke-virtual/range {v66 .. v72}, Landroid/app/IActivityManager$Stub;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_33
    const/16 v67, 0x0

    goto :goto_33

    :sswitch_2e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/net/Uri;

    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    move-object/from16 v73, p0

    move-object/from16 v74, v7

    move-object/from16 v75, v8

    move/from16 v77, v70

    move/from16 v78, v29

    invoke-virtual/range {v73 .. v78}, Landroid/app/IActivityManager$Stub;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_34
    const/16 v76, 0x0

    goto :goto_34

    :sswitch_2f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/net/Uri;

    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    move-object/from16 v73, p0

    move-object/from16 v74, v7

    move-object/from16 v75, v8

    move/from16 v77, v70

    move/from16 v78, v29

    invoke-virtual/range {v73 .. v78}, Landroid/app/IActivityManager$Stub;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_35
    const/16 v76, 0x0

    goto :goto_35

    :sswitch_30
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v178

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v206, 0x1

    :goto_36
    move-object/from16 v0, p0

    move-object/from16 v1, v178

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_36
    const/16 v206, 0x0

    goto :goto_36

    :sswitch_31
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    const/16 v206, 0x1

    :goto_37
    move-object/from16 v0, p0

    move/from16 v1, v206

    invoke-virtual {v0, v7, v1}, Landroid/app/IActivityManager$Stub;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_37
    const/16 v206, 0x0

    goto :goto_37

    :sswitch_32
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->signalPersistentProcesses(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_33
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v240

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v240, :cond_38

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v240

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_38
    const/4 v6, 0x1

    return v6

    :cond_38
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    :sswitch_34
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v60

    move/from16 v4, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    const/4 v6, 0x1

    return v6

    :sswitch_35
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->activityDestroyed(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :sswitch_36
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v83

    check-cast v83, [Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v84

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_39

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/os/Bundle;

    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    move-object/from16 v77, p0

    move-object/from16 v79, v8

    move-object/from16 v81, v10

    move/from16 v82, v29

    move/from16 v85, v14

    invoke-virtual/range {v77 .. v87}, Landroid/app/IActivityManager$Stub;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v237

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v237, :cond_3a

    invoke-interface/range {v237 .. v237}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :cond_39
    const/16 v86, 0x0

    goto :goto_39

    :cond_3a
    const/4 v6, 0x0

    goto :goto_3a

    :sswitch_37
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->cancelIntentSender(Landroid/content/IIntentSender;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_38
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v249

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_39
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v143

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move-object/from16 v2, v143

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_3a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v143

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move-object/from16 v2, v143

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_3b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->enterSafeMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_3c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v144

    check-cast v144, Landroid/os/Bundle;

    :goto_3c
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move-object/from16 v3, v144

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_3d

    const/4 v6, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_3b
    const/16 v26, 0x0

    goto :goto_3b

    :cond_3c
    const/16 v144, 0x0

    goto :goto_3c

    :cond_3d
    const/4 v6, 0x0

    goto :goto_3d

    :sswitch_3d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v40

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/IActivityManager$Stub;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_3e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    const/16 v206, 0x1

    :goto_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeContentProvider(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_3e
    const/16 v206, 0x0

    goto :goto_3e

    :sswitch_3f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_40
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_41
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    const/16 v96, 0x1

    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_3f
    const/16 v26, 0x0

    goto :goto_3f

    :cond_40
    const/16 v96, 0x0

    goto :goto_40

    :sswitch_42
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    const/16 v96, 0x1

    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/IActivityManager$Stub;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_41
    const/16 v96, 0x0

    goto :goto_41

    :sswitch_43
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ComponentName;

    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v51

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Landroid/app/Notification;

    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    move-object/from16 v88, p0

    move-object/from16 v89, v58

    move-object/from16 v90, v51

    move/from16 v91, v60

    move/from16 v93, v29

    invoke-virtual/range {v88 .. v93}, Landroid/app/IActivityManager$Stub;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_42
    const/16 v58, 0x0

    goto :goto_42

    :cond_43
    const/16 v92, 0x0

    goto :goto_43

    :sswitch_44
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    const/16 v206, 0x1

    :goto_44
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_45

    const/4 v6, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_44
    const/16 v206, 0x0

    goto :goto_44

    :cond_45
    const/4 v6, 0x0

    goto :goto_45

    :sswitch_45
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v154, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v154 .. v154}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v154, :cond_46

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v154

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_46
    const/4 v6, 0x1

    return v6

    :cond_46
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_46

    :sswitch_46
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v250

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v250

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_47
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v200

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v200

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_47

    const/4 v6, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_47
    const/4 v6, 0x0

    goto :goto_47

    :sswitch_48
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->forceStopPackage(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_49
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->clearRecentTasks(I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_48

    const/4 v6, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_48
    const/4 v6, 0x0

    goto :goto_48

    :sswitch_4a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->forceStopPackageByAdmin(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_4b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v249

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_4c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v93, p0

    move/from16 v95, v40

    move-object/from16 v96, v27

    move/from16 v97, v70

    move-object/from16 v98, v22

    invoke-virtual/range {v93 .. v98}, Landroid/app/IActivityManager$Stub;->checkKnoxPermissionByPKG(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_49

    const/4 v6, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_49
    const/4 v6, 0x0

    goto :goto_49

    :sswitch_4d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v95, p0

    move/from16 v96, v78

    move/from16 v97, v40

    move-object/from16 v98, v27

    move/from16 v99, v70

    move-object/from16 v100, v22

    invoke-virtual/range {v95 .. v100}, Landroid/app/IActivityManager$Stub;->checkKnoxPermission(IILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_4a

    const/4 v6, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_4a
    const/4 v6, 0x0

    goto :goto_4a

    :sswitch_4e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v194

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/16 v96, 0x1

    :goto_4b
    move-object/from16 v0, p0

    move-object/from16 v1, v194

    move/from16 v2, v96

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/IActivityManager$Stub;->killPids([ILjava/lang/String;Z)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_4c

    const/4 v6, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_4b
    const/16 v96, 0x0

    goto :goto_4b

    :cond_4c
    const/4 v6, 0x0

    goto :goto_4c

    :sswitch_4f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getServices(II)Ljava/util/List;

    move-result-object v252

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v252

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_50
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v231

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v231, :cond_4d

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v231

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4d
    const/4 v6, 0x1

    return v6

    :cond_4d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4d

    :sswitch_51
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v229

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v229, :cond_4e

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v229

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4e
    const/4 v6, 0x1

    return v6

    :cond_4e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4e

    :sswitch_52
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v251

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v251

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_53
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v239

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v239, :cond_4f

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v239

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4f
    const/4 v6, 0x1

    return v6

    :cond_4f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4f

    :sswitch_54
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v134

    check-cast v134, Landroid/content/Intent;

    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/IActivityManager$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v247

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v247

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :cond_50
    const/16 v134, 0x0

    goto :goto_50

    :sswitch_55
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/16 v96, 0x1

    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/app/ProfilerInfo;

    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    move-object/from16 v93, p0

    move/from16 v95, v40

    move/from16 v98, v29

    invoke-virtual/range {v93 .. v98}, Landroid/app/IActivityManager$Stub;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_53

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_51
    const/16 v96, 0x0

    goto :goto_51

    :cond_52
    const/16 v97, 0x0

    goto :goto_52

    :cond_53
    const/4 v6, 0x0

    goto :goto_53

    :sswitch_56
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->shutdown(I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_54

    const/4 v6, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_54
    const/4 v6, 0x0

    goto :goto_54

    :sswitch_57
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_58
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->resumeAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_59
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_55

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_55
    const/4 v6, 0x0

    goto :goto_55

    :sswitch_5a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_5b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v185

    check-cast v185, Landroid/content/pm/ApplicationInfo;

    :goto_56
    move-object/from16 v0, p0

    move-object/from16 v1, v185

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_56
    const/16 v185, 0x0

    goto :goto_56

    :sswitch_5c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_5d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_5e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v238

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v238, :cond_57

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v238

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_57
    const/4 v6, 0x1

    return v6

    :cond_57
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_57

    :sswitch_5f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    const/16 v48, 0x1

    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_59

    const/16 v43, 0x1

    :goto_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v98, p0

    move/from16 v99, v78

    move/from16 v100, v40

    move/from16 v101, v60

    move/from16 v102, v48

    move/from16 v103, v43

    move-object/from16 v104, v12

    move-object/from16 v105, v56

    invoke-virtual/range {v98 .. v105}, Landroid/app/IActivityManager$Stub;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_58
    const/16 v48, 0x0

    goto :goto_58

    :cond_59
    const/16 v43, 0x0

    goto :goto_59

    :sswitch_60
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->addPackageDependency(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_61
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/IActivityManager$Stub;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_62
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_63
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v194

    move-object/from16 v0, p0

    move-object/from16 v1, v194

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    move-object/16 v262, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v262

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v6, 0x1

    return v6

    :sswitch_64
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killApplicationProcess(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_65
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v100

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5a

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/Intent;

    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v72

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5b

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Landroid/os/Bundle;

    :goto_5b
    move-object/from16 v98, p0

    move-object/from16 v99, v7

    move-object/from16 v101, v80

    move-object/from16 v103, v22

    move-object/from16 v104, v72

    move-object/from16 v105, v56

    move/from16 v106, v14

    move/from16 v107, v33

    move/from16 v108, v87

    invoke-virtual/range {v98 .. v109}, Landroid/app/IActivityManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_5a
    const/16 v102, 0x0

    goto :goto_5a

    :cond_5b
    const/16 v109, 0x0

    goto :goto_5b

    :sswitch_66
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v60

    move/from16 v3, v70

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/app/IActivityManager$Stub;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_67
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5c

    const/16 v96, 0x1

    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5d

    sget-object v6, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v220

    check-cast v220, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    :goto_5d
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v96

    move-object/from16 v3, v220

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/app/IActivityManager$Stub;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_5e

    const/4 v6, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_5c
    const/16 v96, 0x0

    goto :goto_5c

    :cond_5d
    const/16 v220, 0x0

    goto :goto_5d

    :cond_5e
    const/4 v6, 0x0

    goto :goto_5e

    :sswitch_68
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killBackgroundProcesses(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_69
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isUserAMonkey()Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_5f

    const/4 v6, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_5f
    const/4 v6, 0x0

    goto :goto_5f

    :sswitch_6a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_60

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_61

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_62

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v17}, Landroid/app/IActivityManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v235

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v235, :cond_63

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v235

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_63
    const/4 v6, 0x1

    return v6

    :cond_60
    const/4 v9, 0x0

    goto :goto_60

    :cond_61
    const/4 v15, 0x0

    goto :goto_61

    :cond_62
    const/16 v16, 0x0

    goto :goto_62

    :cond_63
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_63

    :sswitch_6b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_64

    const/4 v6, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_64
    const/4 v6, 0x0

    goto :goto_64

    :sswitch_6c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_65

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    :goto_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v119

    check-cast v119, Landroid/content/res/Configuration;

    :goto_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v110, p0

    move-object/from16 v111, v7

    move-object/from16 v112, v8

    move-object/from16 v113, v9

    move-object/from16 v114, v10

    move-object/from16 v115, v11

    move-object/from16 v116, v12

    move/from16 v117, v13

    move/from16 v118, v14

    move-object/from16 v120, v16

    move/from16 v121, v17

    invoke-virtual/range {v110 .. v121}, Landroid/app/IActivityManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_65
    const/4 v9, 0x0

    goto :goto_65

    :cond_66
    const/16 v119, 0x0

    goto :goto_66

    :cond_67
    const/16 v16, 0x0

    goto :goto_67

    :sswitch_6d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v255

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v255

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_6e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->finishHeavyWeightApp()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_6f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    sget-object v6, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v216

    check-cast v216, Landroid/os/StrictMode$ViolationInfo;

    :goto_68
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, v216

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_68
    const/16 v216, 0x0

    goto :goto_68

    :sswitch_70
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_69

    const/4 v6, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_69
    const/4 v6, 0x0

    goto :goto_69

    :sswitch_71
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    const/16 v206, 0x1

    :goto_6a
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setImmersive(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_6a
    const/16 v206, 0x0

    goto :goto_6a

    :sswitch_72
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_6b

    const/4 v6, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_6b
    const/4 v6, 0x0

    goto :goto_6b

    :sswitch_73
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v103, p0

    move/from16 v104, v78

    move/from16 v105, v40

    move-object/from16 v106, v27

    move/from16 v107, v70

    move-object/from16 v108, v22

    invoke-virtual/range {v103 .. v108}, Landroid/app/IActivityManager$Stub;->crashApplication(IILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_74
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/net/Uri;

    :goto_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v249

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_6c
    const/16 v67, 0x0

    goto :goto_6c

    :sswitch_75
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v247

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v247

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :sswitch_76
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/net/Uri;

    :goto_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v110, p0

    move-object/from16 v111, v39

    move/from16 v112, v40

    move-object/from16 v113, v27

    move/from16 v115, v29

    move/from16 v116, v23

    move/from16 v117, v13

    invoke-virtual/range {v110 .. v117}, Landroid/app/IActivityManager$Stub;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_6d
    const/16 v114, 0x0

    goto :goto_6d

    :sswitch_77
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6e

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v202

    check-cast v202, Landroid/net/Uri;

    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v202

    move/from16 v3, v60

    move/from16 v4, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_6e
    const/16 v202, 0x0

    goto :goto_6e

    :sswitch_78
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6f

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/net/Uri;

    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    move-object/from16 v103, p0

    move/from16 v104, v78

    move-object/from16 v105, v8

    move-object/from16 v106, v76

    move/from16 v107, v70

    move/from16 v108, v29

    invoke-virtual/range {v103 .. v108}, Landroid/app/IActivityManager$Stub;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_6f
    const/16 v76, 0x0

    goto :goto_6f

    :sswitch_79
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_70

    const/16 v96, 0x1

    :goto_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_71

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v108

    check-cast v108, Landroid/os/ParcelFileDescriptor;

    :goto_71
    move-object/from16 v103, p0

    move-object/from16 v104, v94

    move/from16 v105, v40

    move/from16 v106, v96

    move-object/from16 v107, v10

    invoke-virtual/range {v103 .. v108}, Landroid/app/IActivityManager$Stub;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_72

    const/4 v6, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_70
    const/16 v96, 0x0

    goto :goto_70

    :cond_71
    const/16 v108, 0x0

    goto :goto_71

    :cond_72
    const/4 v6, 0x0

    goto :goto_72

    :sswitch_7a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v123

    check-cast v123, [Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v124

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_73

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v126

    check-cast v126, Landroid/os/Bundle;

    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v120, p0

    move-object/from16 v121, v7

    move-object/from16 v122, v8

    move-object/from16 v125, v11

    move/from16 v127, v13

    invoke-virtual/range {v120 .. v127}, Landroid/app/IActivityManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_73
    const/16 v126, 0x0

    goto :goto_73

    :sswitch_7b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->isUserRunning(II)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_74

    const/4 v6, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_74
    const/4 v6, 0x0

    goto :goto_74

    :sswitch_7c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->activitySlept(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :sswitch_7d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_7e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setFrontActivityScreenCompatMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_7f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_80
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_81
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_75

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_75
    const/4 v6, 0x0

    goto :goto_75

    :sswitch_82
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_76

    const/16 v206, 0x1

    :goto_76
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_76
    const/16 v206, 0x0

    goto :goto_76

    :sswitch_83
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->switchUser(I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_77

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_77
    const/4 v6, 0x0

    goto :goto_77

    :sswitch_84
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setFocusedTask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_85
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->removeTask(I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_78

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_78
    const/4 v6, 0x0

    goto :goto_78

    :sswitch_86
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v179

    move-object/from16 v0, p0

    move-object/from16 v1, v179

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_87
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v179

    move-object/from16 v0, p0

    move-object/from16 v1, v179

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_88
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_79

    const/4 v6, 0x1

    :goto_79
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_79
    const/4 v6, 0x0

    goto :goto_79

    :sswitch_89
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7a

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v186

    check-cast v186, Landroid/content/res/Configuration;

    :goto_7a
    move-object/from16 v0, p0

    move-object/from16 v1, v186

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_7a
    const/16 v186, 0x0

    goto :goto_7a

    :sswitch_8a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v194

    move-object/from16 v0, p0

    move-object/from16 v1, v194

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getProcessPss([I)[J

    move-result-object v0

    move-object/16 v261, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v261

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    const/4 v6, 0x1

    return v6

    :sswitch_8b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7b

    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v191

    check-cast v191, Ljava/lang/CharSequence;

    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7c

    const/16 v206, 0x1

    :goto_7c
    move-object/from16 v0, p0

    move-object/from16 v1, v191

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->showBootMessage(Ljava/lang/CharSequence;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_7b
    const/16 v191, 0x0

    goto :goto_7b

    :cond_7c
    const/16 v206, 0x0

    goto :goto_7c

    :sswitch_8c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->killAllBackgroundProcesses()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_8d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v80

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    move-object/from16 v3, v80

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/ContentProviderHolder;

    move-result-object v232

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v232, :cond_7d

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v232

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7d
    const/4 v6, 0x1

    return v6

    :cond_7d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7d

    :sswitch_8e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_8f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v175, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v175 .. v175}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v175, :cond_7e

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v175

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7e
    const/4 v6, 0x1

    return v6

    :cond_7e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7e

    :sswitch_90
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_7f

    const/4 v6, 0x1

    :goto_7f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_7f
    const/4 v6, 0x0

    goto :goto_7f

    :sswitch_91
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v241

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v241, :cond_80

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v241

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_80
    const/4 v6, 0x1

    return v6

    :cond_80
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_80

    :sswitch_92
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_81

    const/4 v6, 0x1

    :goto_81
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_81
    const/4 v6, 0x0

    goto :goto_81

    :sswitch_93
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_82

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_83

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/Intent;

    :goto_83
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move/from16 v3, v60

    move-object/from16 v4, v102

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_84

    const/4 v6, 0x1

    :goto_84
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_82
    const/16 v26, 0x0

    goto :goto_82

    :cond_83
    const/16 v102, 0x0

    goto :goto_83

    :cond_84
    const/4 v6, 0x0

    goto :goto_84

    :sswitch_94
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_85

    const/16 v193, 0x1

    :goto_85
    move-object/from16 v0, p0

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setLockScreenShown(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_85
    const/16 v193, 0x0

    goto :goto_85

    :sswitch_95
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_86

    const/4 v6, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_86
    const/4 v6, 0x0

    goto :goto_86

    :sswitch_96
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_97
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_98
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_87

    const/4 v6, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_87
    const/4 v6, 0x0

    goto :goto_87

    :sswitch_99
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_88

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    :goto_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_89

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    :goto_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8a

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v17}, Landroid/app/IActivityManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_88
    const/4 v9, 0x0

    goto :goto_88

    :cond_89
    const/4 v15, 0x0

    goto :goto_89

    :cond_8a
    const/16 v16, 0x0

    goto :goto_8a

    :sswitch_9a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8b

    const/16 v206, 0x1

    :goto_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v212

    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v206

    move-object/from16 v3, v212

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_8b
    const/16 v206, 0x0

    goto :goto_8b

    :sswitch_9b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v183

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_9c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v183

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_9d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningUserIds()[I

    move-result-object v0

    move-object/16 v260, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v260

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v6, 0x1

    return v6

    :sswitch_9e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->requestBugReport(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_9f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_a0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8c

    const/16 v206, 0x1

    :goto_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v206

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v226

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v226

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v6, 0x1

    return v6

    :cond_8c
    const/16 v206, 0x0

    goto :goto_8c

    :sswitch_a1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->clearPendingBackup()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_a2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v238

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v238, :cond_8d

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v238

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8d
    const/4 v6, 0x1

    return v6

    :cond_8d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8d

    :sswitch_a3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v246

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v246, :cond_8e

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v246

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8e
    const/4 v6, 0x1

    return v6

    :cond_8e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8e

    :sswitch_a4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8f

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/os/Bundle;

    :goto_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_90

    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/app/assist/AssistStructure;

    :goto_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_91

    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v131

    check-cast v131, Landroid/app/assist/AssistContent;

    :goto_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_92

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v132

    check-cast v132, Landroid/net/Uri;

    :goto_92
    move-object/from16 v127, p0

    move-object/from16 v128, v39

    invoke-virtual/range {v127 .. v132}, Landroid/app/IActivityManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_8f
    const/16 v129, 0x0

    goto :goto_8f

    :cond_90
    const/16 v130, 0x0

    goto :goto_90

    :cond_91
    const/16 v131, 0x0

    goto :goto_91

    :cond_92
    const/16 v132, 0x0

    goto :goto_92

    :sswitch_a5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v249

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_a6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killUid(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_a7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_93

    const/16 v193, 0x1

    :goto_93
    move-object/from16 v0, p0

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setUserIsMonkey(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_93
    const/16 v193, 0x0

    goto :goto_93

    :sswitch_a8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_94

    const/16 v206, 0x1

    :goto_94
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->hang(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_94
    const/16 v206, 0x0

    goto :goto_94

    :sswitch_a9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v198

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v198

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v233

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v233, :cond_95

    invoke-interface/range {v233 .. v233}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_95
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :cond_95
    const/4 v6, 0x0

    goto :goto_95

    :sswitch_aa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_96

    const/16 v96, 0x1

    :goto_96
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    move/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->moveTaskToStack(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_96
    const/16 v96, 0x0

    goto :goto_96

    :sswitch_ab
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_97

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/graphics/Rect;

    :goto_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_98

    const/16 v96, 0x1

    :goto_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_99

    const/16 v48, 0x1

    :goto_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9a

    const/16 v43, 0x1

    :goto_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    move-object/from16 v44, p0

    move/from16 v45, v78

    move/from16 v47, v96

    move/from16 v49, v43

    move/from16 v50, v23

    invoke-virtual/range {v44 .. v50}, Landroid/app/IActivityManager$Stub;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_97
    const/16 v46, 0x0

    goto :goto_97

    :cond_98
    const/16 v96, 0x0

    goto :goto_98

    :cond_99
    const/16 v48, 0x0

    goto :goto_99

    :cond_9a
    const/16 v43, 0x0

    goto :goto_9a

    :sswitch_ac
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAllStackInfos()Ljava/util/List;

    move-result-object v254

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v254

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_ad
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setFocusedStack(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_ae
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v228

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v228, :cond_9b

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v228

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9b
    const/4 v6, 0x1

    return v6

    :cond_9b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9b

    :sswitch_af
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_9c

    const/4 v6, 0x1

    :goto_9c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_9c
    const/4 v6, 0x0

    goto :goto_9c

    :sswitch_b0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9d

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/os/Bundle;

    :goto_9d
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v129

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_9e

    const/4 v6, 0x1

    :goto_9e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_9d
    const/16 v129, 0x0

    goto :goto_9d

    :cond_9e
    const/4 v6, 0x0

    goto :goto_9e

    :sswitch_b1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->notifyActivityDrawn(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_b2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_b3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->restart()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_b4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->performIdleMaintenance()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_b5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9f

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/net/Uri;

    :goto_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->takePersistableUriPermission(Landroid/net/Uri;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_9f
    const/16 v67, 0x0

    goto :goto_9f

    :sswitch_b6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a0

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/net/Uri;

    :goto_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_a0
    const/16 v67, 0x0

    goto :goto_a0

    :sswitch_b7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a1

    const/16 v206, 0x1

    :goto_a1
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v240

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v240, :cond_a2

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v240

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a2
    const/4 v6, 0x1

    return v6

    :cond_a1
    const/16 v206, 0x0

    goto :goto_a1

    :cond_a2
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a2

    :sswitch_b8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_b9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v245

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v245, :cond_a3

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v245

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a3
    const/4 v6, 0x1

    return v6

    :cond_a3
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a3

    :sswitch_ba
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_bb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_a4

    const/4 v6, 0x1

    :goto_a4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_a4
    const/4 v6, 0x0

    goto :goto_a4

    :sswitch_bc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v249

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_bd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startUserInBackground(I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_a5

    const/4 v6, 0x1

    :goto_a5
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_a5
    const/4 v6, 0x0

    goto :goto_a5

    :sswitch_be
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startLockTaskModeById(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_bf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_c0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopLockTaskMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_c1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isInLockTaskMode()Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_a6

    const/4 v6, 0x1

    :goto_a6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_a6
    const/4 v6, 0x0

    goto :goto_a6

    :sswitch_c2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a7

    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v196

    check-cast v196, Landroid/app/ActivityManager$TaskDescription;

    :goto_a7
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v196

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_a7
    const/16 v196, 0x0

    goto :goto_a7

    :sswitch_c3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a8

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/Intent;

    :goto_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v139

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v140

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a9

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    :goto_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_aa

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v133, p0

    move-object/from16 v134, v94

    move/from16 v135, v40

    move/from16 v136, v60

    move-object/from16 v137, v102

    move-object/from16 v138, v22

    move/from16 v141, v14

    move-object/from16 v142, v15

    move-object/from16 v143, v16

    move/from16 v144, v17

    invoke-virtual/range {v133 .. v144}, Landroid/app/IActivityManager$Stub;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_a8
    const/16 v102, 0x0

    goto :goto_a8

    :cond_a9
    const/4 v15, 0x0

    goto :goto_a9

    :cond_aa
    const/16 v16, 0x0

    goto :goto_aa

    :sswitch_c4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ab

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/Intent;

    :goto_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ac

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v126

    check-cast v126, Landroid/os/Bundle;

    :goto_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v141, p0

    move-object/from16 v142, v94

    move/from16 v143, v40

    move/from16 v144, v60

    move-object/from16 v145, v102

    move-object/from16 v146, v22

    move-object/from16 v147, v126

    move/from16 v148, v13

    invoke-virtual/range {v141 .. v148}, Landroid/app/IActivityManager$Stub;->startAssistantActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_ab
    const/16 v102, 0x0

    goto :goto_ab

    :cond_ac
    const/16 v126, 0x0

    goto :goto_ac

    :sswitch_c5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getActivityOptions(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v246

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v246, :cond_ad

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v246

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_ad
    const/4 v6, 0x1

    return v6

    :cond_ad
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ad

    :sswitch_c6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object/16 v256, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v256

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_c7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startSystemLockTaskMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_c8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopSystemLockTaskMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_c9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v189

    move-object/from16 v0, p0

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_ca
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_ae

    const/4 v6, 0x1

    :goto_ae
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_ae
    const/4 v6, 0x0

    goto :goto_ae

    :sswitch_cb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_af

    const/16 v206, 0x1

    :goto_af
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_b0

    const/4 v6, 0x1

    :goto_b0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_af
    const/16 v206, 0x0

    goto :goto_af

    :cond_b0
    const/4 v6, 0x0

    goto :goto_b0

    :sswitch_cc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_b1

    const/4 v6, 0x1

    :goto_b1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_b1
    const/4 v6, 0x0

    goto :goto_b1

    :sswitch_cd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_ce
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_cf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b2

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/os/Bundle;

    :goto_b2
    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v129

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_b2
    const/16 v129, 0x0

    goto :goto_b2

    :sswitch_d0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_d1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b3

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    :goto_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b4

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    :goto_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b5

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b6

    const/16 v35, 0x1

    :goto_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v153

    move-object/from16 v141, p0

    move-object/from16 v142, v7

    move-object/from16 v143, v8

    move-object/from16 v144, v9

    move-object/from16 v145, v10

    move-object/from16 v146, v11

    move-object/from16 v147, v12

    move/from16 v148, v13

    move/from16 v149, v14

    move-object/from16 v150, v15

    move-object/from16 v151, v16

    move/from16 v152, v35

    invoke-virtual/range {v141 .. v153}, Landroid/app/IActivityManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_b3
    const/4 v9, 0x0

    goto :goto_b3

    :cond_b4
    const/4 v15, 0x0

    goto :goto_b4

    :cond_b5
    const/16 v16, 0x0

    goto :goto_b5

    :cond_b6
    const/16 v35, 0x0

    goto :goto_b6

    :sswitch_d2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b7

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    :goto_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b8

    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v211

    check-cast v211, Landroid/app/ActivityManager$TaskDescription;

    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b9

    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v221

    check-cast v221, Landroid/graphics/Bitmap;

    :goto_b9
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    move-object/from16 v3, v211

    move-object/from16 v4, v221

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_b7
    const/16 v26, 0x0

    goto :goto_b7

    :cond_b8
    const/16 v211, 0x0

    goto :goto_b8

    :cond_b9
    const/16 v221, 0x0

    goto :goto_b9

    :sswitch_d3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v244

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v244, :cond_ba

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v244

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_ba
    const/4 v6, 0x1

    return v6

    :cond_ba
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ba

    :sswitch_d4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_bb

    const/4 v6, 0x1

    :goto_bb
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_bb
    const/4 v6, 0x0

    goto :goto_bb

    :sswitch_d5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IActivityManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_d6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->bootAnimationComplete()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_d7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v243

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v243, :cond_bc

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v243

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_bc
    const/4 v6, 0x1

    return v6

    :cond_bc
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_bc

    :sswitch_d8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_bd

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v134

    check-cast v134, Landroid/content/Intent;

    :goto_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_be

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Landroid/os/Bundle;

    :goto_be
    move-object/from16 v133, p0

    move/from16 v135, v40

    move-object/from16 v136, v27

    move/from16 v137, v70

    invoke-virtual/range {v133 .. v138}, Landroid/app/IActivityManager$Stub;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_bf

    const/4 v6, 0x1

    :goto_bf
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_bd
    const/16 v134, 0x0

    goto :goto_bd

    :cond_be
    const/16 v138, 0x0

    goto :goto_be

    :cond_bf
    const/4 v6, 0x0

    goto :goto_bf

    :sswitch_d9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c0

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v187

    check-cast v187, Landroid/os/Bundle;

    :goto_c0
    move-object/from16 v0, p0

    move-object/from16 v1, v187

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_c0
    const/16 v187, 0x0

    goto :goto_c0

    :sswitch_da
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v145

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    move/from16 v3, v60

    move-object/from16 v4, v145

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_db
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v181

    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_dc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v207

    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v207

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->notifyCleartextNetwork(I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_dd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    move-result-object v233

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v233, :cond_c1

    invoke-interface/range {v233 .. v233}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_c1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :cond_c1
    const/4 v6, 0x0

    goto :goto_c1

    :sswitch_de
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFocusedStackId()I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_df
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setTaskResizeable(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_e0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v143

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c2

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v144

    check-cast v144, Landroid/os/Bundle;

    :goto_c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v145

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c3

    const/16 v43, 0x1

    :goto_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c4

    const/16 v147, 0x1

    :goto_c4
    move-object/from16 v141, p0

    move/from16 v142, v78

    move/from16 v146, v43

    invoke-virtual/range {v141 .. v147}, Landroid/app/IActivityManager$Stub;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_c5

    const/4 v6, 0x1

    :goto_c5
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_c2
    const/16 v144, 0x0

    goto :goto_c2

    :cond_c3
    const/16 v43, 0x0

    goto :goto_c3

    :cond_c4
    const/16 v147, 0x0

    goto :goto_c4

    :cond_c5
    const/4 v6, 0x0

    goto :goto_c5

    :sswitch_e1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c6

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/graphics/Rect;

    :goto_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v46

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_c6
    const/16 v46, 0x0

    goto :goto_c6

    :sswitch_e2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLockTaskModeState()I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_e3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v158

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v155, p0

    move-object/from16 v156, v94

    move/from16 v157, v40

    move-object/from16 v160, v10

    invoke-virtual/range {v155 .. v160}, Landroid/app/IActivityManager$Stub;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_e4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->dumpHeapFinished(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_e5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v189

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c7

    const/16 v206, 0x1

    :goto_c7
    move-object/from16 v0, p0

    move-object/from16 v1, v189

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_c7
    const/16 v206, 0x0

    goto :goto_c7

    :sswitch_e6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v209

    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v209

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_e7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v40

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_e8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v40

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_e9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_ea
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :sswitch_eb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updateDeviceOwner(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_ec
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->keyguardGoingAway(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_ed
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->getUidProcessState(ILjava/lang/String;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_ee
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v182

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v182

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/IActivityManager$Stub;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_ef
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v182

    move-object/from16 v0, p0

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_f0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_c8

    const/4 v6, 0x1

    :goto_c8
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_c8
    const/4 v6, 0x0

    goto :goto_c8

    :sswitch_f1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c9

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/os/Bundle;

    :goto_c9
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v129

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_ca

    const/4 v6, 0x1

    :goto_ca
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_c9
    const/16 v129, 0x0

    goto :goto_c9

    :cond_ca
    const/4 v6, 0x0

    goto :goto_ca

    :sswitch_f2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_cb

    const/4 v6, 0x1

    :goto_cb
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_cb
    const/4 v6, 0x0

    goto :goto_cb

    :sswitch_f3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->startBinderTracking()Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_cc

    const/4 v6, 0x1

    :goto_cc
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_cc
    const/4 v6, 0x0

    goto :goto_cc

    :sswitch_f4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_cd

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v188

    check-cast v188, Landroid/os/ParcelFileDescriptor;

    :goto_cd
    move-object/from16 v0, p0

    move-object/from16 v1, v188

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_ce

    const/4 v6, 0x1

    :goto_ce
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_cd
    const/16 v188, 0x0

    goto :goto_cd

    :cond_ce
    const/4 v6, 0x0

    goto :goto_ce

    :sswitch_f5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->positionTaskInStack(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_f6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getActivityStackId(Landroid/os/IBinder;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_f7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->exitFreeformMode(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_f8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v208

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v218

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v224

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v208

    move-object/from16 v3, v218

    move-object/from16 v4, v224

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_f9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_cf

    const/16 v96, 0x1

    :goto_cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d0

    const/16 v48, 0x1

    :goto_d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d1

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v165

    check-cast v165, Landroid/graphics/Rect;

    :goto_d1
    move-object/from16 v160, p0

    move/from16 v161, v78

    move/from16 v162, v40

    move/from16 v163, v96

    move/from16 v164, v48

    invoke-virtual/range {v160 .. v165}, Landroid/app/IActivityManager$Stub;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_d2

    const/4 v6, 0x1

    :goto_d2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_cf
    const/16 v96, 0x0

    goto :goto_cf

    :cond_d0
    const/16 v48, 0x0

    goto :goto_d0

    :cond_d1
    const/16 v165, 0x0

    goto :goto_d1

    :cond_d2
    const/4 v6, 0x0

    goto :goto_d2

    :sswitch_fa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d3

    const/16 v96, 0x1

    :goto_d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d4

    const/16 v48, 0x1

    :goto_d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d5

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v165

    check-cast v165, Landroid/graphics/Rect;

    :goto_d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d6

    const/16 v147, 0x1

    :goto_d6
    move-object/from16 v160, p0

    move/from16 v161, v78

    move/from16 v162, v40

    move/from16 v163, v96

    move/from16 v164, v48

    move/from16 v166, v147

    invoke-virtual/range {v160 .. v166}, Landroid/app/IActivityManager$Stub;->moveTaskToDockedStackForShowRecents(IIZZLandroid/graphics/Rect;Z)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_d7

    const/4 v6, 0x1

    :goto_d7
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_d3
    const/16 v96, 0x0

    goto :goto_d3

    :cond_d4
    const/16 v48, 0x0

    goto :goto_d4

    :cond_d5
    const/16 v165, 0x0

    goto :goto_d5

    :cond_d6
    const/16 v147, 0x0

    goto :goto_d6

    :cond_d7
    const/4 v6, 0x0

    goto :goto_d7

    :sswitch_fb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d8

    const/16 v193, 0x1

    :goto_d8
    move-object/from16 v0, p0

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->suppressResizeConfigChanges(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_d8
    const/16 v193, 0x0

    goto :goto_d8

    :sswitch_fc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d9

    const/16 v206, 0x1

    :goto_d9
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveTasksToFullscreenStack(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_d9
    const/16 v206, 0x0

    goto :goto_d9

    :sswitch_fd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_da

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/graphics/Rect;

    :goto_da
    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_db

    const/4 v6, 0x1

    :goto_db
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_da
    const/16 v46, 0x0

    goto :goto_da

    :cond_db
    const/4 v6, 0x0

    goto :goto_db

    :sswitch_fe
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_dc

    const/4 v6, 0x1

    :goto_dc
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_dc
    const/4 v6, 0x0

    goto :goto_dc

    :sswitch_ff
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v207

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v217

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v222

    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v207

    move-object/from16 v3, v217

    move-object/from16 v4, v222

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_dd

    const/4 v6, 0x1

    :goto_dd
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_dd
    const/4 v6, 0x0

    goto :goto_dd

    :sswitch_100
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isInMultiWindowMode(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_de

    const/4 v6, 0x1

    :goto_de
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_de
    const/4 v6, 0x0

    goto :goto_de

    :sswitch_101
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isInPictureInPictureMode(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_df

    const/4 v6, 0x1

    :goto_df
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_df
    const/4 v6, 0x0

    goto :goto_df

    :sswitch_102
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killPackageDependents(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_103
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e0

    sget-object v6, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v199

    check-cast v199, Landroid/app/PictureInPictureParams;

    :goto_e0
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v199

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_e1

    const/4 v6, 0x1

    :goto_e1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_e0
    const/16 v199, 0x0

    goto :goto_e0

    :cond_e1
    const/4 v6, 0x0

    goto :goto_e1

    :sswitch_104
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e2

    sget-object v6, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v199

    check-cast v199, Landroid/app/PictureInPictureParams;

    :goto_e2
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v199

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_e2
    const/16 v199, 0x0

    goto :goto_e2

    :sswitch_105
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_106
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->activityRelaunched(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_107
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v247

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v247

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :sswitch_108
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e3

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v161

    check-cast v161, Landroid/graphics/Rect;

    :goto_e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e4

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/graphics/Rect;

    :goto_e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e5

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v163

    check-cast v163, Landroid/graphics/Rect;

    :goto_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e6

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v164

    check-cast v164, Landroid/graphics/Rect;

    :goto_e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e7

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v165

    check-cast v165, Landroid/graphics/Rect;

    :goto_e7
    move-object/from16 v160, p0

    move-object/from16 v162, v46

    invoke-virtual/range {v160 .. v165}, Landroid/app/IActivityManager$Stub;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_e3
    const/16 v161, 0x0

    goto :goto_e3

    :cond_e4
    const/16 v46, 0x0

    goto :goto_e4

    :cond_e5
    const/16 v163, 0x0

    goto :goto_e5

    :cond_e6
    const/16 v164, 0x0

    goto :goto_e6

    :cond_e7
    const/16 v165, 0x0

    goto :goto_e7

    :sswitch_109
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e8

    const/16 v206, 0x1

    :goto_e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e9

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v213

    check-cast v213, Landroid/content/ComponentName;

    :goto_e9
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v206

    move-object/from16 v3, v213

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_e8
    const/16 v206, 0x0

    goto :goto_e8

    :cond_e9
    const/16 v213, 0x0

    goto :goto_e9

    :sswitch_10a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v240

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v240, :cond_ea

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v240

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_ea
    const/4 v6, 0x1

    return v6

    :cond_ea
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ea

    :sswitch_10b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_10c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isAppForeground(I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_eb

    const/4 v6, 0x1

    :goto_eb
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_eb
    const/4 v6, 0x0

    goto :goto_eb

    :sswitch_10d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ec

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/os/Bundle;

    :goto_ec
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v129

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_ec
    const/16 v129, 0x0

    goto :goto_ec

    :sswitch_10e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_10f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_ed

    const/4 v6, 0x1

    :goto_ed
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_ed
    const/4 v6, 0x0

    goto :goto_ed

    :sswitch_110
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->notifyPinnedStackAnimationStarted()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_111
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->notifyPinnedStackAnimationEnded()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_112
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->removeStack(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_113
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->makePackageIdle(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_114
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getMemoryTrimLevel()I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_115
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getDumpMemoryInfo()Ljava/util/List;

    move-result-object v0

    move-object/16 v257, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_116
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ee

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v161

    check-cast v161, Landroid/graphics/Rect;

    :goto_ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ef

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/graphics/Rect;

    :goto_ef
    move-object/from16 v0, p0

    move-object/from16 v1, v161

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_ee
    const/16 v161, 0x0

    goto :goto_ee

    :cond_ef
    const/16 v46, 0x0

    goto :goto_ef

    :sswitch_117
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f0

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ComponentName;

    :goto_f0
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_f1

    const/4 v6, 0x1

    :goto_f1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_f0
    const/16 v58, 0x0

    goto :goto_f0

    :cond_f1
    const/4 v6, 0x0

    goto :goto_f1

    :sswitch_118
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->swapDockedAndFullscreenStack()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_119
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->notifyLockedProfile(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_11a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f2

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v134

    check-cast v134, Landroid/content/Intent;

    :goto_f2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f3

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/os/Bundle;

    :goto_f3
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    move-object/from16 v2, v129

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_f2
    const/16 v134, 0x0

    goto :goto_f2

    :cond_f3
    const/16 v129, 0x0

    goto :goto_f3

    :sswitch_11b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->sendIdleJobTrigger()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_11c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v167

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v51

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f4

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/Intent;

    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v172

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f5

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v174

    check-cast v174, Landroid/os/Bundle;

    :goto_f5
    move-object/from16 v166, p0

    move-object/from16 v168, v51

    move/from16 v169, v60

    move-object/from16 v170, v102

    move-object/from16 v171, v22

    move-object/from16 v173, v56

    invoke-virtual/range {v166 .. v174}, Landroid/app/IActivityManager$Stub;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_f4
    const/16 v102, 0x0

    goto :goto_f4

    :cond_f5
    const/16 v174, 0x0

    goto :goto_f5

    :sswitch_11d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setVrThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_11e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setRenderThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_11f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f6

    const/16 v193, 0x1

    :goto_f6
    move-object/from16 v0, p0

    move/from16 v1, v193

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setHasTopUi(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_f6
    const/16 v193, 0x0

    goto :goto_f6

    :sswitch_120
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->requestActivityRelaunch(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_121
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f7

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v186

    check-cast v186, Landroid/content/res/Configuration;

    :goto_f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v186

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_f8

    const/4 v6, 0x1

    :goto_f8
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_f7
    const/16 v186, 0x0

    goto :goto_f7

    :cond_f8
    const/4 v6, 0x0

    goto :goto_f8

    :sswitch_122
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v181

    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_123
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveStackToDisplay(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_124
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v190

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f9

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/os/Bundle;

    :goto_f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    move-object/from16 v0, p0

    move-object/from16 v1, v190

    move-object/from16 v2, v129

    move-object/from16 v3, v80

    move/from16 v4, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->requestAutofillData(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_fa

    const/4 v6, 0x1

    :goto_fa
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_f9
    const/16 v129, 0x0

    goto :goto_f9

    :cond_fa
    const/4 v6, 0x0

    goto :goto_fa

    :sswitch_125
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v203

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v203

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_126
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->restartUserInBackground(I)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_127
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->cancelTaskWindowTransition(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_128
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->cancelTaskThumbnailTransition(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_129
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_fb

    const/16 v206, 0x1

    :goto_fb
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v230

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v230, :cond_fc

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v230

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_fc
    const/4 v6, 0x1

    return v6

    :cond_fb
    const/16 v206, 0x0

    goto :goto_fb

    :cond_fc
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_fc

    :sswitch_12a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v192

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_12b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setPersistentVrThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_12c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v176

    move-object/from16 v0, p0

    move-wide/from16 v1, v176

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->waitForNetworkStateUpdate(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_12d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_fd

    const/16 v206, 0x1

    :goto_fd
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setDisablePreviewScreenshots(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_fd
    const/16 v206, 0x0

    goto :goto_fd

    :sswitch_12e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLastResumedActivityUserId()I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_12f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->backgroundWhitelistUid(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_130
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_fe

    const/16 v206, 0x1

    :goto_fe
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_fe
    const/16 v206, 0x0

    goto :goto_fe

    :sswitch_131
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ff

    const/16 v206, 0x1

    :goto_ff
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_ff
    const/16 v206, 0x0

    goto :goto_ff

    :sswitch_132
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->semRemoveTask(II)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_100

    const/4 v6, 0x1

    :goto_100
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_100
    const/4 v6, 0x0

    goto :goto_100

    :sswitch_133
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_101

    const/16 v206, 0x1

    :goto_101
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->semConvertFromTranslucent(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_102

    const/4 v6, 0x1

    :goto_102
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_101
    const/16 v206, 0x0

    goto :goto_101

    :cond_102
    const/4 v6, 0x0

    goto :goto_102

    :sswitch_134
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/ITaskWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ITaskWatcher;

    move-result-object v204

    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v204

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->registerTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_135
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/ITaskWatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ITaskWatcher;

    move-result-object v204

    move-object/from16 v0, p0

    move/from16 v1, v78

    move-object/from16 v2, v204

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unregisterTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_136
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskInfoFromTaskId(I)Landroid/os/Bundle;

    move-result-object v246

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v246, :cond_103

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v246

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_103
    const/4 v6, 0x1

    return v6

    :cond_103
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_103

    :sswitch_137
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_104

    const/16 v206, 0x1

    :goto_104
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveTaskToBack(IZ)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_105

    const/4 v6, 0x1

    :goto_105
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_104
    const/16 v206, 0x0

    goto :goto_104

    :cond_105
    const/4 v6, 0x0

    goto :goto_105

    :sswitch_138
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_106

    const/16 v206, 0x1

    :goto_106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_107

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v144

    check-cast v144, Landroid/os/Bundle;

    :goto_107
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v206

    move-object/from16 v3, v144

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->moveTaskToBackWithBundle(IZLandroid/os/Bundle;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_108

    const/4 v6, 0x1

    :goto_108
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_106
    const/16 v206, 0x0

    goto :goto_106

    :cond_107
    const/16 v144, 0x0

    goto :goto_107

    :cond_108
    const/4 v6, 0x0

    goto :goto_108

    :sswitch_139
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_109

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v134

    check-cast v134, Landroid/content/Intent;

    :goto_109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    move/from16 v2, v60

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/IActivityManager$Stub;->queryRegisteredReceiverPackages(Landroid/content/Intent;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object/16 v263, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v263

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_109
    const/16 v134, 0x0

    goto :goto_109

    :sswitch_13a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10a

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ComponentName;

    :goto_10a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10b

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v214

    check-cast v214, Landroid/os/ParcelFileDescriptor;

    :goto_10b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move/from16 v2, v40

    move-object/from16 v3, v214

    move/from16 v4, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->setCustomImageForPackage(Landroid/content/ComponentName;ILandroid/os/ParcelFileDescriptor;I)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_10c

    const/4 v6, 0x1

    :goto_10c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_10a
    const/16 v58, 0x0

    goto :goto_10a

    :cond_10b
    const/16 v214, 0x0

    goto :goto_10b

    :cond_10c
    const/4 v6, 0x0

    goto :goto_10c

    :sswitch_13b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAppLockedPackageList()Ljava/util/List;

    move-result-object v0

    move-object/16 v258, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_13c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setAppLockedUnLockPackage(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_13d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_10d

    const/4 v6, 0x1

    :goto_10d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_10d
    const/4 v6, 0x0

    goto :goto_10d

    :sswitch_13e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->clearAppLockedUnLockedApp()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_13f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAppLockedLockType()Ljava/lang/String;

    move-result-object v249

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_140
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v249

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_141
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10e

    const/16 v206, 0x1

    :goto_10e
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setAppLockedVerifying(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_10e
    const/16 v206, 0x0

    goto :goto_10e

    :sswitch_142
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_10f

    const/4 v6, 0x1

    :goto_10f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_10f
    const/4 v6, 0x0

    goto :goto_10f

    :sswitch_143
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1, v8}, Landroid/app/IActivityManager$Stub;->sendControlInfo(ILjava/lang/String;)Z

    move-result v0

    move/16 v259, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move/from16 v0, v259

    if-eqz v0, :cond_110

    const/4 v6, 0x1

    :goto_110
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_110
    const/4 v6, 0x0

    goto :goto_110

    :sswitch_144
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getIsolatedProcessList()[I

    move-result-object v0

    move-object/16 v260, v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v260

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v6, 0x1

    return v6

    :sswitch_145
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v195

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v195

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setDssForPackage(Ljava/lang/String;F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_146
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->showAllDSSInfo()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_147
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v195

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v210

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v219

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v195

    move/from16 v3, v210

    move/from16 v4, v219

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->reduceScreenAreaForPackage(Ljava/lang/String;FFF)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_148
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_111

    const/16 v206, 0x1

    :goto_111
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->addPackageToReducedScreenBlacklist(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_111
    const/16 v206, 0x0

    goto :goto_111

    :sswitch_149
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->reduceScreenSideTouchArea(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_14a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v195

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v195

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setFixedAspectRatioForPackage(Ljava/lang/String;F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_14b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_112

    const/16 v206, 0x1

    :goto_112
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setNavbarIsAlwaysEnabledForPackage(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_112
    const/16 v206, 0x0

    goto :goto_112

    :sswitch_14c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_113

    const/16 v206, 0x1

    :goto_113
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setBackgroundSurfaceEnabledForPackage(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_113
    const/16 v206, 0x0

    goto :goto_113

    :sswitch_14d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getRequestedOrientationByTaskId(I)I

    move-result v225

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_14e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->requestWaitingForOccluding()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_14f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->dismissUserSwitchingDialog()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_150
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getResumedTaskBounds()Landroid/graphics/Rect;

    move-result-object v245

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v245, :cond_114

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v245

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_114
    const/4 v6, 0x1

    return v6

    :cond_114
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_114

    :sswitch_151
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getResumedTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v243

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v243, :cond_115

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v243

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_115
    const/4 v6, 0x1

    return v6

    :cond_115
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_115

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0xae -> :sswitch_ae
        0xaf -> :sswitch_af
        0xb0 -> :sswitch_b0
        0xb1 -> :sswitch_b1
        0xb2 -> :sswitch_b2
        0xb3 -> :sswitch_b3
        0xb4 -> :sswitch_b4
        0xb5 -> :sswitch_b5
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b7
        0xb8 -> :sswitch_b8
        0xb9 -> :sswitch_b9
        0xba -> :sswitch_ba
        0xbb -> :sswitch_bb
        0xbc -> :sswitch_bc
        0xbd -> :sswitch_bd
        0xbe -> :sswitch_be
        0xbf -> :sswitch_bf
        0xc0 -> :sswitch_c0
        0xc1 -> :sswitch_c1
        0xc2 -> :sswitch_c2
        0xc3 -> :sswitch_c3
        0xc4 -> :sswitch_c4
        0xc5 -> :sswitch_c5
        0xc6 -> :sswitch_c6
        0xc7 -> :sswitch_c7
        0xc8 -> :sswitch_c8
        0xc9 -> :sswitch_c9
        0xca -> :sswitch_ca
        0xcb -> :sswitch_cb
        0xcc -> :sswitch_cc
        0xcd -> :sswitch_cd
        0xce -> :sswitch_ce
        0xcf -> :sswitch_cf
        0xd0 -> :sswitch_d0
        0xd1 -> :sswitch_d1
        0xd2 -> :sswitch_d2
        0xd3 -> :sswitch_d3
        0xd4 -> :sswitch_d4
        0xd5 -> :sswitch_d5
        0xd6 -> :sswitch_d6
        0xd7 -> :sswitch_d7
        0xd8 -> :sswitch_d8
        0xd9 -> :sswitch_d9
        0xda -> :sswitch_da
        0xdb -> :sswitch_db
        0xdc -> :sswitch_dc
        0xdd -> :sswitch_dd
        0xde -> :sswitch_de
        0xdf -> :sswitch_df
        0xe0 -> :sswitch_e0
        0xe1 -> :sswitch_e1
        0xe2 -> :sswitch_e2
        0xe3 -> :sswitch_e3
        0xe4 -> :sswitch_e4
        0xe5 -> :sswitch_e5
        0xe6 -> :sswitch_e6
        0xe7 -> :sswitch_e7
        0xe8 -> :sswitch_e8
        0xe9 -> :sswitch_e9
        0xea -> :sswitch_ea
        0xeb -> :sswitch_eb
        0xec -> :sswitch_ec
        0xed -> :sswitch_ed
        0xee -> :sswitch_ee
        0xef -> :sswitch_ef
        0xf0 -> :sswitch_f0
        0xf1 -> :sswitch_f1
        0xf2 -> :sswitch_f2
        0xf3 -> :sswitch_f3
        0xf4 -> :sswitch_f4
        0xf5 -> :sswitch_f5
        0xf6 -> :sswitch_f6
        0xf7 -> :sswitch_f7
        0xf8 -> :sswitch_f8
        0xf9 -> :sswitch_f9
        0xfa -> :sswitch_fa
        0xfb -> :sswitch_fb
        0xfc -> :sswitch_fc
        0xfd -> :sswitch_fd
        0xfe -> :sswitch_fe
        0xff -> :sswitch_ff
        0x100 -> :sswitch_100
        0x101 -> :sswitch_101
        0x102 -> :sswitch_102
        0x103 -> :sswitch_103
        0x104 -> :sswitch_104
        0x105 -> :sswitch_105
        0x106 -> :sswitch_106
        0x107 -> :sswitch_107
        0x108 -> :sswitch_108
        0x109 -> :sswitch_109
        0x10a -> :sswitch_10a
        0x10b -> :sswitch_10b
        0x10c -> :sswitch_10c
        0x10d -> :sswitch_10d
        0x10e -> :sswitch_10e
        0x10f -> :sswitch_10f
        0x110 -> :sswitch_110
        0x111 -> :sswitch_111
        0x112 -> :sswitch_112
        0x113 -> :sswitch_113
        0x114 -> :sswitch_114
        0x115 -> :sswitch_115
        0x116 -> :sswitch_116
        0x117 -> :sswitch_117
        0x118 -> :sswitch_118
        0x119 -> :sswitch_119
        0x11a -> :sswitch_11a
        0x11b -> :sswitch_11b
        0x11c -> :sswitch_11c
        0x11d -> :sswitch_11d
        0x11e -> :sswitch_11e
        0x11f -> :sswitch_11f
        0x120 -> :sswitch_120
        0x121 -> :sswitch_121
        0x122 -> :sswitch_122
        0x123 -> :sswitch_123
        0x124 -> :sswitch_124
        0x125 -> :sswitch_125
        0x126 -> :sswitch_126
        0x127 -> :sswitch_127
        0x128 -> :sswitch_128
        0x129 -> :sswitch_129
        0x12a -> :sswitch_12a
        0x12b -> :sswitch_12b
        0x12c -> :sswitch_12c
        0x12d -> :sswitch_12d
        0x12e -> :sswitch_12e
        0x12f -> :sswitch_12f
        0x130 -> :sswitch_130
        0x131 -> :sswitch_131
        0x132 -> :sswitch_132
        0x133 -> :sswitch_133
        0x134 -> :sswitch_134
        0x135 -> :sswitch_135
        0x136 -> :sswitch_136
        0x137 -> :sswitch_137
        0x138 -> :sswitch_138
        0x139 -> :sswitch_139
        0x13a -> :sswitch_13a
        0x13b -> :sswitch_13b
        0x13c -> :sswitch_13c
        0x13d -> :sswitch_13d
        0x13e -> :sswitch_13e
        0x13f -> :sswitch_13f
        0x140 -> :sswitch_140
        0x141 -> :sswitch_141
        0x142 -> :sswitch_142
        0x143 -> :sswitch_143
        0x144 -> :sswitch_144
        0x145 -> :sswitch_145
        0x146 -> :sswitch_146
        0x147 -> :sswitch_147
        0x148 -> :sswitch_148
        0x149 -> :sswitch_149
        0x14a -> :sswitch_14a
        0x14b -> :sswitch_14b
        0x14c -> :sswitch_14c
        0x14d -> :sswitch_14d
        0x14e -> :sswitch_14e
        0x14f -> :sswitch_14f
        0x150 -> :sswitch_150
        0x151 -> :sswitch_151
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
