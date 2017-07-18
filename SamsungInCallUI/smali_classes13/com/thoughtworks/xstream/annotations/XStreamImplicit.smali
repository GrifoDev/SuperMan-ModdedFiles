.class public interface abstract annotation Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
.super Ljava/lang/Object;
.source "XStreamImplicit.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = ""
        keyFieldName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract itemFieldName()Ljava/lang/String;
.end method

.method public abstract keyFieldName()Ljava/lang/String;
.end method
