.class public abstract Landroid/app/ActivityManagerInternal;
.super Ljava/lang/Object;
.source "ActivityManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerInternal$SleepToken;
    }
.end annotation


# static fields
.field public static final APP_TRANSITION_SAVED_SURFACE:I = 0x0

.field public static final APP_TRANSITION_SNAPSHOT:I = 0x4

.field public static final APP_TRANSITION_SPLASH_SCREEN:I = 0x1

.field public static final APP_TRANSITION_TIMEOUT:I = 0x3

.field public static final APP_TRANSITION_WINDOWS_DRAWN:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;
.end method

.method public abstract checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract clearSavedANRState()V
.end method

.method public deferAmLock()V
    .locals 0

    return-void
.end method

.method public abstract getHomeActivityForUser(I)Landroid/content/ComponentName;
.end method

.method public abstract getTopVisibleActivities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUidProcessState(I)I
.end method

.method public abstract grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;I)V
.end method

.method public abstract hasRunningActivity(ILjava/lang/String;)Z
.end method

.method public abstract isSystemReady()Z
.end method

.method public abstract killForegroundAppsForUser(I)V
.end method

.method public killPackageProcess(Ljava/lang/String;IILjava/lang/String;Landroid/content/pm/ActivityInfo;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract notifyAppTransitionCancelled()V
.end method

.method public abstract notifyAppTransitionFinished()V
.end method

.method public abstract notifyAppTransitionStarting(Landroid/util/SparseIntArray;J)V
.end method

.method public abstract notifyDockedStackMinimizedChanged(Z)V
.end method

.method public abstract notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V
.end method

.method public abstract notifyKeyguardTrustedChanged()V
.end method

.method public abstract notifyNetworkPolicyRulesUpdated(IJ)V
.end method

.method public abstract onLocalVoiceInteractionStarted(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract onWakefulnessChanged(I)V
.end method

.method public abstract saveANRState(Ljava/lang/String;)V
.end method

.method public abstract setDeviceIdleWhitelist([I)V
.end method

.method public abstract setHasOverlayUi(IZ)V
.end method

.method public abstract setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V
.end method

.method public abstract setVr2dDisplayId(I)V
.end method

.method public abstract startActivitiesAsPackage(Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I
.end method

.method public abstract startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I
.end method

.method public abstract updateDeviceIdleTempWhitelist([IIZ)V
.end method

.method public abstract updatePersistentConfigurationForUser(Landroid/content/res/Configuration;I)V
.end method
