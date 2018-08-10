.class Lcom/android/systemui/keyguard/WorkLockActivityController$1;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "WorkLockActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/WorkLockActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/WorkLockActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/WorkLockActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivityController;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskProfileLocked(II)V
    .locals 0

    return-void
.end method
