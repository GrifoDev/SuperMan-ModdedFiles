.class public Lmf/org/apache/xerces/dom/ASDOMImplementationImpl;
.super Lmf/org/apache/xerces/dom/DOMImplementationImpl;
.source "ASDOMImplementationImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom3/as/DOMImplementationAS;


# static fields
.field static final singleton:Lmf/org/apache/xerces/dom/ASDOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/ASDOMImplementationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/ASDOMImplementationImpl;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/ASDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/ASDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/dom/ASDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/ASDOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method public createAS(Z)Lmf/org/apache/xerces/dom3/as/ASModel;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/ASModelImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/dom/ASModelImpl;-><init>(Z)V

    return-object v0
.end method

.method public createDOMASBuilder()Lmf/org/apache/xerces/dom3/as/DOMASBuilder;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/parsers/DOMASBuilderImpl;-><init>()V

    return-object v0
.end method

.method public createDOMASWriter()Lmf/org/apache/xerces/dom3/as/DOMASWriter;
    .locals 3

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_SUPPORTED_ERR"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method
