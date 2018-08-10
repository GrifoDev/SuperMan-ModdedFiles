.class Lcom/samsung/android/friends/common/LoggerImpl$Node;
.super Ljava/lang/Object;
.source "LoggerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/friends/common/LoggerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field msg:Ljava/lang/String;

.field timeStamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/friends/common/LoggerImpl$Node;->timeStamp:J

    iput-object p1, p0, Lcom/samsung/android/friends/common/LoggerImpl$Node;->msg:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/common/LoggerImpl$Node;->msg:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/friends/common/LoggerImpl$Node;->timeStamp:J

    return-void
.end method
