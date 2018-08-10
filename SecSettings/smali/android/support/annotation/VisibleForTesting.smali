.class public interface abstract annotation Landroid/support/annotation/VisibleForTesting;
.super Ljava/lang/Object;
.source "VisibleForTesting.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract otherwise()I
.end method
