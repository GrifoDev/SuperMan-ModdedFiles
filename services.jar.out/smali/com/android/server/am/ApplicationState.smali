.class Lcom/android/server/am/ApplicationState;
.super Ljava/lang/Object;
.source "AppStateBroadcaster.java"


# instance fields
.field private mProcessIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStopReason:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ApplicationState;->mStopReason:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addProcess(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTermReason()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/ApplicationState;->mStopReason:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public removeProcess(II)Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/ApplicationState;->mStopReason:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ApplicationState;->mStopReason:I

    iget-object v0, p0, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method
