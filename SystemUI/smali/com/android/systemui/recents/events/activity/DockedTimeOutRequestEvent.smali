.class public Lcom/android/systemui/recents/events/activity/DockedTimeOutRequestEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DockedTimeOutRequestEvent.java"


# instance fields
.field public final appName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/DockedTimeOutRequestEvent;->appName:Ljava/lang/String;

    return-void
.end method
