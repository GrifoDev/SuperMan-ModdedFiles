.class public interface abstract Lcom/gsma/services/rcs/contact/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/contact/b$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/gsma/services/rcs/contact/ContactId;)V
.end method

.method public abstract c(Lcom/gsma/services/rcs/contact/ContactId;)V
.end method
