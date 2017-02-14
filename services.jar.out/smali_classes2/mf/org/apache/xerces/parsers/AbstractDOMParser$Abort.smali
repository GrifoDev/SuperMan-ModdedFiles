.class final Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;
.super Ljava/lang/RuntimeException;
.source "AbstractDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/parsers/AbstractDOMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Abort"
.end annotation


# static fields
.field static final INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

.field private static final serialVersionUID:J = 0x176c71b7e417be2aL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    invoke-direct {v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method
