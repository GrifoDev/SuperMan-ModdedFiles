.class public interface abstract Lcom/gsma/services/rcs/chat/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/c$a;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/e;
.end method

.method public abstract a(Ljava/util/List;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gsma/services/rcs/chat/e;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/chat/g;
.end method

.method public abstract a(Lcom/gsma/services/rcs/b;)V
.end method

.method public abstract a(Lcom/gsma/services/rcs/chat/f;)V
.end method

.method public abstract a(Lcom/gsma/services/rcs/chat/h;)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Z)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Lcom/gsma/services/rcs/chat/d;
.end method

.method public abstract b(Lcom/gsma/services/rcs/b;)V
.end method

.method public abstract b(Lcom/gsma/services/rcs/chat/f;)V
.end method

.method public abstract b(Lcom/gsma/services/rcs/chat/h;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/gsma/services/rcs/contact/ContactId;)Z
.end method

.method public abstract c(Lcom/gsma/services/rcs/contact/ContactId;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract c()Z
.end method

.method public abstract d(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()V
.end method

.method public abstract d(Ljava/lang/String;)V
.end method

.method public abstract e(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/b;
.end method

.method public abstract e()V
.end method

.method public abstract f()I
.end method
