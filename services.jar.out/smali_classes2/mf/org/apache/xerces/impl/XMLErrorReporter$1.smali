.class Lmf/org/apache/xerces/impl/XMLErrorReporter$1;
.super Lmf/org/apache/xerces/util/ErrorHandlerProxy;
.source "XMLErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/impl/XMLErrorReporter;->getSAXErrorHandler()Lorg/xml/sax/ErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLErrorReporter;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter$1;->this$0:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {p0}, Lmf/org/apache/xerces/util/ErrorHandlerProxy;-><init>()V

    return-void
.end method


# virtual methods
.method protected getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLErrorReporter$1;->this$0:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    return-object v0
.end method
