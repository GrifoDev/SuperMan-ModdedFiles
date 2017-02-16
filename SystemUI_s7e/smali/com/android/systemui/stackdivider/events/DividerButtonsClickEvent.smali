.class public Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerButtonsClickEvent.java"


# instance fields
.field public final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;->mType:I

    return-void
.end method
