.class public Lcom/samsung/android/sdk/ssf/message/io/User;
.super Ljava/lang/Object;


# instance fields
.field private chatid:J

.field private msisdn:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/User;->chatid:J

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/io/User;->msisdn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChatId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/User;->chatid:J

    return-wide v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/User;->msisdn:Ljava/lang/String;

    return-object v0
.end method
