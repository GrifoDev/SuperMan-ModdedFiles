.class final Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;
.super Ljava/lang/Object;
.source "DraconianErrorHandler.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# static fields
.field private static final ERROR_HANDLER_INSTANCE:Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;->ERROR_HANDLER_INSTANCE:Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;->ERROR_HANDLER_INSTANCE:Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;

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
