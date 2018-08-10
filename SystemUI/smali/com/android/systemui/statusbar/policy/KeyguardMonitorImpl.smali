.class public Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMonitorImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCanSkipBouncer:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mKeyguardFadingAway:Z

.field private mKeyguardFadingAwayDelay:J

.field private mKeyguardFadingAwayDuration:J

.field private mKeyguardGoingAway:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mListening:Z

.field private mOccluded:Z

.field private mSecure:Z

.field private mShowing:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -com_android_systemui_statusbar_policy_KeyguardMonitorImpl-mthref-0(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;->onKeyguardShowingChanged()V

    return-void
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCurrentUser:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->updateCanSkipBouncerState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-void
.end method

.method private notifyKeyguardChanged()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$Lambda$jdGnvbrC24zMRHWtQAiy15iDGyk;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/-$Lambda$jdGnvbrC24zMRHWtQAiy15iDGyk;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateCanSkipBouncerState()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCanSkipBouncer:Z

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCurrentUser:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->updateCanSkipBouncerState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    :cond_0
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method

.method public canSkipBouncer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCanSkipBouncer:Z

    return v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method public isDeviceInteractive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    return v0
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    return v0
.end method

.method public isKeyguardGoingAway()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    return v0
.end method

.method public isOccluded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    return v0
.end method

.method public notifyKeyguardDoneFading()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    return-void
.end method

.method public notifyKeyguardFadingAway(JJ)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDelay:J

    iput-wide p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDuration:J

    return-void
.end method

.method public notifyKeyguardGoingAway(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    return-void
.end method

.method public notifyKeyguardState(ZZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardChanged()V

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->updateCanSkipBouncerState()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardChanged()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method
