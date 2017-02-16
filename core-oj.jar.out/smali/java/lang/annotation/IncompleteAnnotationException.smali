.class public Ljava/lang/annotation/IncompleteAnnotationException;
.super Ljava/lang/RuntimeException;
.source "IncompleteAnnotationException.java"


# static fields
.field private static final serialVersionUID:J = 0x75330357ffffeac8L


# instance fields
.field private annotationType:Ljava/lang/Class;

.field private elementName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p2, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " missing element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Ljava/lang/annotation/IncompleteAnnotationException;->annotationType:Ljava/lang/Class;

    .line 61
    iput-object p2, p0, Ljava/lang/annotation/IncompleteAnnotationException;->elementName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Ljava/lang/annotation/IncompleteAnnotationException;->annotationType:Ljava/lang/Class;

    return-object v0
.end method

.method public elementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ljava/lang/annotation/IncompleteAnnotationException;->elementName:Ljava/lang/String;

    return-object v0
.end method
