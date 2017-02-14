.class public Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;
.super Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InternalEntity"
.end annotation


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;-><init>()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;->clear()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    return-void
.end method

.method public final isExternal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isUnparsed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;)V
    .locals 1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;)V
    .locals 1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->setValues(Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;)V

    iget-object v0, p1, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    return-void
.end method
