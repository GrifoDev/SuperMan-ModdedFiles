.class public Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerButtonsVisibleEvent.java"


# instance fields
.field private flag:I

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    return-void
.end method


# virtual methods
.method public isAnimate()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTransient()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setReason(Ljava/lang/String;)Lcom/android/systemui/recents/events/EventBus$Event;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->flag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
