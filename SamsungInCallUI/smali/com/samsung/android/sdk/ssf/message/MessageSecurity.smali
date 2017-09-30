.class public Lcom/samsung/android/sdk/ssf/message/MessageSecurity;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKey(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->validateInstance()Z

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid listener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;

    invoke-direct {v0, p2}, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p0, p1, v0, p3}, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerProtocol;->sendGetKeyRequest(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;Ljava/lang/Object;)V

    return-void
.end method

.method public static getPublicKey(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/util/ArrayList;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/android/sdk/ssf/SsfListener;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid listener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;

    invoke-direct {v0, p3}, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p0, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerProtocol;->sendGetPublicKeyRequest(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/util/ArrayList;Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;Ljava/lang/Object;)V

    return-void
.end method

.method public static setPublicKey(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/message/io/PublicKeySet;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;)V
    .locals 2

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid listener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;

    invoke-direct {v0, p3}, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p0, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/message/server/ServiceServerProtocol;->sendSetPublicKeyRequest(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/message/io/PublicKeySet;Lcom/samsung/android/sdk/ssf/message/server/ServiceServerResponseListener;Ljava/lang/Object;)V

    return-void
.end method
