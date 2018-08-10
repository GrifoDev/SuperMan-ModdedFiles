.class public Lcom/android/systemui/keyguard/WorkLockActivityController;
.super Ljava/lang/Object;
.source "WorkLockActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/WorkLockActivityController$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIam:Landroid/app/IActivityManager;

.field private final mLockListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

.field private final mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/keyguard/WorkLockActivityController;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/app/IActivityManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/app/IActivityManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/WorkLockActivityController$1;-><init>(Lcom/android/systemui/keyguard/WorkLockActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mLockListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object p3, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mIam:Landroid/app/IActivityManager;

    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mLockListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    return-void
.end method
