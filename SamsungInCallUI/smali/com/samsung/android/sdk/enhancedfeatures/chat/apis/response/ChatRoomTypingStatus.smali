.class public Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;
    }
.end annotation


# static fields
.field public static final STATE_ACTIVE:Ljava/lang/String; = "active"

.field public static final STATE_IDLE:Ljava/lang/String; = "idle"


# instance fields
.field public contentType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

.field public refreshTime:I

.field public senderId:J

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus;->senderId:J

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus;->state:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus;->contentType:Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus$TypingStatusContentType;

    iput p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/response/ChatRoomTypingStatus;->refreshTime:I

    return-void
.end method
