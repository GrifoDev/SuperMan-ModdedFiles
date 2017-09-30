.class public interface abstract Lcom/gsma/services/rcs/filetransfer/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/f$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
.end method

.method public abstract a(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
.end method

.method public abstract a(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
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
.end method
