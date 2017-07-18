.class public Lcom/samsung/android/support/reminder/Options;
.super Ljava/lang/Object;
.source "Options.java"


# instance fields
.field private mContextualTimeEnabled:Z

.field private mCustomTimeEnabled:Z

.field private mLocationEnabled:Z

.field private mTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/reminder/Options;->mTimeList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/support/reminder/Options;->mContextualTimeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/reminder/Options;->mCustomTimeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/reminder/Options;->mLocationEnabled:Z

    return-void
.end method


# virtual methods
.method public addTime(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/reminder/Options;->mTimeList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getCustomTimeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/reminder/Options;->mTimeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method isContextualTimeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/reminder/Options;->mContextualTimeEnabled:Z

    return v0
.end method

.method isCustomTimeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/reminder/Options;->mCustomTimeEnabled:Z

    return v0
.end method

.method isLocationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/reminder/Options;->mLocationEnabled:Z

    return v0
.end method

.method public setContextualTimeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/reminder/Options;->mContextualTimeEnabled:Z

    return-void
.end method

.method public setCustomTimeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/reminder/Options;->mCustomTimeEnabled:Z

    return-void
.end method

.method public setLocationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/reminder/Options;->mLocationEnabled:Z

    return-void
.end method
