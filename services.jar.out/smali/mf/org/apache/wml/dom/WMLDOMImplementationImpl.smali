.class public Lmf/org/apache/wml/dom/WMLDOMImplementationImpl;
.super Lmf/org/apache/xerces/dom/DOMImplementationImpl;
.source "WMLDOMImplementationImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLDOMImplementation;


# static fields
.field static final singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/wml/dom/WMLDOMImplementationImpl;

    invoke-direct {v0}, Lmf/org/apache/wml/dom/WMLDOMImplementationImpl;-><init>()V

    sput-object v0, Lmf/org/apache/wml/dom/WMLDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lmf/org/apache/wml/dom/WMLDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method protected createDocument(Lmf/org/w3c/dom/DocumentType;)Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .locals 1

    new-instance v0, Lmf/org/apache/wml/dom/WMLDocumentImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/wml/dom/WMLDocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;)V

    return-object v0
.end method
