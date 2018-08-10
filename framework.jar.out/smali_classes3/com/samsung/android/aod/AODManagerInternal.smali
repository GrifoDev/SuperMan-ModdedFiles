.class public abstract Lcom/samsung/android/aod/AODManagerInternal;
.super Ljava/lang/Object;
.source "AODManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isAODState()Z
.end method

.method public abstract notifyScreenOff()Z
.end method

.method public abstract notifyScreenOn()Z
.end method

.method public abstract screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V
.end method

.method public abstract startAOD()Z
.end method

.method public abstract stopAOD()Z
.end method

.method public abstract updateCalendarData(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateNotificationKeys(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract wakeUp()Z
.end method
