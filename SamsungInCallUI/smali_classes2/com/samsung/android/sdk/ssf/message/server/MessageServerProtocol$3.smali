.class Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$3;
.super Lcom/google/gson/reflect/TypeToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;->deliverInviteReply(Lcom/samsung/android/sdk/ssf/message/MessageChannelListener;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteRequest;Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InviteReply;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol$3;->this$0:Lcom/samsung/android/sdk/ssf/message/server/MessageServerProtocol;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
