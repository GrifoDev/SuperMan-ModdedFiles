.class public interface abstract annotation Landroid/annotation/BroadcastBehavior;
.super Ljava/lang/Object;
.source "BroadcastBehavior.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/annotation/BroadcastBehavior;
        explicitOnly = false
        includeBackground = false
        protectedBroadcast = false
        registeredOnly = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract explicitOnly()Z
.end method

.method public abstract includeBackground()Z
.end method

.method public abstract protectedBroadcast()Z
.end method

.method public abstract registeredOnly()Z
.end method
