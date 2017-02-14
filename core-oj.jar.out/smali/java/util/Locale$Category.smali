.class public final enum Ljava/util/Locale$Category;
.super Ljava/lang/Enum;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/Locale$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/Locale$Category;

.field public static final enum DISPLAY:Ljava/util/Locale$Category;

.field public static final enum FORMAT:Ljava/util/Locale$Category;


# instance fields
.field final countryKey:Ljava/lang/String;

.field final languageKey:Ljava/lang/String;

.field final scriptKey:Ljava/lang/String;

.field final variantKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/Locale$Category;

    const-string/jumbo v1, "DISPLAY"

    const-string/jumbo v3, "user.language.display"

    const-string/jumbo v4, "user.script.display"

    const-string/jumbo v5, "user.country.display"

    const-string/jumbo v6, "user.variant.display"

    invoke-direct/range {v0 .. v6}, Ljava/util/Locale$Category;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    new-instance v3, Ljava/util/Locale$Category;

    const-string/jumbo v4, "FORMAT"

    const-string/jumbo v6, "user.language.format"

    const-string/jumbo v7, "user.script.format"

    const-string/jumbo v8, "user.country.format"

    const-string/jumbo v9, "user.variant.format"

    move v5, v10

    invoke-direct/range {v3 .. v9}, Ljava/util/Locale$Category;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Locale$Category;

    sget-object v1, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    aput-object v1, v0, v10

    sput-object v0, Ljava/util/Locale$Category;->$VALUES:[Ljava/util/Locale$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljava/util/Locale$Category;->languageKey:Ljava/lang/String;

    iput-object p4, p0, Ljava/util/Locale$Category;->scriptKey:Ljava/lang/String;

    iput-object p5, p0, Ljava/util/Locale$Category;->countryKey:Ljava/lang/String;

    iput-object p6, p0, Ljava/util/Locale$Category;->variantKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/Locale$Category;
    .locals 1

    const-class v0, Ljava/util/Locale$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/Locale$Category;

    return-object v0
.end method

.method public static values()[Ljava/util/Locale$Category;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->$VALUES:[Ljava/util/Locale$Category;

    return-object v0
.end method
