.class public Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
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
    accessFlags = 0x9
    name = "AirplaneBooleanState"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public isAirplaneMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 4

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
