.class public Ljava/lang/annotation/AnnotationTypeMismatchException;
.super Ljava/lang/RuntimeException;
.source "AnnotationTypeMismatchException.java"


# static fields
.field private static final serialVersionUID:J = 0x70c5160eddbf1a8fL


# instance fields
.field private final element:Ljava/lang/reflect/Method;

.field private final foundType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/reflect/Method;
    .param p2, "foundType"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Incorrectly typed data found for annotation element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const-string/jumbo v1, " (Found data of type "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const-string/jumbo v1, ")"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->element:Ljava/lang/reflect/Method;

    .line 69
    iput-object p2, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->foundType:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public element()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->element:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public foundType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->foundType:Ljava/lang/String;

    return-object v0
.end method
