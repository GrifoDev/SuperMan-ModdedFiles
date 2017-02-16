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

    .prologue
    const-class v0, Ljava/lang/ProcessBuilder$Redirect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/lang/ProcessBuilder$Redirect;->-assertionsDisabled:Z

    .line 448
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$1;

    invoke-direct {v0}, Ljava/lang/ProcessBuilder$Redirect$1;-><init>()V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    .line 463
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$2;

    invoke-direct {v0}, Ljava/lang/ProcessBuilder$Redirect$2;-><init>()V

    sput-object v0, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    .line 396
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ProcessBuilder$Redirect;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/ProcessBuilder$Redirect;-><init>()V

    return-void
.end method

.method public static appendTo(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 553
    if-nez p0, :cond_0

    .line 554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 555
    :cond_0
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$5;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$5;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static from(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 497
    if-nez p0, :cond_0

    .line 498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$3;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$3;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 523
    if-nez p0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 525
    :cond_0
    new-instance v0, Ljava/lang/ProcessBuilder$Redirect$4;

    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder$Redirect$4;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method append()Z
    .locals 1

    .prologue
    .line 481
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 573
    if-ne p1, p0, :cond_0

    .line 574
    return v1

    .line 575
    :cond_0
    instance-of v3, p1, Ljava/lang/ProcessBuilder$Redirect;

    if-nez v3, :cond_1

    .line 576
    return v2

    :cond_1
    move-object v0, p1

    .line 577
    nop

    nop

    .line 578
    .local v0, "r":Ljava/lang/ProcessBuilder$Redirect;
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 579
    return v2

    .line 580
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

    .line 581
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

    .prologue
    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 589
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder$Redirect;->file()Ljava/io/File;

    move-result-object v0

    .line 590
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 591
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1

    .line 593
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v1

    return v1
.end method

.method public abstract type()Ljava/lang/ProcessBuilder$Redirect$Type;
.end method
