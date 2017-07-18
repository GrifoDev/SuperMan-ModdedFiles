.class Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;
.super Lcom/gsma/services/rcs/sharing/image/IImageSharingListener$Stub;
.source "ImageSharingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->addEventListener(Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

.field final synthetic val$listener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

    iput-object p2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;->val$listener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;->val$listener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;

    invoke-virtual {v2, p1, v1}, Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    return-void
.end method

.method public onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;->val$listener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    invoke-static {}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v6, v5

    invoke-virtual {v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v2, v5, v4

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;->val$listener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;

    invoke-virtual {v4, p1, p2, v1, v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;)V

    return-void
.end method
