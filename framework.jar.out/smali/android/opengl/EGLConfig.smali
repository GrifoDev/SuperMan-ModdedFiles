.class public Landroid/opengl/EGLConfig;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLConfig.java"


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLObjectHandle;-><init>(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Landroid/opengl/EGLConfig;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/opengl/EGLConfig;

    invoke-virtual {p0}, Landroid/opengl/EGLConfig;->getNativeHandle()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/opengl/EGLConfig;->getNativeHandle()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method
