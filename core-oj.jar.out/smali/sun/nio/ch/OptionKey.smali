.class Lsun/nio/ch/OptionKey;
.super Ljava/lang/Object;
.source "OptionKey.java"


# instance fields
.field private level:I

.field private name:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsun/nio/ch/OptionKey;->level:I

    iput p2, p0, Lsun/nio/ch/OptionKey;->name:I

    return-void
.end method


# virtual methods
.method level()I
    .locals 1

    iget v0, p0, Lsun/nio/ch/OptionKey;->level:I

    return v0
.end method

.method name()I
    .locals 1

    iget v0, p0, Lsun/nio/ch/OptionKey;->name:I

    return v0
.end method
