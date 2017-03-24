.class public Lcom/pekaka/systemui/killer/MemInfo;
.super Ljava/util/Observable;
.source "MemInfo.java"


# instance fields
.field private avi:J

.field public total:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    iput-wide p1, p0, Lcom/pekaka/systemui/killer/MemInfo;->total:J

    return-void
.end method


# virtual methods
.method public getAvi()J
    .locals 2

    iget-wide v0, p0, Lcom/pekaka/systemui/killer/MemInfo;->avi:J

    return-wide v0
.end method

.method public setAvi(J)V
    .locals 0

    iput-wide p1, p0, Lcom/pekaka/systemui/killer/MemInfo;->avi:J

    invoke-virtual {p0}, Lcom/pekaka/systemui/killer/MemInfo;->setChanged()V

    invoke-virtual {p0, p0}, Lcom/pekaka/systemui/killer/MemInfo;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
