.class public Lmf/javax/xml/xpath/XPathConstants;
.super Ljava/lang/Object;
.source "XPathConstants.java"


# static fields
.field public static final BOOLEAN:Lmf/javax/xml/namespace/QName;

.field public static final DOM_OBJECT_MODEL:Ljava/lang/String; = "http://java.sun.com/jaxp/xpath/dom"

.field public static final NODE:Lmf/javax/xml/namespace/QName;

.field public static final NODESET:Lmf/javax/xml/namespace/QName;

.field public static final NUMBER:Lmf/javax/xml/namespace/QName;

.field public static final STRING:Lmf/javax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    const-string/jumbo v2, "NUMBER"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmf/javax/xml/xpath/XPathConstants;->NUMBER:Lmf/javax/xml/namespace/QName;

    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    const-string/jumbo v2, "STRING"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmf/javax/xml/xpath/XPathConstants;->STRING:Lmf/javax/xml/namespace/QName;

    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    const-string/jumbo v2, "BOOLEAN"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmf/javax/xml/xpath/XPathConstants;->BOOLEAN:Lmf/javax/xml/namespace/QName;

    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    const-string/jumbo v2, "NODESET"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmf/javax/xml/xpath/XPathConstants;->NODESET:Lmf/javax/xml/namespace/QName;

    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    const-string/jumbo v2, "NODE"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmf/javax/xml/xpath/XPathConstants;->NODE:Lmf/javax/xml/namespace/QName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
