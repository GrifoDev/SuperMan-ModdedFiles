.class final Ljava/text/EntryPair;
.super Ljava/lang/Object;
.source "EntryPair.java"


# instance fields
.field public entryName:Ljava/lang/String;

.field public fwd:Z

.field public value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/text/EntryPair;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/text/EntryPair;->entryName:Ljava/lang/String;

    iput p2, p0, Ljava/text/EntryPair;->value:I

    iput-boolean p3, p0, Ljava/text/EntryPair;->fwd:Z

    return-void
.end method
