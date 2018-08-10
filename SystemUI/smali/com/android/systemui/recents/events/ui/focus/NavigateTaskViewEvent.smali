.class public Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "NavigateTaskViewEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;
    }
.end annotation


# instance fields
.field public direction:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;->direction:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-void
.end method

.method public static getDirectionFromKeyCode(I)Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->UNDEFINED:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->UP:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->DOWN:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->LEFT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->RIGHT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
