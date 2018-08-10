.class Lcom/android/systemui/recents/RecentsActivity$DockedTimeOutRunnable;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DockedTimeOutRunnable"
.end annotation


# instance fields
.field public targetName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/RecentsActivity$DockedTimeOutRunnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity$DockedTimeOutRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "RecentsActivity"

    const-string/jumbo v1, "Send DockedTopTaskFailedEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/DockedTopTaskFailedEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$DockedTimeOutRunnable;->targetName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/DockedTopTaskFailedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method
