.class public Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private to_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/RecipientData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->to_list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "to_list is mandatory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->message:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->message:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->message:Ljava/lang/String;

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->to_list:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest;->to_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/RecipientData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->to_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setRecipients(Ljava/util/ArrayList;)Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/RecipientData;",
            ">;)",
            "Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->to_list:Ljava/util/ArrayList;

    return-object p0
.end method
