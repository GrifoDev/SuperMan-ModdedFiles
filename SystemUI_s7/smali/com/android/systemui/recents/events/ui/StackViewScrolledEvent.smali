.class public Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;
.super Lcom/android/systemui/recents/events/EventBus$ReusableEvent;
.source "StackViewScrolledEvent.java"


# instance fields
.field public final yMovement:Landroid/util/MutableInt;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$ReusableEvent;-><init>()V

    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;->yMovement:Landroid/util/MutableInt;

    return-void
.end method


# virtual methods
.method public updateY(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;->yMovement:Landroid/util/MutableInt;

    iput p1, v0, Landroid/util/MutableInt;->value:I

    return-void
.end method
