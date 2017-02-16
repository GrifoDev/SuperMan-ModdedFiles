.class Lsun/security/jca/ProviderList$ServiceList$1;
.super Ljava/lang/Object;
.source "ProviderList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/jca/ProviderList$ServiceList;->iterator()Ljava/util/Iterator;
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
        "Ljava/security/Provider$Service;",
        ">;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$1:Lsun/security/jca/ProviderList$ServiceList;


# direct methods
.method constructor <init>(Lsun/security/jca/ProviderList$ServiceList;)V
    .locals 0
    .param p1, "this$1"    # Lsun/security/jca/ProviderList$ServiceList;

    .prologue
    .line 481
    iput-object p1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->this$1:Lsun/security/jca/ProviderList$ServiceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lsun/security/jca/ProviderList$ServiceList$1;->this$1:Lsun/security/jca/ProviderList$ServiceList;

    iget v1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->index:I

    invoke-static {v0, v1}, Lsun/security/jca/ProviderList$ServiceList;->-wrap0(Lsun/security/jca/ProviderList$ServiceList;I)Ljava/security/Provider$Service;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 488
    invoke-virtual {p0}, Lsun/security/jca/ProviderList$ServiceList$1;->next()Ljava/security/Provider$Service;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/security/Provider$Service;
    .locals 3

    .prologue
    .line 489
    iget-object v1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->this$1:Lsun/security/jca/ProviderList$ServiceList;

    iget v2, p0, Lsun/security/jca/ProviderList$ServiceList$1;->index:I

    invoke-static {v1, v2}, Lsun/security/jca/ProviderList$ServiceList;->-wrap0(Lsun/security/jca/ProviderList$ServiceList;I)Ljava/security/Provider$Service;

    move-result-object v0

    .line 490
    .local v0, "s":Ljava/security/Provider$Service;
    if-nez v0, :cond_0

    .line 491
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 493
    :cond_0
    iget v1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/security/jca/ProviderList$ServiceList$1;->index:I

    .line 494
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 498
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
