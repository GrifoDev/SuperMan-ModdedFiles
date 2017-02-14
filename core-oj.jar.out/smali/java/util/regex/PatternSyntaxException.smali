.class public Ljava/util/regex/PatternSyntaxException;
.super Ljava/lang/IllegalArgumentException;
.source "PatternSyntaxException.java"


# static fields
.field private static final nl:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x35a1f4cf3fc7bfd2L


# instance fields
.field private final desc:Ljava/lang/String;

.field private final index:I

.field private final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "line.separator"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Ljava/util/regex/PatternSyntaxException;->nl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    iput-object p1, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    iput-object p2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    iput p3, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    if-ltz v2, :cond_0

    const-string/jumbo v2, " near index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    sget-object v2, Ljava/util/regex/PatternSyntaxException;->nl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    if-ltz v2, :cond_2

    sget-object v2, Ljava/util/regex/PatternSyntaxException;->nl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    if-ge v0, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x5e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    return-object v0
.end method
