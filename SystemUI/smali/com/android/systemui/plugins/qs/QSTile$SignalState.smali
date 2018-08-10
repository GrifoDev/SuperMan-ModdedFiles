.class public final Lcom/android/systemui/plugins/qs/QSTile$SignalState;
.super Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
.source "QSTile.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignalState"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public isOverlayIconWide:Z

.field public overlayIconId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 4

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    iput v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    return v0

    :cond_1
    iget-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    iget v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",activityIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",activityOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
