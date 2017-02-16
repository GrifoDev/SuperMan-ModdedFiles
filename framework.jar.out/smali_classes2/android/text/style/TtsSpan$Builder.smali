.class public Landroid/text/style/TtsSpan$Builder;
.super Ljava/lang/Object;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Landroid/text/style/TtsSpan$Builder",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mArgs:Landroid/os/PersistableBundle;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 534
    .local p0, "this":Landroid/text/style/TtsSpan$Builder;, "Landroid/text/style/TtsSpan$Builder<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/text/style/TtsSpan$Builder;->mArgs:Landroid/os/PersistableBundle;

    .line 535
    iput-object p1, p0, Landroid/text/style/TtsSpan$Builder;->mType:Ljava/lang/String;

    .line 534
    return-void
.end method


# virtual methods
.method public build()Landroid/text/style/TtsSpan;
    .locals 3

    .prologue
    .line 544
    .local p0, "this":Landroid/text/style/TtsSpan$Builder;, "Landroid/text/style/TtsSpan$Builder<TC;>;"
    new-instance v0, Landroid/text/style/TtsSpan;

    iget-object v1, p0, Landroid/text/style/TtsSpan$Builder;->mType:Ljava/lang/String;

    iget-object v2, p0, Landroid/text/style/TtsSpan$Builder;->mArgs:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1, v2}, Landroid/text/style/TtsSpan;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TC;"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "this":Landroid/text/style/TtsSpan$Builder;, "Landroid/text/style/TtsSpan$Builder<TC;>;"
    iget-object v0, p0, Landroid/text/style/TtsSpan$Builder;->mArgs:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 567
    return-object p0
.end method

.method public setLongArgument(Ljava/lang/String;J)Landroid/text/style/TtsSpan$Builder;
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TC;"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "this":Landroid/text/style/TtsSpan$Builder;, "Landroid/text/style/TtsSpan$Builder<TC;>;"
    iget-object v0, p0, Landroid/text/style/TtsSpan$Builder;->mArgs:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 578
    return-object p0
.end method

.method public setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Landroid/text/style/TtsSpan$Builder;, "Landroid/text/style/TtsSpan$Builder<TC;>;"
    iget-object v0, p0, Landroid/text/style/TtsSpan$Builder;->mArgs:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-object p0
.end method
