.class final Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
.super Ljava/lang/Object;
.source "CoreDOMImplementationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XMLDTDLoaderHolder"
.end annotation


# instance fields
.field loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    return-void
.end method
