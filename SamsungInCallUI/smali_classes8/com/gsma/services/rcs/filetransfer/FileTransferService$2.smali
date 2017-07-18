.class Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;
.super Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;
.source "FileTransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransferService;->addEventListener(Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

.field final synthetic val$callBackListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/filetransfer/FileTransferService;Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;->this$0:Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    iput-object p2, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .locals 2
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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;

    invoke-virtual {v1, p1, v0}, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    return-void
.end method

.method public onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferService$2;->val$callBackListener:Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/filetransfer/OneToOneFileTransferListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    return-void
.end method
