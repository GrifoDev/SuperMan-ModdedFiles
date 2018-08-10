.class public Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hasUserAuthenticatedSinceBoot()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isUnlockingWithBiometricAllowed()Z
    .locals 2

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isBiometricAllowedForUser(I)Z

    move-result v1

    return v1
.end method

.method public isUnlockingWithFingerprintAllowed()Z
    .locals 2

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isFingerprintAllowedForUser(I)Z

    move-result v1

    return v1
.end method

.method public onStrongAuthRequiredChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap61(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    return-void
.end method
