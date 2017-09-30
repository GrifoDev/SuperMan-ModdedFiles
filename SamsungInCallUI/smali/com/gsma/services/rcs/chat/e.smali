.class public interface abstract Lcom/gsma/services/rcs/chat/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/e$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/b;
.end method

.method public abstract a(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/b;
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Z)V
.end method

.method public abstract a(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()Ljava/util/Map;
.end method

.method public abstract d()I
.end method

.method public abstract e()Lcom/gsma/services/rcs/chat/GroupChat$State;
.end method

.method public abstract f()Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
.end method

.method public abstract g()V
.end method

.method public abstract h()Z
.end method

.method public abstract i()Z
.end method

.method public abstract j()I
.end method

.method public abstract k()Z
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public abstract m()V
.end method
