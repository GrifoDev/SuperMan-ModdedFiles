.class public Lsun/util/ResourceBundleEnumeration;
.super Ljava/lang/Object;
.source "ResourceBundleEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field enumeration:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field next:Ljava/lang/String;

.field set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Enumeration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    iput-object p1, p0, Lsun/util/ResourceBundleEnumeration;->set:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lsun/util/ResourceBundleEnumeration;->iterator:Ljava/util/Iterator;

    iput-object p2, p0, Lsun/util/ResourceBundleEnumeration;->enumeration:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->enumeration:Ljava/util/Enumeration;

    if-eqz v0, :cond_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->set:Ljava/util/Set;

    iget-object v1, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v2, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/util/ResourceBundleEnumeration;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lsun/util/ResourceBundleEnumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
