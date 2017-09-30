.class public Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse$ChatUser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatUser"
.end annotation


# instance fields
.field private chatid:J

.field private msisdn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse$ChatUser;->msisdn:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse$ChatUser;->chatid:J

    return-void
.end method


# virtual methods
.method public getChatid()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse$ChatUser;->chatid:J

    return-wide v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidResponse$ChatUser;->msisdn:Ljava/lang/String;

    return-object v0
.end method
