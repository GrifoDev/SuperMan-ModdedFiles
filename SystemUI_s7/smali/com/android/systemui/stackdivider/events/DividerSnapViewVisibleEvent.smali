.class public Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerSnapViewVisibleEvent.java"


# instance fields
.field public final mDockedRect:Landroid/graphics/Rect;

.field public final mSnapTarget:I

.field public final mVisible:Z


# direct methods
.method public constructor <init>(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mVisible:Z

    iput p2, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapTarget:I

    iput-object p3, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mDockedRect:Landroid/graphics/Rect;

    return-void
.end method
