.class public Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "ConfigurationChangedEvent.java"


# instance fields
.field public final fromDeviceOrientationChange:Z

.field public final fromDisplayDensityChange:Z

.field public final fromMultiWindow:Z

.field public final hasStackTasks:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromMultiWindow:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    iput-boolean p3, p0, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDisplayDensityChange:Z

    iput-boolean p4, p0, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->hasStackTasks:Z

    return-void
.end method
