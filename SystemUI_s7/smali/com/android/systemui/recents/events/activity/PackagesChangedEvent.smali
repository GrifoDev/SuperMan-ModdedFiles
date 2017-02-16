.class public Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "PackagesChangedEvent.java"


# instance fields
.field public final monitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->monitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->userId:I

    return-void
.end method
