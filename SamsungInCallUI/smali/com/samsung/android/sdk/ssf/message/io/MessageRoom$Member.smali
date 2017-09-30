.class public Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Member"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;
    }
.end annotation


# instance fields
.field private chatId:J

.field private msisdn:Ljava/lang/String;

.field private status:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->chatId:J

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->msisdn:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->status:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    return-void
.end method


# virtual methods
.method public getChatId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->chatId:J

    return-wide v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member;->status:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Member$Status;

    return-object v0
.end method
