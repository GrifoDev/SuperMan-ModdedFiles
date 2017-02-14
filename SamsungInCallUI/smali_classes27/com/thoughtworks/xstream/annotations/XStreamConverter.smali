.class public interface abstract annotation Lcom/thoughtworks/xstream/annotations/XStreamConverter;
.super Ljava/lang/Object;
.source "XStreamConverter.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/thoughtworks/xstream/annotations/XStreamConverter;
        booleans = {}
        bytes = {}
        chars = {}
        doubles = {}
        floats = {}
        ints = {}
        longs = {}
        priority = 0x0
        shorts = {}
        strings = {}
        types = {}
        useImplicitType = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract booleans()[Z
.end method

.method public abstract bytes()[B
.end method

.method public abstract chars()[C
.end method

.method public abstract doubles()[D
.end method

.method public abstract floats()[F
.end method

.method public abstract ints()[I
.end method

.method public abstract longs()[J
.end method

.method public abstract priority()I
.end method

.method public abstract shorts()[S
.end method

.method public abstract strings()[Ljava/lang/String;
.end method

.method public abstract types()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract useImplicitType()Z
.end method

.method public abstract value()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/thoughtworks/xstream/converters/ConverterMatcher;",
            ">;"
        }
    .end annotation
.end method
