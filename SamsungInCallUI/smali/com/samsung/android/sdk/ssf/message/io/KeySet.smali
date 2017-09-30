.class public Lcom/samsung/android/sdk/ssf/message/io/KeySet;
.super Ljava/lang/Object;


# instance fields
.field private chatid:J

.field private expiredkey:Ljava/lang/String;

.field private gpbauthkey:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->chatid:J

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->key:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->expiredkey:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->gpbauthkey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChatid()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->chatid:J

    return-wide v0
.end method

.method public getExpiredkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->expiredkey:Ljava/lang/String;

    return-object v0
.end method

.method public getGpbauthkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->gpbauthkey:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/KeySet;->key:Ljava/lang/String;

    return-object v0
.end method
