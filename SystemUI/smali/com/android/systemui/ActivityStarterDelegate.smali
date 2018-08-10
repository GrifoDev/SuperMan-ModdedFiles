.class public Lcom/android/systemui/ActivityStarterDelegate;
.super Ljava/lang/Object;
.source "ActivityStarterDelegate.java"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter;


# instance fields
.field private mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public setActivityStarterImpl(Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startCameraActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startCameraActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method
