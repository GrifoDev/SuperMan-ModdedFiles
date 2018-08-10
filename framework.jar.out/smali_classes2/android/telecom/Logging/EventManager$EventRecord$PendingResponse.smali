.class Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager$EventRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingResponse"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field requestEventId:Ljava/lang/String;

.field requestEventTimeMillis:J

.field final synthetic this$1:Landroid/telecom/Logging/EventManager$EventRecord;

.field timeoutMillis:J


# direct methods
.method public constructor <init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->this$1:Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->requestEventId:Ljava/lang/String;

    iput-wide p3, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->requestEventTimeMillis:J

    iput-wide p5, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->timeoutMillis:J

    iput-object p7, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->name:Ljava/lang/String;

    return-void
.end method
