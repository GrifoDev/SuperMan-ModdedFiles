.class public Landroid/text/style/TtsSpan$TimeBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$TimeBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1102
    const-string/jumbo v0, "android.type.time"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1101
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "hours"    # I
    .param p2, "minutes"    # I

    .prologue
    .line 1110
    invoke-direct {p0}, Landroid/text/style/TtsSpan$TimeBuilder;-><init>()V

    .line 1111
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$TimeBuilder;->setHours(I)Landroid/text/style/TtsSpan$TimeBuilder;

    .line 1112
    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$TimeBuilder;->setMinutes(I)Landroid/text/style/TtsSpan$TimeBuilder;

    .line 1109
    return-void
.end method


# virtual methods
.method public setHours(I)Landroid/text/style/TtsSpan$TimeBuilder;
    .locals 1
    .param p1, "hours"    # I

    .prologue
    .line 1122
    const-string/jumbo v0, "android.arg.hours"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$TimeBuilder;

    return-object v0
.end method

.method public setMinutes(I)Landroid/text/style/TtsSpan$TimeBuilder;
    .locals 1
    .param p1, "minutes"    # I

    .prologue
    .line 1133
    const-string/jumbo v0, "android.arg.minutes"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$TimeBuilder;

    return-object v0
.end method
