.class public Lcom/samsung/android/sdk/ssf/message/MessageUser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDuid(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/ssf/SsfListener;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;

    invoke-direct {v0, p3}, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p0, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerProtocol;->getChatId(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;Ljava/lang/Object;)V

    return-void
.end method

.method public static getMsisdn(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/android/sdk/ssf/SsfListener;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;

    invoke-direct {v0, p3}, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p0, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerProtocol;->getMsisdn(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;Ljava/lang/Object;)V

    return-void
.end method
