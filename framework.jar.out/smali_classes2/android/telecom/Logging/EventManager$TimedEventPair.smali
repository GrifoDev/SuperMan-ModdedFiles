.class public Landroid/telecom/Logging/EventManager$TimedEventPair;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimedEventPair"
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0xbb8L


# instance fields
.field mName:Ljava/lang/String;

.field mRequest:Ljava/lang/String;

.field mResponse:Ljava/lang/String;

.field mTimeoutMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mTimeoutMillis:J

    iput-object p1, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    iput-object p2, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mResponse:Ljava/lang/String;

    iput-object p3, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mTimeoutMillis:J

    iput-object p1, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    iput-object p2, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mResponse:Ljava/lang/String;

    iput-object p3, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mName:Ljava/lang/String;

    iput-wide p4, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mTimeoutMillis:J

    return-void
.end method
