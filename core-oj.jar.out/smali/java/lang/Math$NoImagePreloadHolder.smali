.class Ljava/lang/Math$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "Math.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Math;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/Random;


# direct methods
.method static synthetic -get0()Ljava/util/Random;
    .locals 1

    sget-object v0, Ljava/lang/Math$NoImagePreloadHolder;->INSTANCE:Ljava/util/Random;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljava/lang/Math$NoImagePreloadHolder;->INSTANCE:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
