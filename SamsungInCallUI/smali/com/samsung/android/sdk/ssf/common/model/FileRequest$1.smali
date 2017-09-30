.class Lcom/samsung/android/sdk/ssf/common/model/FileRequest$1;
.super Lcom/samsung/android/sdk/ssf/common/model/FileRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->redirectRequest(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/ssf/common/model/FileRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/ssf/common/model/FileRequest;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/ssf/common/model/FileRequest;ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V
    .locals 6

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest$1;->this$0:Lcom/samsung/android/sdk/ssf/common/model/FileRequest;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method
