.class final Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;
.super Ljava/lang/Object;
.source "JAXPValidatorComponent.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DraconianErrorHandler"
.end annotation


# static fields
.field private static final ERROR_HANDLER_INSTANCE:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;->ERROR_HANDLER_INSTANCE:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;->ERROR_HANDLER_INSTANCE:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;

    return-object v0
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    throw p1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
