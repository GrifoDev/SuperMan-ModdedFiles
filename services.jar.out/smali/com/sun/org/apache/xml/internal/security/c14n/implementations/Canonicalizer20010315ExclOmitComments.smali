.class public Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315ExclOmitComments;
.super Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final engineGetIncludeComments()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final engineGetURI()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/2001/10/xml-exc-c14n#"

    return-object v0
.end method
