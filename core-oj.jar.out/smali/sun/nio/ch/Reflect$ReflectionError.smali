.class Lsun/nio/ch/Reflect$ReflectionError;
.super Ljava/lang/Error;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Reflect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectionError"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x782ccaf2e3ba7081L


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
