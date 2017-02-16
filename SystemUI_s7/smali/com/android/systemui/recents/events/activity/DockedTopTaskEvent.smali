.class public Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DockedTopTaskEvent.java"


# instance fields
.field public dragMode:I

.field public initialRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->dragMode:I

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->initialRect:Landroid/graphics/Rect;

    return-void
.end method
