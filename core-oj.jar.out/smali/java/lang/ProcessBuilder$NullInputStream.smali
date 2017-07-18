.class Ljava/lang/ProcessBuilder$NullInputStream;
.super Ljava/io/InputStream;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NullInputStream"
.end annotation


# static fields
.field static final INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ProcessBuilder$NullInputStream;

    invoke-direct {v0}, Ljava/lang/ProcessBuilder$NullInputStream;-><init>()V

    sput-object v0, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
