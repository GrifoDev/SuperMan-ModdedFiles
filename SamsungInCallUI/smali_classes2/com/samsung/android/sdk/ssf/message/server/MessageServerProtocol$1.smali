.class Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$1;->this$0:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)I
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSentTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;->getSentTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    check-cast p2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$1;->compare(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntry;)I

    move-result v0

    return v0
.end method
