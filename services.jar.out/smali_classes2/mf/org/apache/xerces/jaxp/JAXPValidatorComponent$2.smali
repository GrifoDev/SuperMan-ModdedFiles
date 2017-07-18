.class Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$2;
.super Lmf/org/apache/xerces/util/ErrorHandlerProxy;
.source "JAXPValidatorComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;-><init>(Lmf/javax/xml/validation/ValidatorHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$2;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-direct {p0}, Lmf/org/apache/xerces/util/ErrorHandlerProxy;-><init>()V

    return-void
.end method


# virtual methods
.method protected getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$2;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$5(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-static {}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;->getInstance()Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    return-object v0

    :cond_0
    return-object v0
.end method
