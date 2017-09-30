.class public Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;
    }
.end annotation


# static fields
.field public static final STATE_ACTIVE:Ljava/lang/String; = "active"

.field public static final STATE_IDLE:Ljava/lang/String; = "idle"


# instance fields
.field public contentType:Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;

.field public refreshTime:I

.field public senderId:J

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;->senderId:J

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;->state:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;->contentType:Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus$TypingStatusContentType;

    iput p5, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoomTypingStatus;->refreshTime:I

    return-void
.end method
