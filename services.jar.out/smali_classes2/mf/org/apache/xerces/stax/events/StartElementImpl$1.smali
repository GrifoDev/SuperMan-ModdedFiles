.class Lmf/org/apache/xerces/stax/events/StartElementImpl$1;
.super Ljava/lang/Object;
.source "StartElementImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/stax/events/StartElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lmf/javax/xml/namespace/QName;

    check-cast p2, Lmf/javax/xml/namespace/QName;

    invoke-virtual {p1}, Lmf/javax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method
