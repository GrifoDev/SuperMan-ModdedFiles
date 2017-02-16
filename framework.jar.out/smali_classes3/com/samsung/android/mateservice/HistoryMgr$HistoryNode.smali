.class Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;
.super Ljava/lang/Object;
.source "HistoryMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mateservice/HistoryMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryNode"
.end annotation


# instance fields
.field msg:Ljava/lang/String;

.field timeStamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;->timeStamp:J

    .line 82
    iput-object p1, p0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;->msg:Ljava/lang/String;

    .line 80
    return-void
.end method

.method constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;->msg:Ljava/lang/String;

    .line 87
    iput-wide p2, p0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;->timeStamp:J

    .line 85
    return-void
.end method
