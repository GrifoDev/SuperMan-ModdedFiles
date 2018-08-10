.class public final Landroid/content/res/ResourceId;
.super Ljava/lang/Object;
.source "ResourceId.java"


# static fields
.field public static final ID_NULL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
