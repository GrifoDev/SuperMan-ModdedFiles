.class public Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ScreenRatioChangeInformationEvent.java"


# instance fields
.field public final enlarged:Z

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;->packageName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;->enlarged:Z

    return-void
.end method
