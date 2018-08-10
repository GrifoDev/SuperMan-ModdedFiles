.class public Lcom/android/systemui/recents/events/component/SnapViewRequestEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "SnapViewRequestEvent.java"


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final snapCaller:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/events/component/SnapViewRequestEvent;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/events/component/SnapViewRequestEvent;->snapCaller:Ljava/lang/String;

    return-void
.end method
