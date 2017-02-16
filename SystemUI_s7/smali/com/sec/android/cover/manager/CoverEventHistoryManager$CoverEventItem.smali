.class public Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;
.super Ljava/lang/Object;
.source "CoverEventHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverEventHistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverEventItem"
.end annotation


# instance fields
.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public mTimeStamp:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/cover/CoverState;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iput-wide p2, p0, Lcom/sec/android/cover/manager/CoverEventHistoryManager$CoverEventItem;->mTimeStamp:J

    return-void
.end method
