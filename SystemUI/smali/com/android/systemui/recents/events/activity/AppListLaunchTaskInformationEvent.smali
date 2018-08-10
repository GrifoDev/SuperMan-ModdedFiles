.class public Lcom/android/systemui/recents/events/activity/AppListLaunchTaskInformationEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "AppListLaunchTaskInformationEvent.java"


# instance fields
.field public final recommendation:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/AppListLaunchTaskInformationEvent;->recommendation:Z

    return-void
.end method
