.class final Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;
.super Ljava/lang/Object;
.source "DOMParserImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSParserFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/parsers/DOMParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NullLSParserFilter"
.end annotation


# static fields
.field static final INSTANCE:Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;

    invoke-direct {v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;->INSTANCE:Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptNode(Lmf/org/w3c/dom/Node;)S
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getWhatToShow()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public startElement(Lmf/org/w3c/dom/Element;)S
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
