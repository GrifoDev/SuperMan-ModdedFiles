.class public final enum Ljava/text/Normalizer$Form;
.super Ljava/lang/Enum;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Form"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/text/Normalizer$Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/text/Normalizer$Form;

.field public static final enum NFC:Ljava/text/Normalizer$Form;

.field public static final enum NFD:Ljava/text/Normalizer$Form;

.field public static final enum NFKC:Ljava/text/Normalizer$Form;

.field public static final enum NFKD:Ljava/text/Normalizer$Form;


# instance fields
.field private final icuMode:Landroid/icu/text/Normalizer$Mode;


# direct methods
.method static synthetic -get0(Ljava/text/Normalizer$Form;)Landroid/icu/text/Normalizer$Mode;
    .locals 1

    iget-object v0, p0, Ljava/text/Normalizer$Form;->icuMode:Landroid/icu/text/Normalizer$Mode;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    new-instance v0, Ljava/text/Normalizer$Form;

    const-string/jumbo v1, "NFD"

    .line 130
    sget-object v2, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    .line 127
    invoke-direct {v0, v1, v3, v2}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILandroid/icu/text/Normalizer$Mode;)V

    .line 130
    sput-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    .line 132
    new-instance v0, Ljava/text/Normalizer$Form;

    const-string/jumbo v1, "NFC"

    .line 135
    sget-object v2, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    .line 132
    invoke-direct {v0, v1, v4, v2}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILandroid/icu/text/Normalizer$Mode;)V

    .line 135
    sput-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    .line 137
    new-instance v0, Ljava/text/Normalizer$Form;

    const-string/jumbo v1, "NFKD"

    .line 140
    sget-object v2, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    .line 137
    invoke-direct {v0, v1, v5, v2}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILandroid/icu/text/Normalizer$Mode;)V

    .line 140
    sput-object v0, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    .line 142
    new-instance v0, Ljava/text/Normalizer$Form;

    const-string/jumbo v1, "NFKC"

    .line 145
    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    .line 142
    invoke-direct {v0, v1, v6, v2}, Ljava/text/Normalizer$Form;-><init>(Ljava/lang/String;ILandroid/icu/text/Normalizer$Mode;)V

    .line 145
    sput-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/text/Normalizer$Form;

    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    aput-object v1, v0, v3

    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    aput-object v1, v0, v4

    sget-object v1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    aput-object v1, v0, v5

    sget-object v1, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    aput-object v1, v0, v6

    sput-object v0, Ljava/text/Normalizer$Form;->$VALUES:[Ljava/text/Normalizer$Form;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/icu/text/Normalizer$Mode;)V
    .locals 0
    .param p3, "icuMode"    # Landroid/icu/text/Normalizer$Mode;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    iput-object p3, p0, Ljava/text/Normalizer$Form;->icuMode:Landroid/icu/text/Normalizer$Mode;

    .line 149
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/text/Normalizer$Form;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    const-class v0, Ljava/text/Normalizer$Form;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/text/Normalizer$Form;

    return-object v0
.end method

.method public static values()[Ljava/text/Normalizer$Form;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Ljava/text/Normalizer$Form;->$VALUES:[Ljava/text/Normalizer$Form;

    return-object v0
.end method
