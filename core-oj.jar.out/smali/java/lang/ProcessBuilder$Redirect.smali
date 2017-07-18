.class public abstract Ljava/lang/ProcessBuilder$Redirect;
.super Ljava/lang/Object;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Redirect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessBuilder$Redirect$1;,
        Ljava/lang/ProcessBuilder$Redirect$2;,
        Ljava/lang/ProcessBuilder$Redirect$Type;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final INHERIT:Ljava/lang/ProcessBuilder$Redirect;

.field public static final PIPE:Ljava/lang/ProcessBuilder$Redirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/ProcessBuilder$Redirect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/lang/ProcessBuilder$Redirect;->-assertionsDisabled:Z

    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$1;

    invoke-direct {v0}, Ljava/lang/ProcessBuilder$Redirect$1;-><init>()V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$2;

    invoke-direct {v0}, Ljava/lang/ProcessBuilder$Redirect$2;-><init>()V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ProcessBuilder$Redirect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ProcessBuilder$Redirect;-><init>()V

    return-void
.end method

.method public static appendTo(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$5;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$5;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static from(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$3;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$3;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$4;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$4;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method append()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Ljava/lang/ProcessBuilder$Redirect;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    sget-boolean v3, Ljava/lang/ProcessBuilder$Redirect;->-assertionsDisabled:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_0
    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public file()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v1

    return v1
.end method

.method public abstract type()Ljava/lang/ProcessBuilder$Redirect$Type;
.end method
