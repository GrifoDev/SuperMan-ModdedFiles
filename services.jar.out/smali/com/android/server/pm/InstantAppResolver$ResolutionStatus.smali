.class public interface abstract annotation Lcom/android/server/pm/InstantAppResolver$ResolutionStatus;
.super Ljava/lang/Object;
.source "InstantAppResolver.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/annotation/IntDef;
    flag = true
    prefix = {
        "RESOLUTION_"
    }
    value = {
        0x0L,
        0x1L,
        0x2L,
        0x3L
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstantAppResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ResolutionStatus"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
