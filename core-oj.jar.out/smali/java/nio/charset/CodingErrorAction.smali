.class public Ljava/nio/charset/CodingErrorAction;
.super Ljava/lang/Object;
.source "CodingErrorAction.java"


# static fields
.field public static final IGNORE:Ljava/nio/charset/CodingErrorAction;

.field public static final REPLACE:Ljava/nio/charset/CodingErrorAction;

.field public static final REPORT:Ljava/nio/charset/CodingErrorAction;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    const-string/jumbo v1, "IGNORE"

    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    .line 55
    sput-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    .line 64
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    const-string/jumbo v1, "REPLACE"

    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    .line 63
    sput-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 73
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    const-string/jumbo v1, "REPORT"

    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    .line 72
    sput-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ljava/nio/charset/CodingErrorAction;->name:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ljava/nio/charset/CodingErrorAction;->name:Ljava/lang/String;

    return-object v0
.end method
