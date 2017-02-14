.class Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;
.super Ljava/lang/Error;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/javax/xml/parsers/FactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationError"
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/parsers/FactoryFinder$ConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method
