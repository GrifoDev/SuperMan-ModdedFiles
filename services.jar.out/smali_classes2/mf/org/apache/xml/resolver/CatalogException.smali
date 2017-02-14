.class public Lmf/org/apache/xml/resolver/CatalogException;
.super Ljava/lang/Exception;
.source "CatalogException.java"


# static fields
.field public static final INVALID_ENTRY:I = 0x2

.field public static final INVALID_ENTRY_TYPE:I = 0x3

.field public static final NO_XML_PARSER:I = 0x4

.field public static final PARSE_FAILED:I = 0x7

.field public static final UNENDED_COMMENT:I = 0x8

.field public static final UNKNOWN_FORMAT:I = 0x5

.field public static final UNPARSEABLE:I = 0x6

.field public static final WRAPPER:I = 0x1


# instance fields
.field private exception:Ljava/lang/Exception;

.field private exceptionType:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Catalog Exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exceptionType:I

    iput p1, p0, Lmf/org/apache/xml/resolver/CatalogException;->exceptionType:I

    iput-object v2, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exceptionType:I

    iput p1, p0, Lmf/org/apache/xml/resolver/CatalogException;->exceptionType:I

    iput-object v1, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exceptionType:I

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exceptionType:I

    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exceptionType:I

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exceptionType:I

    iput-object p2, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getExceptionType()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exceptionType:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
