.class public interface abstract Lcn/com/xy/sms/sdk/Iservice/OnlineParseInterface;
.super Ljava/lang/Object;
.source "Unknown"


# virtual methods
.method public abstract getActionCode(Ljava/lang/String;)I
.end method

.method public abstract getCorp(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getReqVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSceneVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSmsTypeByMap(Ljava/util/Map;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract isAppChannel(Ljava/lang/String;)Z
.end method

.method public abstract isEnterpriseSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isServiceChoose(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract parseMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parseMsgToNewContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract parseVerCode(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
