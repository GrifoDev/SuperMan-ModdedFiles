.class Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field lastrendered:Ljava/lang/String;

.field level:I

.field n:Lorg/w3c/dom/Attr;

.field rendered:Z

.field uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Attr;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->uri:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method
