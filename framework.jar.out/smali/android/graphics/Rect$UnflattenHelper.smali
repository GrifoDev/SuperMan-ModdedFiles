.class final Landroid/graphics/Rect$UnflattenHelper;
.super Ljava/lang/Object;
.source "Rect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Rect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnflattenHelper"
.end annotation


# static fields
.field private static final FLATTENED_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "(-?\\d+) (-?\\d+) (-?\\d+) (-?\\d+)"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/Rect$UnflattenHelper;->FLATTENED_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Landroid/graphics/Rect$UnflattenHelper;->FLATTENED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method
