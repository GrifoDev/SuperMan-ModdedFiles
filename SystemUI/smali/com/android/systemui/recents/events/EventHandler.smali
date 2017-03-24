.class Lcom/android/systemui/recents/events/EventHandler;
.super Ljava/lang/Object;
.source "EventBus.java"


# instance fields
.field method:Lcom/android/systemui/recents/events/EventHandlerMethod;

.field priority:I

.field subscriber:Lcom/android/systemui/recents/events/Subscriber;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/events/Subscriber;Lcom/android/systemui/recents/events/EventHandlerMethod;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    iput-object p2, p0, Lcom/android/systemui/recents/events/EventHandler;->method:Lcom/android/systemui/recents/events/EventHandlerMethod;

    iput p3, p0, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    iget v2, p0, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/Subscriber;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/events/EventHandler;->method:Lcom/android/systemui/recents/events/EventHandlerMethod;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/EventHandlerMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
