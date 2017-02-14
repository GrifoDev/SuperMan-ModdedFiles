.class final Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
.super Ljava/lang/Object;
.source "CoreDOMImplementationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RevalidationHandlerHolder"
.end annotation


# instance fields
.field handler:Lmf/org/apache/xerces/impl/RevalidationHandler;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/RevalidationHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    return-void
.end method
