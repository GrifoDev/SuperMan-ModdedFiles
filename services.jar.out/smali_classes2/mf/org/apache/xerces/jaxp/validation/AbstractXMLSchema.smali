.class abstract Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;
.super Lmf/javax/xml/validation/Schema;
.source "AbstractXMLSchema.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;


# instance fields
.field private final fFeatures:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/javax/xml/validation/Schema;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;->fFeatures:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getFeature(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final newValidator()Lmf/javax/xml/validation/Validator;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorImpl;-><init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    return-object v0
.end method

.method public final newValidatorHandler()Lmf/javax/xml/validation/ValidatorHandler;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;-><init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    return-object v0
.end method

.method final setFeature(Ljava/lang/String;Z)V
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/AbstractXMLSchema;->fFeatures:Ljava/util/HashMap;

    if-nez p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method
