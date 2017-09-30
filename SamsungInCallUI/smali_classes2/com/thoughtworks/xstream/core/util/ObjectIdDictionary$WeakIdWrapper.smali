.class Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;
.super Ljava/lang/ref/WeakReference;

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$Wrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeakIdWrapper"
.end annotation


# instance fields
.field private final hashCode:I

.field final synthetic this$0:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;->this$0:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    invoke-static {p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->access$000(Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$Wrapper;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$Wrapper;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary$WeakIdWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "(null)"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
