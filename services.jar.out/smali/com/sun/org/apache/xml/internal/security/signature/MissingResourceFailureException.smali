.class public Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;
.super Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
.source "Unknown"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field uninitializedReference:Lcom/sun/org/apache/xml/internal/security/signature/Reference;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Reference;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;->uninitializedReference:Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;->uninitializedReference:Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/sun/org/apache/xml/internal/security/signature/Reference;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;->uninitializedReference:Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;->uninitializedReference:Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/sun/org/apache/xml/internal/security/signature/Reference;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;->uninitializedReference:Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;->uninitializedReference:Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;Lcom/sun/org/apache/xml/internal/security/signature/Reference;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;->uninitializedReference:Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;->uninitializedReference:Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    return-void
.end method


# virtual methods
.method public getReference()Lcom/sun/org/apache/xml/internal/security/signature/Reference;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;->uninitializedReference:Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    return-object v0
.end method

.method public setReference(Lcom/sun/org/apache/xml/internal/security/signature/Reference;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;->uninitializedReference:Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    return-void
.end method
