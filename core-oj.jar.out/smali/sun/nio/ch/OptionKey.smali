.class Lsun/nio/ch/OptionKey;
.super Ljava/lang/Object;
.source "OptionKey.java"


# instance fields
.field private level:I

.field private name:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "name"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lsun/nio/ch/OptionKey;->level:I

    .line 38
    iput p2, p0, Lsun/nio/ch/OptionKey;->name:I

    .line 36
    return-void
.end method


# virtual methods
.method level()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lsun/nio/ch/OptionKey;->level:I

    return v0
.end method

.method name()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lsun/nio/ch/OptionKey;->name:I

    return v0
.end method
