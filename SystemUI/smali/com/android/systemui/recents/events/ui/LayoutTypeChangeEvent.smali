.class public Lcom/android/systemui/recents/events/ui/LayoutTypeChangeEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LayoutTypeChangeEvent.java"


# instance fields
.field public final targetLayoutType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/ui/LayoutTypeChangeEvent;->targetLayoutType:I

    return-void
.end method
