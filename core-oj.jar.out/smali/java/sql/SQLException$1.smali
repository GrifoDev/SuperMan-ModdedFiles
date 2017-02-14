.class Ljava/sql/SQLException$1;
.super Ljava/lang/Object;
.source "SQLException.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/sql/SQLException;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field cause:Ljava/lang/Throwable;

.field firstException:Ljava/sql/SQLException;

.field nextException:Ljava/sql/SQLException;

.field final synthetic this$0:Ljava/sql/SQLException;


# direct methods
.method constructor <init>(Ljava/sql/SQLException;)V
    .locals 1

    iput-object p1, p0, Ljava/sql/SQLException$1;->this$0:Ljava/sql/SQLException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljava/sql/SQLException$1;->this$0:Ljava/sql/SQLException;

    iput-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    iget-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    iput-object v0, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    iget-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/sql/SQLException$1;->next()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Throwable;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    iput-object v2, p0, Ljava/sql/SQLException$1;->firstException:Ljava/sql/SQLException;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    iget-object v1, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    if-eqz v1, :cond_2

    iget-object v0, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    iget-object v1, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Ljava/sql/SQLException$1;->cause:Ljava/lang/Throwable;

    iget-object v1, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    invoke-virtual {v1}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v1

    iput-object v1, p0, Ljava/sql/SQLException$1;->nextException:Ljava/sql/SQLException;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
