.class public Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
.super Ljava/lang/Object;
.source "CoverBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastInfo"
.end annotation


# instance fields
.field public mItem:Ljava/lang/Object;

.field public mWhen:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mWhen:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "when=%s, item=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mWhen:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
