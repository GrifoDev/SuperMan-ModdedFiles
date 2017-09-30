.class public interface abstract Lcom/gsma/services/rcs/sharing/geoloc/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/geoloc/d$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/sharing/geoloc/b;
.end method

.method public abstract a(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/b;
.end method

.method public abstract a(Lcom/gsma/services/rcs/b;)V
.end method

.method public abstract a(Lcom/gsma/services/rcs/contact/ContactId;)V
.end method

.method public abstract a(Lcom/gsma/services/rcs/sharing/geoloc/c;)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/gsma/services/rcs/b;)V
.end method

.method public abstract b(Lcom/gsma/services/rcs/sharing/geoloc/c;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c()I
.end method

.method public abstract d()V
.end method
