.class Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;
.super Ljava/lang/Object;
.source "DocumentImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/dom/DocumentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnclosingAttr"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4847e90a0943bdf0L


# instance fields
.field node:Lmf/org/apache/xerces/dom/AttrImpl;

.field oldvalue:Ljava/lang/String;

.field final synthetic this$0:Lmf/org/apache/xerces/dom/DocumentImpl;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DocumentImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DocumentImpl$EnclosingAttr;->this$0:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
